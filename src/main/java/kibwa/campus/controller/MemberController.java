package kibwa.campus.controller;

import kibwa.campus.dto.MemberDTO;
import kibwa.campus.service.IMemberService;
import kibwa.campus.util.CmmUtil;
import kibwa.campus.util.EncryptUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
@Controller
public class MemberController {

    private IMemberService memberService;

    @Autowired
    public void MemberSevice(IMemberService memberService) {this.memberService = memberService;}


    //---------------회원가입 페이지로 이동---------------
    @RequestMapping(value = "member/memRegLoginForm")
    public String memRegLoginForm(){
        log.info(this.getClass().getName() + ".member/memRegLoginForm START!!!!");

        return "member/memRegLoginForm";
    }


    //---------------회원가입 로직---------------
    @RequestMapping(value = "cu/insertMember", method = RequestMethod.POST)
    public String insertMember (HttpServletRequest request, HttpServletResponse response,
                                ModelMap model) throws Exception{

        log.info(this.getClass().getName() + ".insertMember START!!!!");

        String msg = "";
        String url = "";

        MemberDTO pDTO = null;

        try {

            String id = CmmUtil.nvl(request.getParameter("id"));
            String password = CmmUtil.nvl(request.getParameter("password"));
            String name = CmmUtil.nvl(request.getParameter("name"));
            String mem_tel = CmmUtil.nvl(request.getParameter("mem_tel"));

            log.info("id : " + id);
            log.info("password : " + password);
            log.info("name : " + name);
            log.info("mem_tel : " + mem_tel);

            pDTO = new MemberDTO();

            pDTO.setId(id);
            pDTO.setPassword(EncryptUtil.encHashSHA256(password));
            pDTO.setName(name);
            pDTO.setMem_tel(mem_tel);

            int res = memberService.InsertMember(pDTO);

            if (res == 1){
                msg = "회원가입이 되었습니다.";
                url = "/member/memRegLoginForm";

            }else{
                msg = "오류로 인해 회원가입에 실패하였습니다.";
                url = "/member/memRegLoginForm";
            }

        }catch (Exception e){

            //저장 실패 시 사용자에게 보여줄 메세지
            msg = "실패하였습니다 : " + e.toString();
            log.info(e.toString());
            e.printStackTrace();

        }finally {
            log.info(this.getClass().getName() + ".insertMember END!!!");

            model.addAttribute("msg", msg);
            model.addAttribute("url", url);
            model.addAttribute("pDTO", pDTO);

            pDTO = null;
        }

        return "/redirect";
    }





}

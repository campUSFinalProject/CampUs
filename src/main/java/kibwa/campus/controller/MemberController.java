package kibwa.campus.controller;

import kibwa.campus.dto.MemberDTO;
import kibwa.campus.service.IMemberService;
import kibwa.campus.util.CmmUtil;
import kibwa.campus.util.EncryptUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Slf4j
@Controller
public class MemberController {

    @Resource(name = "MemberService")

    private IMemberService memberService;

    //---------------회원가입/로그인 페이지로 이동---------------
    @RequestMapping(value = "member/memRegLoginForm")
    public String memRegLoginForm(){
        log.info(this.getClass().getName() + ".member/memRegLoginForm START!!!!");

        return "/member/memRegLoginForm";
    }


    //---------------회원가입 로직---------------
    @PostMapping(value = "cu/insertMember")
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
            String email = CmmUtil.nvl(request.getParameter("email"));

            log.info("id : " + id);
            log.info("password : " + password);
            log.info("name : " + name);
            log.info("mem_tel : " + mem_tel);
            log.info("email : " + email);

            pDTO = new MemberDTO();

            pDTO.setId(id);
            pDTO.setPassword(EncryptUtil.encHashSHA256(password));
            pDTO.setName(name);
            pDTO.setMem_tel(mem_tel);
            pDTO.setEmail(email);

            //데이터베이스에 회원정보 인서트
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
            url = "/member/memRegLoginForm";
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

    //--------------로그인 기능-----------------
    @PostMapping(value = "cu/getMemLoginCheck")
    public String getMemLoginCheck(HttpSession session, HttpServletResponse response, HttpServletRequest request,
                                   ModelMap model) throws Exception{
        log.info(this.getClass().getName() + ".getMemLoginCheck START!!!");

        String msg = "";
        String url = "";

        try{

            String id = CmmUtil.nvl(request.getParameter("id"));
            String password = CmmUtil.nvl(request.getParameter("password"));
            String email = CmmUtil.nvl(request.getParameter("email"));
            String mem_tel = CmmUtil.nvl(request.getParameter("mem_tel"));
            String name = CmmUtil.nvl(request.getParameter("name"));

            log.info("id : " + id);
            log.info("password : " + password);

            MemberDTO pDTO = new MemberDTO();

            pDTO.setId(id);
            pDTO.setPassword(EncryptUtil.encHashSHA256(password));
            pDTO.setName(name);
            pDTO.setEmail(email);
            pDTO.setMem_tel(mem_tel);

            //로그인정보 체크
            MemberDTO rDTO = memberService.getMemLoginCheck(pDTO);

            if (rDTO == null){
                rDTO = new MemberDTO();
                msg = "아이디 / 비밀번호를 확인해주세요";
                url = "/member/memRegLoginForm";

            }else {
                msg = "로그인 성공";
                url = "/cu/Main";

                session.setAttribute("SS_ID", rDTO.getId());
                session.setAttribute("SS_NUM", rDTO.getMem_num());
                session.setAttribute("SS_MEM_TEL", rDTO.getMem_tel());
                session.setAttribute("SS_EMAIL", rDTO.getEmail());
                session.setAttribute("SS_NAME", rDTO.getName());
            }
            rDTO = null;

        }catch (Exception e){
            msg = "실패하였습니다 :" + e.toString();
            System.out.println("오류로 인해 로그인이 실패하였습니다.");
            log.info(e.toString());
            e.printStackTrace();

        }finally {
            log.info(this.getClass().getName() + ".LOGIN_CHECK END!!!!");
            model.addAttribute("msg", msg);
            model.addAttribute("url", url);
        }

        return "/redirect";
    }


    //------회원탈퇴 (회원정보 삭제)------------
    @GetMapping(value = "cu/deleteMember")
    public String deleteMember(HttpSession session, HttpServletResponse response,HttpServletRequest request, ModelMap model) {

        log.info(this.getClass().getName() + ".DELETE MEMBER START!!");

        String msg = "";
        String url = "";

        try{

            String id = CmmUtil.nvl((String) session.getAttribute("SS_ID"));

            log.info("id : " + id);

            MemberDTO pDTO = new MemberDTO();
            pDTO.setId(id);

            //회원정보 삭제
            int res = memberService.deleteMember(pDTO);

            log.info("res : " + res);
            msg = "회원탈퇴가 완료되었습니다.";
            url = "/member/memRegLoginForm";

            session.invalidate();; //session clear

        }catch (Exception e){
            msg = "회원탈퇴 실패 : " + e.toString();
            url = "/cu/Main";
            log.info(e.toString());
            e.printStackTrace();

        }finally {

            log.info(this.getClass().getName() + ".DELETE MEMBER END!");

            model.addAttribute("msg", msg);
            model.addAttribute("url", url);

        }
        return "/redirect";
    }

    //------------- 로그아웃 -----------
    @RequestMapping(value = "cu/Logout")
    public String Logout(HttpServletRequest request, ModelMap model){
        log.info(this.getClass().getName() + ".LOGOUT START!!!");
        HttpSession session = request.getSession();

        String url = "/cu/Main";
        String msg = "로그아웃 성공";

        session.invalidate(); // session clear

        model.addAttribute("msg", msg);
        model.addAttribute("url", url);

        return "/redirect";
    }


    @RequestMapping(value = "cu/mypage")
    public String mypage(HttpSession session, HttpServletResponse response,HttpServletRequest request, ModelMap model){

        log.info(this.getClass().getName() + ".MyPage GO!!!! ");

        return "/member/mypage";
    }
}

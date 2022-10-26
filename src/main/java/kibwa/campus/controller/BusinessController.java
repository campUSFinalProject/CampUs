package kibwa.campus.controller;

import kibwa.campus.dto.BusinessDTO;
import kibwa.campus.service.IBusinessService;
import kibwa.campus.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Slf4j
@Controller
public class BusinessController {


    @Resource(name = "BusinessService")
    private IBusinessService businessService;


    //------------- 일반사용자에서 사업자전환요청 -----------------
    @PostMapping(value = "member/InsertChangeRequest")
    public String InsertChangeRequest (HttpServletRequest request,HttpSession session, HttpServletResponse response,
                                       ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".InsertChangeRequest START!!!");

        String msg = "";
        String url = "";

        BusinessDTO pDTO = null;
        try {

            String business_num = CmmUtil.nvl(request.getParameter("business_num"));
            String business_id = CmmUtil.nvl((String) session.getAttribute("SS_ID"));
            String business_pw = CmmUtil.nvl((String) session.getAttribute("SS_PASSWORD"));
            String business_name = CmmUtil.nvl(request.getParameter("business_name"));
            String business_tel = CmmUtil.nvl(request.getParameter("business_tel"));
            String business_email = CmmUtil.nvl(request.getParameter("business_email"));

            log.info("business_num : " + business_num);
            log.info("id : " + business_id);
            log.info("password : " + business_pw);
            log.info("name : " + business_name);
            log.info("tel : " + business_tel);
            log.info("email : " + business_email);


            pDTO = new BusinessDTO();

            pDTO.setBusiness_num(business_num);
            pDTO.setBusiness_id(business_id);
            pDTO.setBusiness_pw(business_pw);
            pDTO.setBusiness_name(business_name);
            pDTO.setBusiness_tel(business_tel);
            pDTO.setBusiness_email(business_email);

            int res = businessService.InsertChangeRequest(pDTO);

            if (res == 1) {
                msg = "사업자 전환요청이 완료되었습니다.";
                url = "/cu/Main";
            } else {
                msg = "오류로 인해 사업자 전환요청에 실패하였습니다.";
                url = "/cu/changeMem";
            }

        } catch (Exception e) {

            msg = "실패하였습니다 : " + e.toString();
            url = "/cu/changeMem";
            log.info(e.toString());
            e.printStackTrace();

        } finally {
            log.info(this.getClass().getName() + ".InsertChangeRequest end!!");

            model.addAttribute("msg", msg);
            model.addAttribute("url", url);
            model.addAttribute("pDTO", pDTO);

            pDTO = null;
        }

        return "/redirect";
    }

}

package kibwa.campus.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import kibwa.campus.dto.BusinessDTO;
import kibwa.campus.dto.CaravanDTO;
import kibwa.campus.dto.MemberDTO;
import kibwa.campus.service.IBusinessService;
import kibwa.campus.util.CmmUtil;
import kibwa.campus.util.EncryptUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class BusinessController {


    @Resource(name = "BusinessService")
    private IBusinessService businessService;

    //카라반 등록 ********제발 주석좀 답시다
    @RequestMapping(value = "Business_CRUD")
    public String Business_CRUD(HttpServletRequest request, ModelMap model) throws Exception {

        return "/businesspage/Business_CRUD";
    }


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


    //--------------사업자 로그인 기능-----------------
    @PostMapping(value = "cu/getBusinessLoginCheck")
    public String getBusinessLoginCheck(HttpSession session, HttpServletResponse response, HttpServletRequest request,
                                   ModelMap model) throws Exception{
        log.info(this.getClass().getName() + ". getBusinessLoginCheck START!!!");

        String msg = "";
        String url = "";

        try{

            String business_id = CmmUtil.nvl(request.getParameter("id"));
            String business_pw = CmmUtil.nvl(request.getParameter("password"));

            log.info("Business_id : " + business_id);
            log.info("Business_password : " + business_pw);

            BusinessDTO pDTO = new BusinessDTO();

            pDTO.setBusiness_id(business_id);
            pDTO.setBusiness_pw(EncryptUtil.encHashSHA256(business_pw));

            //로그인정보 체크
            BusinessDTO rDTO = businessService.getMemLoginCheck(pDTO);

            if (rDTO == null){
                rDTO = new BusinessDTO();
                msg = "아이디 / 비밀번호를 확인해주세요";
                url = "/member/memRegLoginForm";

            }else {
                msg = "로그인 성공";
                url = "/cu/businessMain";

                session.setAttribute("SS_business_ID", rDTO.getBusiness_id());
                session.setAttribute("SS_business_NUM", rDTO.getBusiness_num());
                session.setAttribute("SS_business_TEL", rDTO.getBusiness_tel());
                session.setAttribute("SS_business_EMAIL", rDTO.getBusiness_email());
                session.setAttribute("SS_business_NAME", rDTO.getBusiness_name());
                session.setAttribute("SS_business_PASSWORD", rDTO.getBusiness_pw());
            }
            rDTO = null;

        }catch (Exception e){
            msg = "실패하였습니다 :" + e.toString();
            url = "/member/memRegLoginForm";
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


    //---------사업자 마이페이지 이동-----------------------
    @RequestMapping(value = "cu/businessMypage")
    public String businessMypage() {

        log.info(this.getClass().getName() + ".BUS MY PAGE GO!! ");

        return "/member/businessMypage";

    }


    //사업자 내 카라반 버기
    @RequestMapping(value = "business/myCaravan")
    public String myCaravan(HttpServletRequest request, ModelMap model, HttpSession session)
        throws Exception{
        String business_num = CmmUtil.nvl((String) session.getAttribute("SS_business_NUM"));

        CaravanDTO cDTO = new CaravanDTO();
        cDTO.setBusiness_num(business_num);

        List<CaravanDTO> cList = businessService.getMyCaravan(cDTO);

        model.addAttribute("cList", cList);

        return "/business/business_insert";
    }


    /*//--------------- 사업자 전환 요청 리스트 조회 ---------------------
    @GetMapping(value = "business/changeReqList")
    public String changeReqList(ModelMap model) throws Exception{

        log.info(this.getClass().getName() + ".changeReqList START!!!");

        List<BusinessDTO> pList = businessService.getChangeReq();

        if (pList == null){
            pList = new ArrayList<>();
        }

        log.info("pList : " + pList);

        model.addAttribute("pList", pList);

        log.info(this.getClass().getName() + ".changeReqList END!!!");

        return "/admin/changeReqList";
    }*/

    /*//-------------- 사업자 전환 요청 상세 조회 ---------------------
    @GetMapping(value = "admin/changeReqInfo")
    public String changeReqInfo(HttpSession session, HttpServletRequest request, ModelMap model)
        throws Exception{

        log.info(this.getClass().getName() + ".changeReqInfo START!!!");

        String msg = "";

        try {
            String business_num = CmmUtil.nvl(request.getParameter("business_num"));

            log.info("business_num : " + business_num);

            BusinessDTO pDTO = new BusinessDTO();
            pDTO.setBusiness_num(business_num);

            BusinessDTO rDTO = businessService.changeReqInfo(pDTO);

            if (rDTO == null){
                rDTO = new BusinessDTO();
            }

            model.addAttribute("rDTO",rDTO);

            log.info("r.business_num : " + rDTO.getBusiness_num());

        }catch (Exception e){
            msg = "실패하였습니다 : " + e.toString();
            log.info(e.toString());
            e.printStackTrace();

        }finally {
            log.info(this.getClass().getName() + ".changeReqInfo END!!!!");
            model.addAttribute("msg", msg);
        }

        return "/admin/changeReqInfo";
    }*/



}

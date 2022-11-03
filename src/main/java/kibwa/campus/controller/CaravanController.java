package kibwa.campus.controller;
import kibwa.campus.dto.BoardDTO;
import kibwa.campus.dto.CaravanDTO;
import kibwa.campus.service.ICaravanService;
import kibwa.campus.util.CmmUtil;
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

import static kibwa.campus.util.CmmUtil.nvl;


@Slf4j
@Controller
public class CaravanController {

    @Resource(name = "CaravanService")
    private ICaravanService CaravanService;

    //-------------------- 캠핑장 등록 ------------------------
    @RequestMapping(value = "businesscrud")
    public String Business_CRUD(HttpServletRequest request, ModelMap model) throws Exception {

        String msg = "";
        String url = "";


        try {

            String city_name = CmmUtil.nvl(request.getParameter("city_name"));
            String cground_name = CmmUtil.nvl(request.getParameter("cground_name"));
            String cground_tel = CmmUtil.nvl(request.getParameter("cground_tel"));
            String cground_loacation = CmmUtil.nvl(request.getParameter("cground_loacation"));
            String cground_deposit = CmmUtil.nvl(request.getParameter("cground_deposit"));
            String camping_enter = CmmUtil.nvl(request.getParameter("camping_enter"));
            String camping_exit = CmmUtil.nvl(request.getParameter("camping_exit"));
            String cground_detail_info = CmmUtil.nvl(request.getParameter("cground_detail_info"));
            String add_facil = CmmUtil.nvl(request.getParameter("add_facil"));
            String business_num = "1";

            log.info("city_name : " + city_name);
            log.info("cground_name : " + cground_name);
            log.info("cground_tel : " + cground_tel);
            log.info("cground_loacation : " + cground_loacation);
            log.info("cground_deposit : " + cground_deposit);
            log.info("camping_enter : " + camping_enter);
            log.info("camping_exit : " + camping_exit);
            log.info("cground_detail_info : " + cground_detail_info);
            log.info("add_facil : " + add_facil);
            log.info("business_num : " + business_num);

            CaravanDTO cDTO = new CaravanDTO();

            cDTO.setCity_name(city_name);
            cDTO.setCground_name(cground_name);
            cDTO.setCground_tel(cground_tel);
            cDTO.setCground_location(cground_loacation);
            cDTO.setCground_deposit(cground_deposit);
            cDTO.setCamping_enter(camping_enter);
            cDTO.setCamping_exit(camping_exit);
            cDTO.setCground_detail_info(cground_detail_info);
            cDTO.setAdd_facil(add_facil);
            cDTO.setBusiness_num(business_num);

            CaravanService.insertCampingInfo(cDTO);

            msg = "등록되었습니다";
            url = "/Caravan";

        } catch (Exception e) {
            msg = "실패하였습니다 : " + e.getMessage();
            url = "/businesspage/Business_CRUD";

            log.info(e.toString());
            e.printStackTrace();

        } finally {
            model.addAttribute("url", url);
            model.addAttribute("msg", msg);
        }

        return "/redirect";
    }


    /* 카라반 리스트 페이지*/
    @RequestMapping(value = "Caravan")
    public String Caravan(HttpServletRequest request, ModelMap model) throws Exception {
        //String name = nvl(request.getParameter("name"));
        //model.addAttribute("name", name);

        List<CaravanDTO> cList = CaravanService.getCaravanList();

        model.addAttribute("cList" , cList);

        return "/Caravan/Caravan";
    }

    @RequestMapping(value = "business_insert")
    public String business_insert(HttpServletRequest request, ModelMap model) throws Exception {

        List<CaravanDTO> cList = CaravanService.getCaravanList();

        model.addAttribute("cList" , cList);

        return "/business/business_insert";
    }


    /* 카라반 상세정보 페이지*/
    @RequestMapping(value = "CaravanDetail")
    public String CaravanDetail(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".CaravanList start!");

        /*List<CaravanDTO> cList = CaravanService.getCaravanList();

        if (cList == null){
            cList = new ArrayList<>();
        }

        log.info("cList : " + cList);
        model.addAttribute("cList", cList);*/

        try{
            String cground_info_num = CmmUtil.nvl(request.getParameter("cground_info_num"));
            log.info("cground_info_num : " + cground_info_num);

            CaravanDTO cDTO = new CaravanDTO();

            cDTO.setCground_info_num(cground_info_num);

            CaravanDTO coDTO = CaravanService.getCaravanDetail(cDTO);

            model.addAttribute("coDTO", coDTO);

        }catch (Exception e) {
            log.info(e.toString());
            e.printStackTrace();
        }finally {
            log.info(this.getClass().getName() + ".CaravanList End!");
        }

        return "/Caravan/CaravanDetail";
    }

    //------------- 카라반 수정페이지로 이동 -----------------
    @GetMapping(value = "caravan/updateCaravanForm")
    public String updateCaravanForm(HttpSession session, HttpServletRequest request, ModelMap model){

        log.info(this.getClass().getName() + ".Caravan UpdateForm START!!!");

        log.info(this.getClass().getName() + ".Caravan UpdateForm END!!!");

        return "/Caravan/caravanUpdateForm";
    }

    //-------------- 카라반 수정 -------------------
    @PostMapping(value = "caravan/CaravanUpdate")
    public String CaravanUpdate(HttpSession session, HttpServletRequest request, ModelMap model){

        log.info(this.getClass().getName() + ".CaravanUpdate START!!!");

        String msg = "";
        String url = "";

        try {
            String business_num = CmmUtil.nvl((String) session.getAttribute("SS_business_NUM"));
            String cground_info_num = CmmUtil.nvl(request.getParameter("cground_info_num"));
            String city_name = CmmUtil.nvl(request.getParameter("city_name"));
            String cground_name = CmmUtil.nvl(request.getParameter("cground_name"));
            String cground_tel = CmmUtil.nvl(request.getParameter("cground_tel"));
            String cground_loacation = CmmUtil.nvl(request.getParameter("cground_loacation"));
            String cground_deposit = CmmUtil.nvl(request.getParameter("cground_deposit"));
            String camping_enter = CmmUtil.nvl(request.getParameter("camping_enter"));
            String camping_exit = CmmUtil.nvl(request.getParameter("camping_exit"));
            String cground_detail_info = CmmUtil.nvl(request.getParameter("cground_detail_info"));
            String add_facil = CmmUtil.nvl(request.getParameter("add_facil"));

            log.info("cground_info_num : " + cground_info_num);
            log.info("city_name : " + city_name);
            log.info("cground_name : " + cground_name);
            log.info("cground_tel : " + cground_tel);
            log.info("cground_loacation : " + cground_loacation);
            log.info("cground_deposit : " + cground_deposit);
            log.info("camping_enter : " + camping_enter);
            log.info("camping_exit : " + camping_exit);
            log.info("cground_detail_info : " + cground_detail_info);
            log.info("add_facil : " + add_facil);
            log.info("business_num : " + business_num);

            CaravanDTO cDTO = new CaravanDTO();

            cDTO.setCground_info_num(cground_info_num);
            cDTO.setCity_name(city_name);
            cDTO.setCground_name(cground_name);
            cDTO.setCground_tel(cground_tel);
            cDTO.setCground_location(cground_loacation);
            cDTO.setCground_deposit(cground_deposit);
            cDTO.setCamping_enter(camping_enter);
            cDTO.setCamping_exit(camping_exit);
            cDTO.setCground_detail_info(cground_detail_info);
            cDTO.setAdd_facil(add_facil);

            CaravanService.updateCaravan(cDTO);

            msg = "수정완료";
            url = "/Caravan";

        }catch (Exception e){
            msg = "실패하였습니다 : " + e.toString();
            log.info(e.toString());
            e.printStackTrace();
            url = "/Caravan";

        }finally {
            log.info(this.getClass().getName() + ".CaravanUpdate END!!!");

            model.addAttribute("msg",msg);
            model.addAttribute("url",url);

        }
        return "/redirect";
    }



    //------------------ 카라반 삭제 ------------------
    @GetMapping(value = "caravan/deleteCaravan")
    public String deleteCaravan(HttpSession session, HttpServletResponse response, HttpServletRequest request, ModelMap model){
        log.info(this.getClass().getName() + ".deleteCaravan START!!!");

        String msg = "";
        String url = "";

        try {
            String cground_info_num = CmmUtil.nvl(request.getParameter("cground_info_num"));

            log.info("cground_info_num : " +cground_info_num);

            CaravanDTO cDTO = new CaravanDTO();
            cDTO.setCground_info_num(cground_info_num);

            int res = CaravanService.deleteCaravan(cDTO);

            //성공여부 로그에 확인
            log.info("res : " + res);

            msg = "카라반이 삭제되었습니다.";
            url = "/Caravan";

        }catch (Exception e){
            msg = "삭제에 실패하였습니다 : " + e.toString();
            url = "/Caravan";
            log.info(e.toString());
            e.printStackTrace();

        }finally {
            log.info(this.getClass().getName() + ".deleteCaravan END!!!");

            model.addAttribute("msg",msg);
            model.addAttribute("url",url);

        }

        return "/redirect";
    }
}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

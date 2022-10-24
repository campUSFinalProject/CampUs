package kibwa.campus.controller;

import kibwa.campus.dto.CaravanDTO;
import kibwa.campus.service.ICaravanService;
import kibwa.campus.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;

import static kibwa.campus.util.CmmUtil.nvl;


@Slf4j
@Controller
public class BusinessController {

    @Resource(name = "CaravanService")
    private ICaravanService CaravanService;

    //관리자 캠핑장 정보 insertForm
    @RequestMapping(value = "busineInsertForm")
    public String BusinessInsertForm(ModelMap model)
        throws Exception{
        log.info(this.getClass().getName() + ".CampingInfo insertForm start!");
        return "businesspage/Business_CRUD";
    }

    //관리자 캠핑장정보 insert
    @RequestMapping(value = "businesscrud")
    public String Business_CRUD(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".CampingInfo insert start!");

        String msg = "";
        String url = "";

        try {
            String city_name = CmmUtil.nvl(request.getParameter("city_name"));
            String cground_name = CmmUtil.nvl(request.getParameter("cground_name"));
            String cground_tel = CmmUtil.nvl(request.getParameter("cground_tel"));
            String cground_loacation = CmmUtil.nvl(request.getParameter("cground_loacation"));
            String cground_deposit = CmmUtil.nvl(request.getParameter("cground_deposit"));
            String campinng_enter = CmmUtil.nvl(request.getParameter("campinng_enter"));
            String camping_exit = CmmUtil.nvl(request.getParameter("camping_exit"));
            String cground_detail_info = CmmUtil.nvl(request.getParameter("cground_detail_info"));
            String add_facil = CmmUtil.nvl(request.getParameter("add_facil"));
            String business_num = "1";

            log.info("city_name : " + city_name);
            log.info("cground_name : " + cground_name);
            log.info("cground_tel : " + cground_tel);
            log.info("cground_loacation : " + cground_loacation);
            log.info("cground_deposit : " + cground_deposit);
            log.info("campinng_enter : " + campinng_enter);
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
            cDTO.setCamping_enter(campinng_enter);
            cDTO.setCamping_exit(camping_exit);
            cDTO.setCground_detail_info(cground_detail_info);
            cDTO.setAdd_facil(add_facil);
            cDTO.setBusiness_num(business_num);

            CaravanService.insertCampingInfo(cDTO);

            msg = "등록되었습니다.";
            url = "/busineInsertForm";

        } catch (Exception e) {
            msg = "실패하였습니다 : " + e.getMessage();
            url = "/busineInsertForm";

            log.info(e.toString());
            e.printStackTrace();

        } finally {
            log.info(this.getClass().getName() + ".CampingInfo Insert End!");

            model.addAttribute("url", url);
            model.addAttribute("msg", msg);

            log.info("model : " + model);
        }

        return "/redirect";
    }


}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

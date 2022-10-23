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

    //관리자 캠핑장정보 insert
    @RequestMapping(value = "businesscrud")
    public String Business_CRUD(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".CampingInfo insert start!");

        String msg = "";
        String url = "";

        try {
            String location = CmmUtil.nvl(request.getParameter("location"));
            String cground_name = CmmUtil.nvl(request.getParameter("cground_name"));
            String cground_tel = CmmUtil.nvl(request.getParameter("cground_tel"));
            String cground_loacation = CmmUtil.nvl(request.getParameter("cground_loacation"));
            String cground_deposit = CmmUtil.nvl(request.getParameter("cground_deposit"));
            String campinng_enter = CmmUtil.nvl(request.getParameter("campinng_enter"));
            String camping_exit = CmmUtil.nvl(request.getParameter("camping_exit"));
            String cground_detail_info = CmmUtil.nvl(request.getParameter("cground_detail_info"));
            String add_facil = CmmUtil.nvl(request.getParameter("add_facil"));

            log.info("location : " + location);
            log.info("cground_name : " + cground_name);

            CaravanDTO cDTO = new CaravanDTO();

            cDTO.setCity_name(location);
            cDTO.setLocation(location);
            cDTO.setCground_name(cground_name);
            cDTO.setCground_tel(cground_tel);
            cDTO.setCground_location(cground_loacation);
            cDTO.setCground_deposit(cground_deposit);
            cDTO.setCamping_enter(campinng_enter);
            cDTO.setCamping_exit(camping_exit);
            cDTO.setCground_detail_info(cground_detail_info);
            cDTO.setAdd_facil(add_facil);

            CaravanService.insertCampingInfo(cDTO);

            msg = "등록되었습니다.";
            url = "/businesspage/Business_CRUD";

        } catch (Exception e) {
            msg = "실패하였습니다 : " + e.getMessage();
            url = "/businesspage/Business_CRUD";

            log.info(e.toString());
            e.printStackTrace();

        } finally {
            log.info(this.getClass().getName() + ".CampingInfo Insert End!");

            model.addAttribute("url", url);
            model.addAttribute("msg", msg);

            log.info("mode : " + model);
        }

        return "/businesspage/Business_CRUD";
    }


}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

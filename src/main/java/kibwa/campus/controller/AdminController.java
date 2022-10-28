package kibwa.campus.controller;
import kibwa.campus.dto.CaravanDTO;
import kibwa.campus.dto.OutfieldDTO;
import kibwa.campus.service.IOutfieldService;
import kibwa.campus.service.impl.OutfieldService;
import kibwa.campus.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;

import static kibwa.campus.util.CmmUtil.nvl;


@Slf4j
@Controller
public class AdminController {

    @Resource(name = "OutfieldService")
    private IOutfieldService outfieldService;

    @RequestMapping(value = "AdminOutfield")
    public String Outfield(HttpServletRequest request, ModelMap model) throws Exception {
        String name = nvl(request.getParameter("name"));
        model.addAttribute("name", name);
        return "/adminpage/AdminOutfield";
    }

    @RequestMapping(value = "Admin_insert")
    public String Admin_insert(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".Admin_insert start!");

        String msg = "";
        String url = "";

        try {
            String city_name = CmmUtil.nvl(request.getParameter("city_name"));
            String location_specific = CmmUtil.nvl(request.getParameter("location_specific"));
            String Outdoor_detail_info = CmmUtil.nvl(request.getParameter("Outdoor_detail_info"));
            String outdoor_detail_memo = CmmUtil.nvl(request.getParameter("outdoor_detail_memo"));

            log.info("city_name : " + city_name);
            log.info("location_specific : " + location_specific);

            OutfieldDTO oDTO = new OutfieldDTO();

            oDTO.setCity_name(city_name);
            oDTO.setLocation_specific(location_specific);
            oDTO.setOutdoor_detail_info(Outdoor_detail_info);
            oDTO.setOutdoor_detail_memo(outdoor_detail_memo);

            outfieldService.insertOutfield(oDTO);

            msg = "수정되었습니다.";
            url = "/adminpage/Admin_insert";

        } catch (Exception e) {
            msg = "실패하였습니다 : " + e.getMessage();
            url = "/adminpage/Admin_insert";

            log.info(e.toString());
            e.printStackTrace();

        } finally {
            log.info(this.getClass().getName() + ".Admin_insert insert End!");

            model.addAttribute("url", url);
            model.addAttribute("msg", msg);

            log.info("mode : " + model);
        }
        return "/adminpage/Admin_insert";
    }

    @RequestMapping(value = "AdminOutfieldDetail")
    public String OutfieldDetail(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".AdminOutfieldDetail start!");

        String msg = "";
        String url = "";

        try {
            String city_name = CmmUtil.nvl(request.getParameter("city_name"));
            String location_specific = CmmUtil.nvl(request.getParameter("location_specific"));
            String Outdoor_detail_info = CmmUtil.nvl(request.getParameter("Outdoor_detail_info"));
            String outdoor_detail_memo = CmmUtil.nvl(request.getParameter("outdoor_detail_memo"));

            log.info("city_name : " + city_name);
            log.info("location_specific : " + location_specific);

            OutfieldDTO oDTO = new OutfieldDTO();

            oDTO.setCity_name(city_name);
            oDTO.setLocation_specific(location_specific);
            oDTO.setOutdoor_detail_info(Outdoor_detail_info);
            oDTO.setOutdoor_detail_memo(outdoor_detail_memo);

            outfieldService.updateOutfield(oDTO);

            msg = "수정되었습니다.";
            url = "/adminpage/AdminOutfieldDetail";

        } catch (Exception e) {
            msg = "실패하였습니다 : " + e.getMessage();
            url = "/adminpage/AdminOutfieldDetail";

            log.info(e.toString());
            e.printStackTrace();

        } finally {
            log.info(this.getClass().getName() + ".AdminOutfieldDetail update End!");

            model.addAttribute("url", url);
            model.addAttribute("msg", msg);

            log.info("mode : " + model);
        }

        return "/adminpage/AdminOutfieldDetail";
    }
}

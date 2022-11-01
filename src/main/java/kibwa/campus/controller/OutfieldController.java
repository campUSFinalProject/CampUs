package kibwa.campus.controller;
import kibwa.campus.dto.BoardDTO;
import kibwa.campus.dto.OutfieldDTO;
import kibwa.campus.service.IOutfieldService;
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
public class OutfieldController {

    @Resource(name = "OutfieldService")
    private IOutfieldService outfieldService;

    //노지 리스트
    @RequestMapping(value = "Outfield")
    public String Outfield(HttpServletRequest request, ModelMap model) throws Exception {
        String name = nvl(request.getParameter("name"));
        model.addAttribute("name", name);
        return "/outfield/Outfield";
    }

    //노지 상세페이지
    @RequestMapping(value = "OutfieldDetail")
    public String OutfieldDetail(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".OutfieldList start!");

        /*List<OutfieldDTO> oList = outfieldService.getOutfieldList();

        if (oList == null){
            oList = new ArrayList<>();
        }

        log.info("oList : " + oList);
        model.addAttribute("oList", oList);

        log.info(this.getClass().getName() + ".OutfieldList End!");

        return "/outfield/OutfieldDetail";*/

        String msg = "";
        //String url = "";

        try {
            String Outdoor_detail_info_num = CmmUtil.nvl(request.getParameter("Outdoor_detail_info_num"));

            log.info("Outdoor_detail_info_num : " + Outdoor_detail_info_num);

            OutfieldDTO oDTO = new OutfieldDTO();

            oDTO.setOutdoor_info_num(Outdoor_detail_info_num);

            OutfieldDTO ofDTO = outfieldService.getOudfieldView(oDTO);

            if (ofDTO == null){
                ofDTO = new OutfieldDTO();
            }

            log.info("getOudfieldView success");
            model.addAttribute("ofDTO", ofDTO);
            log.info("of.getOutdoor_info_num : " + ofDTO.getOutdoor_info_num());

            outfieldService.updateOutfield(ofDTO);

            //msg = "수정되었습니다.";
            //url = "/adminpage/AdminOutfieldDetail";

        } catch (Exception e) {
            msg = "실패하였습니다 : " + e.getMessage();
            //url = "/adminpage/AdminOutfieldDetail";

            log.info(e.toString());
            e.printStackTrace();

        } finally {
            log.info(this.getClass().getName() + ".AdminOutfieldDetail update End!");

            //model.addAttribute("url", url);
            model.addAttribute("msg", msg);

            log.info("mode : " + model);
        }

        return "/outfield/OutfieldDetail";
    }
}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

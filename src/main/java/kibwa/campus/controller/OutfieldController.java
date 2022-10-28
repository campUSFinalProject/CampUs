package kibwa.campus.controller;
import kibwa.campus.dto.OutfieldDTO;
import kibwa.campus.service.IOutfieldService;
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

    @RequestMapping(value = "Outfield")
    public String Outfield(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".OutfieldList start!");

        List<OutfieldDTO> oList = outfieldService.getOutfieldList();

        if (oList == null){
            oList = new ArrayList<>();
        }

        log.info("oList : " + oList);
        model.addAttribute("oList", oList);

        log.info(this.getClass().getName() + ".OutfieldList End!");
        return "/outfield/Outfield";
    }

    @RequestMapping(value = "OutfieldDetail")
    public String OutfieldDetail(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".OutfieldList start!");

        List<OutfieldDTO> oList = outfieldService.getOutfieldList();

        if (oList == null){
            oList = new ArrayList<>();
        }

        log.info("oList : " + oList);
        model.addAttribute("oList", oList);

        log.info(this.getClass().getName() + ".OutfieldList End!");

        return "/outfield/OutfieldDetail";
    }
}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

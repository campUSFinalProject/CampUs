package kibwa.campus.controller;

import kibwa.campus.dto.RevDTO;
import kibwa.campus.service.IRevService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class RevController {

    @Resource(name = "RevService")
    private IRevService revService;

    // 예약 페이지 이동
    @RequestMapping(value = "Rev")
    public String Rev(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".RevList start!");

        List<RevDTO> rList = revService.getRevList();

        if (rList == null){
            rList = new ArrayList<>();
        }

        log.info("rList : " + rList);
        model.addAttribute("rList", rList);

        log.info(this.getClass().getName() + ".RevList End!");

        return "/Rev";
    }

}
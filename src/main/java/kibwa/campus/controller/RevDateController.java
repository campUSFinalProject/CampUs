package kibwa.campus.controller;

import kibwa.campus.dto.RevDateDTO;
import kibwa.campus.service.IRevDateService;
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


public class RevDateController {

    @Resource(name = "RevDateService")
    private IRevDateService revDateService;

    @RequestMapping(value = "RevDate")
    public String RevDate(HttpServletRequest request, ModelMap model) throws Exception {
       log.info(this.getClass().getName() + ".RevDate ");

       List<RevDateDTO> rdList = revDateService.getRevDateList();

       if (rdList == null) {
           rdList = new ArrayList<>();
       }

       log.info("rdList : " + rdList);
       model.addAttribute("rdList", rdList);

       log.info(this.getClass().getName()+ ".RevDate End");

       return "/RevDate";
    }

}

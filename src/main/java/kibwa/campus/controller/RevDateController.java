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
       log.info("{}.RevDate ", this.getClass().getName());
       List<RevDateDTO> rdList = revDateService.getRevDateList();

       if (rdList == null) {
           rdList = new ArrayList<>();
       }
        rdList.forEach(rd -> log.info("rdList : {}", rd.toString()));
        System.out.println("야아아아아아 이거 왜 안찍혀");
        rdList.forEach(System.out::println);
       //이거 왜 주소값으로 자꾸 나와??
       model.addAttribute("rdList", rdList);

       return "/RevDate";
    }

}

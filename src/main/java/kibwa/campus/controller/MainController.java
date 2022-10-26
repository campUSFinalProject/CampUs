package kibwa.campus.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
public class MainController {


    //메인화면으로 넘어가기
    @RequestMapping(value = "cu/Main")
    public String Main() {

        log.info(this.getClass().getName() + ".MAINPAGE GO!! ");

        return "/test/FinalMain";
    }

    @RequestMapping(value = "cu/businessMain")
    public String businMain() {

        log.info(this.getClass().getName() + ".MAINPAGE GO!! ");

        return "/business/businessMain";
    }

    @RequestMapping(value = "cu/adminMain")
    public String adminMain() {

        log.info(this.getClass().getName() + ".MAINPAGE GO!! ");

        return "/admin/adminMain";
    }

    @RequestMapping(value = "cu/businessNypage")
    public String businessMypage() {

        log.info(this.getClass().getName() + ".MAINPAGE GO!! ");

        return "/member/businessMypage";

    }
}

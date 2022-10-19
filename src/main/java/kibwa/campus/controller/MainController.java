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
        @RequestMapping(value = "cu/mypage")
        public String mypage(){

            log.info(this.getClass().getName() + ".LoginPage GO!!!! ");

            return "/member/mypage";
        }


}

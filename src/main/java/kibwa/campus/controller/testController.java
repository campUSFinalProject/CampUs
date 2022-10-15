package kibwa.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {

    @RequestMapping(value = "test")
    public String Main(){return "test/FinalMain";}

    @RequestMapping(value = "member")
    public String login(){return "member/memRegLoginForm";}


}
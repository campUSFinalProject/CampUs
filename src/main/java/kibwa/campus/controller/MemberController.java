package kibwa.campus.controller;

import kibwa.campus.service.IMemberService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Slf4j
@Controller
public class MemberController {

    private IMemberService memberService;

    @Autowired
    public void MemberSevice(IMemberService memberService) {this.memberService = memberService;}


    //---------------회원가입 페이지로 이동---------------
    @RequestMapping(value = "cu/memRegLoginForm")
    public String memRegLoginForm(){
        log.info(this.getClass().getName() + ".member/memRegLoginForm START!!!!");

        return "member/memRegLoginForm";
    }







}

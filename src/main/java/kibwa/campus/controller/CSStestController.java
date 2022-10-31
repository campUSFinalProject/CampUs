package kibwa.campus.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
public class CSStestController {

    @RequestMapping(value = "test")
    public String Main(HttpServletRequest request) {
        log.info("contextPath = {}", request.getContextPath());
        log.info(this.getClass().getName() + ".MAINPAGE GO!! ");

        return "/rev/testrev";
    }
}

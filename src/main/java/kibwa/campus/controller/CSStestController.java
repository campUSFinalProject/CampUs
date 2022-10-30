package kibwa.campus.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
public class CSStestController {

    @RequestMapping(value = "rev/testrev")
    public String Main() {

        log.info(this.getClass().getName() + ".MAINPAGE GO!! ");

        return "/rev/testrev";
    }
}

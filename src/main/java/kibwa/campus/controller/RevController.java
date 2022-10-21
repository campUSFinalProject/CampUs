package kibwa.campus.controller;
import kibwa.campus.service.IRevService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

import static kibwa.campus.util.CmmUtil.nvl;

@Slf4j
@Controller
public class RevController {


    // 예약 페이지 이동
    @RequestMapping(value = "Rev")
    public String Rev(HttpServletRequest request, ModelMap model) throws Exception {
        String name = nvl(request.getParameter("name"));
        model.addAttribute("name", name);
        return "../Rev";
    }

    // 예약




}
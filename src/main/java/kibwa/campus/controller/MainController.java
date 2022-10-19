package kibwa.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static kibwa.campus.util.CmmUtil.nvl;

@Controller
public class MainController {
    @RequestMapping(value = "FinalMain")
    public String FinalMain(HttpServletRequest request, ModelMap model)
            throws Exception{

        //String name = nvl(request.getParameter("name"));
        //model.addAttribute("name", name);
        return "/test/FinalMain";
    }
}

//지니 수정
//민지가 오류나는거 수정함

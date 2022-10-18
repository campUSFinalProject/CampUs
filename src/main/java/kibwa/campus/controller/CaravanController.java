package kibwa.campus.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static kibwa.campus.util.CmmUtil.nvl;

@Controller
public class CaravanController {
    @RequestMapping(value = "Caravan")
    public String Caravan(HttpServletRequest request, ModelMap model)
            throws Exception{

        //String name = nvl(request.getParameter("name"));
        //model.addAttribute("name", name);
        return "/Caravan/Caravan";
    }
}

//지니 수정
//민지가 오류나는거 수정함

package kibwa.campus.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

import static kibwa.campus.util.CmmUtil.nvl;


@Controller
public class OutfieldController {
    @RequestMapping(value = "Outfield")
    public String Outfield(HttpServletRequest request, ModelMap model) throws Exception {
        String name = nvl(request.getParameter("name"));
        model.addAttribute("name", name);
        return "../Outfield";
    }
}
package kibwa.campus.controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static kibwa.campus.util.CmmUtil.nvl;

@RequestMapping(value = "get")
public class test {
    public String get(HttpServletRequest request, ModelMap model) throws Exception {
        String name = nvl(request.getParameter("name"));

        model.addAttribute("name", name);
        return "/get";
    }
}

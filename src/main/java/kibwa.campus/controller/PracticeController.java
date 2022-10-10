package src.main.java.kibwa.campus.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static kibwa.campus.util.CmmUtil.nvl;


public class PracticeController {

    @RequestMapping(value="get")
    public String get(HttpServletRequest request, ModelMap model)
            throws Exception{
        String name = nvl(request.getParameter("name"));

        model.addAttribute("name",name);
        return "/get";
    }

}
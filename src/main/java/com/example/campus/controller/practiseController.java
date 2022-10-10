package com.example.campus.controller;

import com.example.campus.util.String;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

public class practiseController {

    @RequestMapping(value="get")
    public String get (HttpServletRequest request, ModelMap model)
        throws Exception{
        String name = request.getParameter("name");

    model.addAllAttribute("name", name);
    return "/get";

    }
}

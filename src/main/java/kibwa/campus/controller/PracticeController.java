package kibwa.campus.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static kibwa.campus.util.CmmUtil.nvl;

@Slf4j
public class PracticeController {
    @RequestMapping(value = "get")
    public String get(HttpServletRequest request, ModelMap model)
        throws Exception{

        String name = nvl(request.getParameter("name"));

        model.addAttribute("name", name);
        return "/get";
    }
}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

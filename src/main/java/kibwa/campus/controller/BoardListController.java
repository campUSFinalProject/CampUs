package kibwa.campus.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

import static kibwa.campus.util.CmmUtil.nvl;

@Controller
public class BoardListController {

    @RequestMapping(value = "boardList")
    public String BoardList(HttpServletRequest request, ModelMap
            model) throws Exception {
        //String name = nvl(request.getParameter("name"));
        //model.addAttribute("name", name);
        return "/board/FreeBoard";
    }
}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

package kibwa.campus.controller;
import kibwa.campus.dto.CaravanDTO;
import kibwa.campus.service.ICaravanService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;

import static kibwa.campus.util.CmmUtil.nvl;


@Slf4j
@Controller
public class  BusinessController {

    @Resource(name = "CaravanService")
    private ICaravanService CaravanService;

    @RequestMapping(value = "businesscrud")
    public String Business_CRUD(HttpServletRequest request, ModelMap model) throws Exception {
        String name = nvl(request.getParameter("name"));
        model.addAttribute("name", name);
        return "/businesspage/Business_CRUD";
    }



}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

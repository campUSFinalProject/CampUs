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
public class  CaravanController {

    @Resource(name = "CaravanService")
    private ICaravanService CaravanService;

    @RequestMapping(value = "Caravan")
    public String Caravan(HttpServletRequest request, ModelMap model) throws Exception {
        String name = nvl(request.getParameter("name"));
        model.addAttribute("name", name);
        return "/Caravan/Caravan";
    }

    @RequestMapping(value = "CaravanDetail")
    public String CaravanDetail(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".CaravanList start!");

        List<CaravanDTO> cList = CaravanService.getCaravanList();

        if (cList == null){
            cList = new ArrayList<>();
        }

        log.info("cList : " + cList);
        model.addAttribute("cList", cList);

        log.info(this.getClass().getName() + ".CaravanList End!");

        return "/Caravan/CaravanDetail";
    }
}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

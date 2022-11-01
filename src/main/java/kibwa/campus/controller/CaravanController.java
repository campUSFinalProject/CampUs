package kibwa.campus.controller;
import kibwa.campus.dto.CaravanDTO;
import kibwa.campus.service.ICaravanService;
import kibwa.campus.util.CmmUtil;
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

    /* 카라반 리스트 페이지*/
    @RequestMapping(value = "Caravan")
    public String Caravan(HttpServletRequest request, ModelMap model) throws Exception {
        //String name = nvl(request.getParameter("name"));
        //model.addAttribute("name", name);

        List<CaravanDTO> cList = CaravanService.getCaravanList();

        model.addAttribute("cList" , cList);

        return "/Caravan/Caravan";
    }

    @RequestMapping(value = "business_insert")
    public String business_insert(HttpServletRequest request, ModelMap model) throws Exception {

        List<CaravanDTO> cList = CaravanService.getCaravanList();

        model.addAttribute("cList" , cList);

        return "/business/business_insert";
    }




    /* 카라반 상세정보 페이지*/
    @RequestMapping(value = "CaravanDetail")
    public String CaravanDetail(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".CaravanList start!");

        /*List<CaravanDTO> cList = CaravanService.getCaravanList();

        if (cList == null){
            cList = new ArrayList<>();
        }

        log.info("cList : " + cList);
        model.addAttribute("cList", cList);*/

        try{
            String cground_info_num = CmmUtil.nvl(request.getParameter("cground_info_num"));
            log.info("cground_info_num : " + cground_info_num);

            CaravanDTO cDTO = new CaravanDTO();
            cDTO.setCground_info_num(cground_info_num);

            CaravanDTO coDTO = CaravanService.getCaravanDetail(cDTO);

            model.addAttribute("coDTO", coDTO);

        }catch (Exception e) {
            log.info(e.toString());
            e.printStackTrace();
        }finally {
            log.info(this.getClass().getName() + ".CaravanList End!");
        }

        return "/Caravan/CaravanDetail";
    }
}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test

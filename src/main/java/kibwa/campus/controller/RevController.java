package kibwa.campus.controller;

import kibwa.campus.dto.rev.RevDTO;
import kibwa.campus.service.impl.rev.RevService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("rev")
public class RevController {

    private final RevService revService;

    @Autowired
    public RevController(RevService revService) {
        this.revService = revService;
    }

    /**
     * 로직
     * 1. room 로 들어와서 페이지 보여줌 -> get 요청
     * 2. rev1 로 post 요청 보내서 저장(/rev1)
     * 3. redirect://date rev2의 get 요청 -> rev2 페이지 보여줌
     * 4. rev2 폼에서 post 요청 보냄(/rev2)
     * 5. redirect://gi re3의 get 요청 -> rev3 페이지 보여줌
     */

    /**
     *  1. localhost:9000/rev/캠핑장ID/구역ID  용수가 이런 식의 형태를 a 태그 이용해서 나한테 넘겨주기
     */

    @GetMapping(value = "/{cGroundId}/{sectorId}")
    public String cground(@PathVariable String cGroundId,
                          @PathVariable String sectorId,
                          RedirectAttributes rt){
        rt.addFlashAttribute("revCampInfoDTO", revService.findRevCampInfo(cGroundId,sectorId));
        return "redirect:/rev/rooms";
    }

    /**
     * 1. 선택된 캠핑장의 구역
     */
    //
    @GetMapping(value = "/rooms")
    public String Rooms() throws Exception {
        return "/rev/RevRooms";
    }

    @PostMapping(value = "/rooms")
    public String Rooms(RevDTO revDTO) {
        //revService.save(revDTO);

        return "redirect:/rev/date";
    }

    @GetMapping(value = "/date") // RevDate/ 이후의 ID 값읇 불러와서 해당 캠핑장의 예약을 도와줌
    public String RevDate(Model model) throws Exception {

       return "/rev/RevDate";
    }

    @PostMapping(value = "/date")
    public String RevDate(@ModelAttribute RevDTO revDTO) throws Exception {
        log.info("revDTO = {}", revDTO);
        //revService.save(revDTO);
        return "redirect:/RevRooms";
    }

    /**
     *  1. ID 는 사용자 ID 가져와서 어떤 사용자의 예약정보를 보여줄지에 대한  ID (ps 짜다보면 달라질수있음)
     *  2.
     */
    @GetMapping(value = "gi/{id}")
    public String gi(@PathVariable @Nullable String id, ModelMap model) throws Exception {

        log.info("{} .RevGIList End!", this.getClass().getName());
        return "/rev/RevGI";
    }
}

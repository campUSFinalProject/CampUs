package kibwa.campus.controller;

import kibwa.campus.dto.rev.RevCampInfoDTO;
import kibwa.campus.dto.rev.RevDateDTO;
import kibwa.campus.dto.rev.RevGIDTO;
import kibwa.campus.dto.rev.RevRoomDTO;
import kibwa.campus.service.IRevService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("rev")
public class RevController {

    private final IRevService<RevDateDTO> revDateService;
    private final IRevService<RevRoomDTO> revRoomService;
    private final IRevService<RevGIDTO> revGIService;
    private final IRevService<RevCampInfoDTO> revCampInfoRevService;

    @Autowired
    public RevController(IRevService<RevDateDTO> revDateService, IRevService<RevRoomDTO> revRoomService, IRevService<RevGIDTO> revGIService, IRevService<RevCampInfoDTO> revCampInfoRevService) {
        this.revDateService = revDateService;
        this.revRoomService = revRoomService;
        this.revGIService = revGIService;
        this.revCampInfoRevService = revCampInfoRevService;
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
     *  1. localhost/Rev/Rooms/1 (구역 번호) id는 방번호
     */

    @GetMapping(value = "/cground/{id}")
    public String cground(@PathVariable @Nullable String id, RedirectAttributes redirectAttributes){
        redirectAttributes.addFlashAttribute("revCampInfoDTO", revCampInfoRevService.findById(id));
        return "redirect:/rev/rooms";
    }

    /**
     * 1. 선택된 캠핑장의 구역
     */
    //
    @GetMapping(value = "/rooms")
    public String Rooms() throws Exception {
        return "/RevRooms";
    }

    @PostMapping(value = "/rooms")
    public String Rooms(RevRoomDTO revRoomDTO) {
        revRoomService.save(revRoomDTO);

        return "redirect:/rev/date";
    }

    @GetMapping(value = "/date") // RevDate/ 이후의 ID 값읇 불러와서 해당 캠핑장의 예약을 도와줌
    public String RevDate(Model model) throws Exception {

       return "/RevDate";
    }

    @PostMapping(value = "/date")
    public String RevDate(@ModelAttribute RevDateDTO revDateDTO) throws Exception {
        log.info("revDateDTO = {}", revDateDTO);
        revDateService.save(revDateDTO);
        return "redirect:/RevRooms";
    }

    /**
     *  1. ID 는 사용자 ID 가져와서 어떤 사용자의 예약정보를 보여줄지에 대한  ID (ps 짜다보면 달라질수있음)
     *  2.
     */
    @GetMapping(value = "gi/{id}")
    public String gi(@PathVariable @Nullable String id, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".RevGIList start!");

        List<RevGIDTO> rgiList = revGIService.getList();

        if (rgiList == null){
            rgiList = new ArrayList<>();
        }

        log.info("rgiList : {}", rgiList);
        model.addAttribute("rgiList", rgiList);

        log.info("{} .RevGIList End!", this.getClass().getName());
        return "/RevGI";
    }
}

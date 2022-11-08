package kibwa.campus.controller;

import kibwa.campus.dto.MemberDTO;
import kibwa.campus.dto.rev.GuestInfoRequestDTO;
import kibwa.campus.dto.rev.RoomsRequestDTO;
import kibwa.campus.dto.rev.CampingInfoResponseDTO;
import kibwa.campus.service.impl.rev.RevService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

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

    //
    @GetMapping(value = "/{cGroundName}/{sectorId}") //localhost:9000/캠핑장이름/섹터넘버 cground/1
    public String Rooms(@PathVariable String sectorId,
                        Model model) throws Exception {
        CampingInfoResponseDTO campingInfoResponseDTO = revService.findRevCampInfo(sectorId);
        log.info("조회해온 campingInfo = {}", campingInfoResponseDTO);
        model.addAttribute("campInfo", campingInfoResponseDTO);
        return "/rev/RevRooms";
    }

    @PostMapping(value = "/rooms")
    public String Rooms(RoomsRequestDTO roomsRequestDTO,
                        HttpSession session,
                        RedirectAttributes rt) {
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setMem_num((String)session.getAttribute("SS_NUM"));
        log.info("memberDTO = {}", memberDTO);
        rt.addFlashAttribute("paymentInfo", revService.save(roomsRequestDTO, memberDTO));
        return "redirect:/rev/payment";
    }

    @GetMapping(value = "/payment") // RevDate/ 이후의 ID 값읇 불러와서 해당 캠핑장의 예약을 도와줌
    public String payment() throws Exception {
       return "/rev/Revpay";
    }

    @PostMapping(value = "/payment")
    public String payment(@ModelAttribute GuestInfoRequestDTO guestInfoRequestDTO,
                          RedirectAttributes rt) throws Exception {
        log.info("PostMapping payment guestInfoRequestDTO = {} ", guestInfoRequestDTO);
        rt.addFlashAttribute("guestInfo", guestInfoRequestDTO);
        return "redirect:/rev/guestInfo";
    }

    @GetMapping("/guestInfo")
    public String guestInfo(Model model) throws Exception {
        GuestInfoRequestDTO guestInfoRequestDTO = (GuestInfoRequestDTO)model.asMap().get("guestInfo");
        log.info("guestInfoRequestDTO = {}", guestInfoRequestDTO);
        model.addAttribute("guestInfo", revService.getRevInfo(guestInfoRequestDTO));

        return "/rev/RevGI";
    }
}

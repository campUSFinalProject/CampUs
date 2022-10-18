package kibwa.campus.controller;
import kibwa.campus.dto.BoardDTO;
import kibwa.campus.service.IBoardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Slf4j
@Controller
public class BoardListController {
    @Resource(name = "BoardService")
    private IBoardService boardService;

    // 게시판 리스트 조회
    @GetMapping(value = "board/BoardList")
    public String BoardList(ModelMap model)
        throws Exception{

        log.info(this.getClass().getName() + ".BoardList start!");

        List<BoardDTO> bList = boardService.getBoardList();

        if (bList == null){
            bList = new ArrayList<>();
        }

        model.addAttribute("bList" + bList);

        log.info(this.getClass().getName() + ".BoardList End!");

        return "/board/FreeBoard";
    }
    //게시판 글 작성
}
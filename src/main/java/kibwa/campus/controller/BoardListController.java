package kibwa.campus.controller;
import kibwa.campus.dto.BoardDTO;
import kibwa.campus.service.IBoardService;
import kibwa.campus.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

        log.info("bList :" + bList);
        model.addAttribute("bList", bList);

        log.info(this.getClass().getName() + ".BoardList End!");

        return "/board/FreeBoard";
    }

    //게시판 글 작성
    @GetMapping(value = "board/BoardInsert")
    public String BoardListInsert(HttpSession session, HttpServletRequest request, ModelMap model) {

        log.info(this.getClass().getName() + ".InsertBoard start!");

        String msg = "";
        String url = "";

        try{
            //String user_id = CmmUtil.nvl((String) session.getAttribute("SS_ID"));
            String user_id = "ming";
            String title = CmmUtil.nvl(request.getParameter("title"));
            String contents = CmmUtil.nvl(request.getParameter("contents"));

            log.info("user_id : " + user_id);
            log.info("title : " + title);
            log.info("contents : " + contents);

            BoardDTO bDTO = new BoardDTO();

            bDTO.setId(user_id);
            bDTO.setBoard_title(title);
            bDTO.setBoard_content(contents);

            boardService.insertBoard(bDTO);

            msg = "등록되었습니다";
            url = "board/BoardList";

        } catch (Exception e) {

            msg = "실패하였습니다 : " + e.getMessage();
            url = "board/BoardList";

            log.info(e.toString());
            e.printStackTrace();

        } finally {
            log.info(this.getClass().getName() + ".BoardInsert End!");

            model.addAttribute("url", url);
            model.addAttribute("msg", msg);

            log.info("model : " + model);
        }

        return "/board/BoardInputForm";
    }
}
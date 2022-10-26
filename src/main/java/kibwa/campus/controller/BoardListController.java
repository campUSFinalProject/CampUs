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

    //게시판에 글을 작성할 수 있는 페이지
    @GetMapping(value = "board/BoardInsertFrom")
    public String BoardInsertForm(ModelMap model)
            throws Exception{
        log.info(this.getClass().getName() + ".BoardInsertForm is here!");
        return "/board/BoardInputForm";
    }

    //게시판 글 작성 완료
    @GetMapping(value = "board/BoardInsert")
    public String BoardListInsert(HttpSession session, HttpServletRequest request, ModelMap model) {

        log.info(this.getClass().getName() + ".Board Insert start!");

        String msg = "";
        String url = "";

        try{
            String user_id = CmmUtil.nvl((String) session.getAttribute("SS_ID"));
            String mem_num = CmmUtil.nvl((String)session.getAttribute("SS_NUM"));
            //String user_id = "ming";
            //int mem_num = 1;
            String title = CmmUtil.nvl(request.getParameter("title"));
            String contents = CmmUtil.nvl(request.getParameter("contents"));

            log.info("user_id : " + user_id);
            log.info("mem_num : " + mem_num);
            log.info("title : " + title);
            log.info("contents : " + contents);

            BoardDTO bDTO = new BoardDTO();

            bDTO.setId(user_id);
            bDTO.setMem_num(mem_num);
            bDTO.setBoard_title(title);
            bDTO.setBoard_content(contents);

            boardService.insertBoard(bDTO);

            msg = "등록되었습니다";
            url = "/board/BoardList";

        } catch (Exception e) {

            msg = "실패하였습니다 : " + e.getMessage();
            url = "/board/BoardList";

            log.info(e.toString());
            e.printStackTrace();

        } finally {
            log.info(this.getClass().getName() + ".Board Insert End!");

            model.addAttribute("url", url);
            model.addAttribute("msg", msg);

            log.info("model : " + model);
        }

        return "/redirect";
    }

    //게시판 글 내용 조회
    @GetMapping(value = "board/BoardView")
    public String BoardView(HttpSession session, HttpServletRequest request, ModelMap model)
            throws Exception{
        log.info(this.getClass().getName() + ".BoardView Start!");

        String msg = "";

        try{
            String board_num = CmmUtil.nvl(request.getParameter("board_num"));

            log.info("board_num : " + board_num);

            BoardDTO bDTO = new BoardDTO();
            bDTO.setBoard_num(board_num);

            BoardDTO boDTO = boardService.getBoardView(bDTO);

            if (boDTO == null){
                boDTO = new BoardDTO();
            }

            log.info("getBoardView success");
            model.addAttribute("boDTO", boDTO);

        }catch (Exception e) {
            msg = "실패하였습니다. : " +  e.getMessage();
            log.info(e.toString());
            e.printStackTrace();
        }finally {
            log.info(this.getClass().getName() + ".BoardView End!");
            model.addAttribute("msg", msg);
        }

        return "/board/BoardView";
    }
}
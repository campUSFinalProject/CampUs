package kibwa.campus.controller;
import kibwa.campus.dto.BoardDTO;
import kibwa.campus.dto.MemberDTO;
import kibwa.campus.service.IBoardService;
import kibwa.campus.service.impl.BoardService;
import kibwa.campus.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.print.Pageable;
import java.util.ArrayList;
import java.util.List;


@Slf4j
@Controller
public class BoardListController {
    @Resource(name = "BoardService")
    private IBoardService boardService;

    // 게시판 리스트 조회
    @GetMapping(value = "board/BoardList")
    public String BoardList(BoardDTO bDTO, HttpServletRequest request, ModelMap model)
        throws Exception{

        log.info(this.getClass().getName() + ".BoardList start!");

        //게시글 검색 로직으로 리스트 가져옴
        List<BoardDTO> bList = boardService.searchBoard(bDTO);

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
            String mem_num = CmmUtil.nvl(request.getParameter("SS_NUM"));
            String board_num = CmmUtil.nvl(request.getParameter("board_num"));

            log.info("mem_num : " + mem_num);
            log.info("board_num : " + board_num);

            BoardDTO bDTO = new BoardDTO();
            bDTO.setMem_num(mem_num);
            bDTO.setBoard_num(board_num);

            BoardDTO boDTO = boardService.getBoardView(bDTO);

            if (boDTO == null){
                boDTO = new BoardDTO();
            }

            log.info("getBoardView success");
            model.addAttribute("boDTO", boDTO);
            log.info("bo.mem_num : " + boDTO.getMem_num());
            log.info("bo.title : " + boDTO.getBoard_title());

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

    //게시판 글 내용 삭제
    @GetMapping(value = "board/BoardDelete")
    public String BoardDelete(HttpSession session, HttpServletResponse response, HttpServletRequest request, ModelMap model) {

        log.info(this.getClass().getName() + ".DELETE BoardContent START!!");

        String msg = "";
        String url = "";

        try{
            String board_num = CmmUtil.nvl(request.getParameter("board_num"));

            log.info("board_num : " + board_num);

            BoardDTO bDTO = new BoardDTO();
            bDTO.setBoard_num(board_num);

            //회원정보 삭제
            int res = boardService.deleteBoard(bDTO);

            log.info("res : " + res);
            msg = "게시글 삭제가 완료되었습니다.";
            url = "/board/BoardList";

        }catch (Exception e){
            msg = "게시글 삭제 실패 : " + e.toString();
            url = "/board/BoardList";
            log.info(e.toString());
            e.printStackTrace();

        }finally {

            log.info(this.getClass().getName() + ".DELETE boardContent END!");

            model.addAttribute("msg", msg);
            model.addAttribute("url", url);

        }
        return "/redirect";
    }

    //게시글 내용 수정하는 form
    @GetMapping(value = "board/BoardEditForm")
    public String BoardUpdateForm(HttpSession session, HttpServletRequest request, ModelMap model) throws Exception{

        log.info(this.getClass().getName() + ".NoticeEditForm Start!");

        log.info(this.getClass().getName() + ".NoticeEditForm End!");

        return "/board/BoardEditForm";
    }

    //게시글 수정
    @PostMapping(value = "board/BoardUpdate")
    public String NoticeUpdate(HttpSession session, HttpServletRequest request, ModelMap model){
        log.info(this.getClass().getName() + ".BoardUpdate Start!");

        String msg = "";
        String url = "";

        try{
            String mem_num = CmmUtil.nvl((String) session.getAttribute("SS_NUM"));
            String board_num = CmmUtil.nvl(request.getParameter("board_num"));
            String title = CmmUtil.nvl(request.getParameter("title"));
            String contents = CmmUtil.nvl(request.getParameter("contents"));

            log.info("Control Edit mem_num : " + mem_num);
            log.info("board_num : " + board_num);
            log.info("title : " + title);
            log.info("contents : " + contents);

            BoardDTO bDTO = new BoardDTO();

            bDTO.setMem_num(mem_num);
            bDTO.setBoard_num(board_num);
            bDTO.setBoard_title(title);
            bDTO.setBoard_content(contents);

            boardService.updateBoard(bDTO);

            msg = "수정되었습니다";
            url = "/board/BoardView?board_num=" + bDTO.getBoard_num();

        }catch (Exception e){
            msg = "실패하였습니다 : " + e.getMessage();
            log.info(e.toString());
            e.printStackTrace();
            url = "/board/BoardList";

        }finally {
            log.info(this.getClass().getName() + ".BoardUpdate end");

            model.addAttribute("msg", msg);
            model.addAttribute("url", url);
        }
        return "/redirect";
    }
}
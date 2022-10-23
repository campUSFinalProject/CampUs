package kibwa.campus.service;

import kibwa.campus.dto.BoardDTO;

import java.util.List;

public interface IBoardService {
    // 게시판 글 조회
    List<BoardDTO> getBoardList() throws Exception;
    void insertBoard(BoardDTO bDTO) throws Exception;
    //게시글 조회
    BoardDTO getBoardView(BoardDTO bDTO) throws Exception;
}

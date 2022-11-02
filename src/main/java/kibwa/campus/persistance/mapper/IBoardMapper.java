package kibwa.campus.persistance.mapper;

import kibwa.campus.dto.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IBoardMapper {
    //게시글 리스트 출력
    List<BoardDTO> getBoardList() throws Exception;
    //게시글 insert
    void insertBoard(BoardDTO bDTO) throws Exception;
    //게시글 상세내용 조회
    BoardDTO getBoardView(BoardDTO bDTO) throws Exception;
    //게시글 delete
    int deleteBoard(BoardDTO bDTO) throws Exception;
    //게시글 modify
    void updateBoard(BoardDTO bDTO) throws Exception;
    //게시글 조회수 증가
    void updateBoardViewNum(BoardDTO bDTO) throws Exception;
    //게시글 검색
    List<BoardDTO> searchBoard(BoardDTO bDTO) throws Exception;
}

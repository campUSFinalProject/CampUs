package kibwa.campus.persistance.mapper;

import kibwa.campus.dto.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IBoardMapper {
    //게시판 리스트 출력
    List<BoardDTO> getBoardList() throws Exception;
    //게시판 insert
    void insertBoard(BoardDTO bDTO) throws Exception;
    BoardDTO getBoardView(BoardDTO bDTO) throws Exception;
}

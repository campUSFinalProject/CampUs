package kibwa.campus.persistance.mapper;

import kibwa.campus.dto.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IBoardMapper {
    List<BoardDTO> getBoardList() throws Exception;
}

package kibwa.campus.persistance.mapper;

import kibwa.campus.dto.RevGIDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IRevGIMapper {
    List<RevGIDTO> getRevGIList() throws Exception;
}



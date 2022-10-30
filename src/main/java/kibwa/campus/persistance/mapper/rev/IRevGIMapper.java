package kibwa.campus.persistance.mapper.rev;

import kibwa.campus.dto.rev.RevGIDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IRevGIMapper {
    List<RevGIDTO> getRevGIList() throws Exception;
}



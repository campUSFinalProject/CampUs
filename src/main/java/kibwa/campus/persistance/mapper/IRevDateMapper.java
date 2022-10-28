package kibwa.campus.persistance.mapper;

import kibwa.campus.dto.RevDateDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IRevDateMapper {
    List<RevDateDTO> getRevDateList() throws Exception;

    void save(RevDateDTO revDateDTO);
}

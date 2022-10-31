package kibwa.campus.persistance.mapper.rev;

import kibwa.campus.dto.rev.RevDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IRevMapper {
    List<RevDTO> getRevList() throws Exception;

    RevDTO findRevCampInfo(String sectorId);

    void save(RevDTO revDTO);
}
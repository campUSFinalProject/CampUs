package kibwa.campus.persistance.mapper.rev;

import kibwa.campus.dto.rev.RoomsRequestDTO;
import kibwa.campus.dto.rev.CampingInfoResponseDTO;
import kibwa.campus.dto.rev.RevDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IRevMapper {
    List<CampingInfoResponseDTO> getRevList() throws Exception;

    CampingInfoResponseDTO findRevCampInfo(RevDTO revDTO);

    void save(RoomsRequestDTO roomsRequestDTO);
}
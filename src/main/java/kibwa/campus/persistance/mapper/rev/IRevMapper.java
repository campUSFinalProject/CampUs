package kibwa.campus.persistance.mapper.rev;

import kibwa.campus.dto.rev.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IRevMapper {
    List<CampingInfoResponseDTO> getRevList() throws Exception;

    CampingInfoResponseDTO findRevCampInfo(RevDTO revDTO);

    void save(RoomsRequestDTO roomsRequestDTO);

    GuestInfoResponseDTO getRevInfo(GuestInfoRequestDTO guestInfoRequestDTO);
}
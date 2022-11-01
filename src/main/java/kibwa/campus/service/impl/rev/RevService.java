package kibwa.campus.service.impl.rev;

import kibwa.campus.dto.MemberDTO;
import kibwa.campus.dto.rev.RoomsRequestDTO;
import kibwa.campus.dto.rev.CampingInfoResponseDTO;
import kibwa.campus.dto.rev.RevDTO;
import kibwa.campus.persistance.mapper.rev.IRevMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class RevService {

    private final IRevMapper revMapper;

    public RevService(IRevMapper revMapper) {
        this.revMapper = revMapper;
    }

    public CampingInfoResponseDTO findRevCampInfo(String sectorId) {
        RevDTO revDTO = new RevDTO();
        revDTO.setSector_Num(sectorId);
        return revMapper.findRevCampInfo(revDTO);
    }

    public void save(RoomsRequestDTO roomsRequestDTO, MemberDTO memberDTO) {
        roomsRequestDTO.setMem_num(memberDTO.getMem_num());

        revMapper.save(roomsRequestDTO);
    }
}

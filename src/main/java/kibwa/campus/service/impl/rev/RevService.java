package kibwa.campus.service.impl.rev;

import kibwa.campus.dto.MemberDTO;
import kibwa.campus.dto.rev.*;
import kibwa.campus.persistance.mapper.rev.IRevMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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

    public RoomsRequestDTO save(RoomsRequestDTO roomsRequestDTO, MemberDTO memberDTO) {
        roomsRequestDTO.setMem_num(memberDTO.getMem_num());
        roomsRequestDTO.setRev_date(LocalDate.now().format(DateTimeFormatter.ISO_DATE));
        log.info("roomsRequestDTO = {}", roomsRequestDTO);
        revMapper.save(roomsRequestDTO);
        return roomsRequestDTO;
    }

    public GuestInfoResponseDTO getRevInfo(GuestInfoRequestDTO guestInfoRequestDTO) {
        return revMapper.getRevInfo(guestInfoRequestDTO);
    }
}

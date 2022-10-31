package kibwa.campus.service.impl.rev;

import kibwa.campus.dto.MemberDTO;
import kibwa.campus.dto.rev.RevDTO;
import kibwa.campus.persistance.mapper.rev.IRevMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Slf4j
@Service
public class RevService {

    private final IRevMapper revMapper;

    public RevService(IRevMapper revMapper) {
        this.revMapper = revMapper;
    }

    public RevDTO findRevCampInfo(String sectorId) {
        return revMapper.findRevCampInfo(sectorId);
    }

    public void save(RevDTO revDTO, MemberDTO memberDTO) {
        revDTO.setMem_Num(memberDTO.getMem_num());

        revMapper.save(revDTO);
    }
}

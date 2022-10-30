package kibwa.campus.service.impl.rev;

import kibwa.campus.dto.rev.RevRoomDTO;
import kibwa.campus.service.IRevService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public

class RevRoomService implements IRevService<RevRoomDTO> {

    @Override
    public List<RevRoomDTO> getList() throws Exception {
        return null;
    }

    @Override
    public RevRoomDTO findById(String id) {
        return null;
    }

    @Override
    public void save(RevRoomDTO DTO) {
        //저장로직
    }

    @Override
    public void modify(RevRoomDTO DTO) {
        //수정로직
    }

    @Override
    public void delete(RevRoomDTO DTO) {

    }
}

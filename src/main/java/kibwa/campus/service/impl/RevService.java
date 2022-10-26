package kibwa.campus.service.impl;

import kibwa.campus.dto.RevDTO;
import kibwa.campus.persistance.mapper.IRevMapper;
import kibwa.campus.service.IRevService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service(value = "RevService")
public class RevService implements IRevService {

    private final IRevMapper revMapper;

    @Autowired
    public RevService(IRevMapper revMapper) {
        this.revMapper = revMapper;
    }

    @Override
    public List<RevDTO> getRevList() throws Exception {

        List<RevDTO> rList = revMapper.getRevList();

        log.info(this.getClass().getName() + " rList : " + rList);

        return revMapper.getRevList();
    }

}

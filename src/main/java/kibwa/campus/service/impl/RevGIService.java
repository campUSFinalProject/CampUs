package kibwa.campus.service.impl;

import kibwa.campus.dto.RevGIDTO;
import kibwa.campus.persistance.mapper.IRevGIMapper;
import kibwa.campus.service.IRevService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service(value = "RevGIService")
public class RevGIService implements IRevService<RevGIDTO> {

    private final IRevGIMapper revGIMapper;

    @Autowired
    public RevGIService(IRevGIMapper revGIMapper) {
        this.revGIMapper = revGIMapper;
    }

    @Override
    public List<RevGIDTO> getList() throws Exception {

        List<RevGIDTO> rgiList = revGIMapper.getRevGIList();

        log.info(this.getClass().getName() + " rgiList : " + rgiList);

        return revGIMapper.getRevGIList();
    }

    @Override
    public void save(RevGIDTO DTO) {

    }

    @Override
    public void modify(RevGIDTO DTO) {

    }

    @Override
    public void delete(RevGIDTO DTO) {

    }
}


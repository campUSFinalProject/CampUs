package kibwa.campus.service.impl;

import kibwa.campus.dto.RevDateDTO;
import kibwa.campus.persistance.mapper.IRevDateMapper;
import kibwa.campus.service.IRevDateService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service(value = "RevDateService")
public class RevDateService implements IRevDateService {

    private final IRevDateMapper revDateMapper;

    @Autowired
    public RevDateService(IRevDateMapper revDateMapper) {
        this.revDateMapper = revDateMapper;
    }

    @Override
    public List<RevDateDTO> getRevDateList() throws Exception {

        List<RevDateDTO> rdList = revDateMapper.getRevDateList();

         log.info(this.getClass().getName() + " rdList : " + rdList);

        return revDateMapper.getRevDateList();
    }

}
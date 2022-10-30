package kibwa.campus.service.impl.rev;

import kibwa.campus.dto.rev.RevDateDTO;
import kibwa.campus.persistance.mapper.rev.IRevDateMapper;
import kibwa.campus.service.IRevService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class RevDateService implements IRevService<RevDateDTO> {

    private final IRevDateMapper revDateMapper;

    @Autowired
    public RevDateService(IRevDateMapper revDateMapper) {
        this.revDateMapper = revDateMapper;
    }

    @Override
    public List<RevDateDTO> getList() throws Exception {
        List<RevDateDTO> rdList = revDateMapper.getRevDateList();

        log.info(this.getClass().getName() + " rdList : " + rdList);

        return revDateMapper.getRevDateList();
    }

    @Override
    public RevDateDTO findById(String id) {
        return null;
    }

    @Override
    public void save(RevDateDTO DTO) {
        revDateMapper.save(DTO);
    }

    @Override
    public void modify(RevDateDTO DTO) {

    }

    @Override
    public void delete(RevDateDTO DTO) {

    }
}
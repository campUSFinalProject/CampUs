package kibwa.campus.service.impl.rev;

import kibwa.campus.dto.rev.RevCampInfoDTO;
import kibwa.campus.persistance.mapper.rev.IRevCampInfoMapper;
import kibwa.campus.persistance.mapper.rev.IRevMapper;
import kibwa.campus.service.IRevService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RevCampInfoService implements IRevService<RevCampInfoDTO> {

    private final IRevCampInfoMapper revCampInfoMapper;

    @Autowired
    public RevCampInfoService(IRevCampInfoMapper revCampInfoMapper) {
        this.revCampInfoMapper = revCampInfoMapper;
    }

    @Override
    public List<RevCampInfoDTO> getList() throws Exception {
        return null;
    }

    @Override
    public RevCampInfoDTO findById(String id) {
        return revCampInfoMapper.findById(id);
    }

    @Override
    public void save(RevCampInfoDTO DTO) {

    }

    @Override
    public void modify(RevCampInfoDTO DTO) {

    }

    @Override
    public void delete(RevCampInfoDTO DTO) {

    }
}

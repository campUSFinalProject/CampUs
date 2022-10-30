package kibwa.campus.persistance.mapper.rev;

import kibwa.campus.dto.rev.RevCampInfoDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IRevCampInfoMapper {
    RevCampInfoDTO findById(String id);
}

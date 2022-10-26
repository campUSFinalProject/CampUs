package kibwa.campus.persistance.mapper;

import kibwa.campus.dto.BusinessDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IBusinessMapper {

    int InsertChangeRequest(BusinessDTO pDTO) throws Exception;
}

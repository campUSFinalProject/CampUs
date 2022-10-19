package kibwa.campus.persistance.mapper;


import kibwa.campus.dto.CaravanDTO;
import kibwa.campus.dto.OutfieldDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ICaravanMapper {
    List< CaravanDTO> getCaravanList() throws Exception;


}

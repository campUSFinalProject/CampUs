package kibwa.campus.persistance.mapper;


import kibwa.campus.dto.OutfieldDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IOutfieldMapper {
    List<OutfieldDTO> getOutfieldList() throws Exception;
    List<OutfieldDTO> updateOutfield() throws Exception;
}

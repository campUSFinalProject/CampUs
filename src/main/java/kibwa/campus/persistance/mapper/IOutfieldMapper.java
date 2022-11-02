package kibwa.campus.persistance.mapper;


import kibwa.campus.dto.BoardDTO;
import kibwa.campus.dto.OutfieldDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IOutfieldMapper {
    List<OutfieldDTO> getOutfieldList() throws Exception;
    OutfieldDTO getOutfieldView(OutfieldDTO oDTO) throws Exception;
    void insertOutfield(OutfieldDTO oDTO) throws Exception;
    void updateOutfield(OutfieldDTO oDTO) throws Exception;
    int deleteOutfield(OutfieldDTO oDTO) throws Exception;
}

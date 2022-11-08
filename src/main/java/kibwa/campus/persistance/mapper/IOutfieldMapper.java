package kibwa.campus.persistance.mapper;


import kibwa.campus.dto.BoardDTO;
import kibwa.campus.dto.OutfieldDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IOutfieldMapper {
    //노지 리스트
    List<OutfieldDTO> getOutfieldList() throws Exception;

    //노지 상세 조회
    OutfieldDTO getOutfieldView(OutfieldDTO oDTO) throws Exception;

    //노지 등록
    void insertOutfield(OutfieldDTO oDTO) throws Exception;

    //노지 수정
    void updateOutfield(OutfieldDTO oDTO) throws Exception;

    //노지 삭제
    int deleteOutfield(OutfieldDTO oDTO) throws Exception;
}

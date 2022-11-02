package kibwa.campus.service;

import kibwa.campus.dto.BoardDTO;
import kibwa.campus.dto.OutfieldDTO;

import java.util.List;

public interface IOutfieldService {
    //노지 리스트
    List<OutfieldDTO> getOutfieldList() throws Exception;

    //노지 상세조회
    OutfieldDTO getOutfieldView(OutfieldDTO oDTO) throws Exception;

    //노지 등록
    void insertOutfield(OutfieldDTO oDTO) throws Exception;

    //노지 수정
    void updateOutfield(OutfieldDTO oDTO) throws Exception;

    //노지 삭제
    int deleteOutfield(OutfieldDTO oDTO) throws Exception;
}

package kibwa.campus.service;

import kibwa.campus.dto.OutfieldDTO;

import java.util.List;

public interface IOutfieldService {
    List<OutfieldDTO> getOutfieldList() throws Exception;
    List<OutfieldDTO> updateOutfield() throws Exception;
}

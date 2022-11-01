package kibwa.campus.service.impl;

import kibwa.campus.dto.BoardDTO;
import kibwa.campus.dto.OutfieldDTO;
import kibwa.campus.persistance.mapper.IOutfieldMapper;
import kibwa.campus.service.IOutfieldService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service(value = "OutfieldService")
public class OutfieldService implements IOutfieldService {

    private final IOutfieldMapper outfieldMapper;

    @Autowired
    public OutfieldService(IOutfieldMapper outfieldMapper) {
        this.outfieldMapper = outfieldMapper;
    }

    //노지 리스트
    @Override
    public List<OutfieldDTO> getOutfieldList() throws Exception {
        return outfieldMapper.getOutfieldList();
    }
    //노지 상세조회
    @Override
    public OutfieldDTO getOutfieldView(OutfieldDTO oDTO) throws Exception {
        log.info(this.getClass().getName() + ".OutfieldService");

        return outfieldMapper.getOutfieldView(oDTO);
    }
    //노지 등록
    @Override
    public void insertOutfield(OutfieldDTO oDTO) throws Exception {
        outfieldMapper.insertOutfield(oDTO);
    }
    //노지 업데이트
    @Override
    public void updateOutfield(OutfieldDTO oDTO) throws Exception {
        outfieldMapper.updateOutfield(oDTO);
    }

    //노지 삭제
    @Override
    public int deleteOutfield(OutfieldDTO oDTO) throws Exception {
        log.info(this.getClass().getName() + ".deleteOutfieldService");
        int res = outfieldMapper.deleteOutfield(oDTO);
        return res;
    }
}

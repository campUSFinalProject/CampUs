package kibwa.campus.service.impl;

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

    @Override
    public List<OutfieldDTO> getOutfieldList() throws Exception {
        return outfieldMapper.getOutfieldList();
    }
}

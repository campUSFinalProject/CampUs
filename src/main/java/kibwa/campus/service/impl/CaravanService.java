package kibwa.campus.service.impl;

import kibwa.campus.dto.CaravanDTO;
import kibwa.campus.persistance.mapper.ICaravanMapper;
import kibwa.campus.service.ICaravanService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service(value = "CaravanService")
public class CaravanService implements ICaravanService {

    private final ICaravanMapper CaravanMapper;

    @Autowired
    public CaravanService(ICaravanMapper CaravanMapper) {
        this.CaravanMapper = CaravanMapper;
    }

    @Override
    public List<CaravanDTO> getCaravanList() throws Exception {

        return CaravanMapper.getCaravanList();
    }
}

package kibwa.campus.service.impl;

import kibwa.campus.dto.BoardDTO;
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

    @Override
    public void insertCampingInfo(CaravanDTO cDTO) throws Exception {
        CaravanMapper.insertCampingInfo(cDTO);
    }

    @Override
    public CaravanDTO getCaravanDetail(CaravanDTO cDTO) throws Exception {
        return CaravanMapper.getCaravanDetail(cDTO);
    }

    @Override
    public void updateCaravan(CaravanDTO cDTO) throws Exception {
        log.info(this.getClass().getName() + ".updateCaravan START!!!");

        CaravanMapper.updateCaravan(cDTO);
    }

    @Override
    public int deleteCaravan(CaravanDTO cDTO) throws Exception {
        log.info(this.getClass().getName() + ".deleteCaravan START!!");
        int res = CaravanMapper.deleteCaravan(cDTO);
        return res;
    }

    @Override
    public List<String> getCaravanSector(CaravanDTO cDTO) throws Exception {
        return CaravanMapper.getCaravanSector(cDTO);
    }
}

package kibwa.campus.service;

import kibwa.campus.dto.CaravanDTO;

import java.util.List;

public interface ICaravanService {
    List<CaravanDTO> getCaravanList() throws Exception;

    void insertCampingInfo(CaravanDTO cDTO) throws Exception;
}

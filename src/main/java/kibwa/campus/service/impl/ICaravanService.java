package kibwa.campus.service.impl;

import kibwa.campus.dto.CaravanDTO;

import java.util.List;

public interface ICaravanService {
    List<CaravanDTO> getCaravanList() throws Exception;
}

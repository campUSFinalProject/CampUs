package kibwa.campus.service;

import kibwa.campus.dto.CaravanDTO;

import java.util.List;

public interface ICaravanService {
    List<CaravanDTO> getCaravanList() throws Exception;

    void insertCampingInfo(CaravanDTO cDTO) throws Exception;

    //캠핑장 상세정보 보기
    CaravanDTO getCaravanDetail(CaravanDTO cDTO) throws Exception;

    //카라반 정보수정
    void updateCaravan(CaravanDTO cDTO) throws Exception;

    //카라반 삭제
    int deleteCaravan(CaravanDTO cDTO) throws Exception;

    List<String> getCaravanSector(CaravanDTO cDTO) throws Exception;
}

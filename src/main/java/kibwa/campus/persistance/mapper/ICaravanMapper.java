package kibwa.campus.persistance.mapper;


import kibwa.campus.dto.BoardDTO;
import kibwa.campus.dto.CaravanDTO;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ICaravanMapper {
    List< CaravanDTO> getCaravanList() throws Exception;

    void insertCampingInfo(CaravanDTO cDTO) throws Exception;


    //카라반 상세정보 가져오기
    CaravanDTO getCaravanDetail(CaravanDTO cDTO) throws Exception;

    //카라반 정보수정
    void updateCaravan(CaravanDTO cDTO) throws Exception;

    //카라반 삭제
    int deleteCaravan(CaravanDTO cDTO) throws Exception;
}

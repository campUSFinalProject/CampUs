package kibwa.campus.persistance.mapper;

import kibwa.campus.dto.BusinessDTO;
import kibwa.campus.dto.CaravanDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IBusinessMapper {

    //사업자 전환요청
    int InsertChangeRequest(BusinessDTO pDTO) throws Exception;

    //사업자 로그인
    BusinessDTO getMemLoginCheck(BusinessDTO pDTO) throws Exception;
    
    //사업자가 등록한 본인의 카라반 조회
    List<CaravanDTO> getMyCaravan(CaravanDTO cDTO) throws Exception;

    /*//사업자 전환요청 리스트 조회
    List<BusinessDTO> getChangeReq() throws Exception;

    //사업자 전환요청 상세내용 조회
    BusinessDTO changeReqInfo(BusinessDTO pDTO) throws Exception;*/

}
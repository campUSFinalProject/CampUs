package kibwa.campus.service;

import kibwa.campus.dto.BusinessDTO;

import java.util.List;


public interface IBusinessService {

    //사업자 전환요청
    int InsertChangeRequest(BusinessDTO pDTO) throws Exception;

    // 사업자 로그인
    BusinessDTO getMemLoginCheck(BusinessDTO pDTO) throws Exception;

    //사업자 전환요청 리스트 조회
    List<BusinessDTO> getChangeReq() throws Exception;

    //사업자 전환요청 상세내용 조회
    BusinessDTO changeReqInfo(BusinessDTO pDTO) throws Exception;

}

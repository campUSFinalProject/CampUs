package kibwa.campus.service;

import kibwa.campus.dto.BusinessDTO;
import kibwa.campus.dto.MemberDTO;

public interface IBusinessService {

    int InsertChangeRequest(BusinessDTO pDTO) throws Exception;

    // 사업자 로그인
    BusinessDTO getMemLoginCheck(BusinessDTO pDTO) throws Exception;

}

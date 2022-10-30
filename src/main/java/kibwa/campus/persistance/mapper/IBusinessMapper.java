package kibwa.campus.persistance.mapper;

import kibwa.campus.dto.BusinessDTO;
import kibwa.campus.dto.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IBusinessMapper {

    //사업자 전환요청
    int InsertChangeRequest(BusinessDTO pDTO) throws Exception;

    //사업자 로그인
    BusinessDTO getMemLoginCheck(BusinessDTO pDTO) throws Exception;

}
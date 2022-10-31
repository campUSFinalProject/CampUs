package kibwa.campus.persistance.mapper;

import kibwa.campus.dto.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IMemberMapper {

    //회원가입하기
    int InsertMember(MemberDTO pDTO) throws Exception;

    //회원가입 전 중복체크하기
    MemberDTO getMemberExists(MemberDTO pDTO) throws Exception;


    //로그인 시 아이디 비밀번호 일치하는지 확인하기
    MemberDTO getMemLoginCheck(MemberDTO pDTO) throws Exception;

    //회원탈퇴
    int deleteMember(MemberDTO pDTO) throws Exception;

    //회원정보 수정
    void updateMember(MemberDTO pDTO) throws Exception;

}

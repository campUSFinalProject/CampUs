package kibwa.campus.service;

import kibwa.campus.dto.MemberDTO;

public interface IMemberService {

    //회원가입 하기
    int InsertMember(MemberDTO pDTO) throws Exception;


    //로그인 시 아이디 비밀번호 일치하는지 확인하기
    MemberDTO getMemLoginCheck(MemberDTO pDTO) throws Exception;

    //회원탈퇴
    int deleteMember(MemberDTO pDTO) throws Exception;
}

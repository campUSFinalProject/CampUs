package kibwa.campus.service;

import kibwa.campus.dto.MemberDTO;

public interface IMemberService {
    int InsertMember(MemberDTO pDTO) throws Exception;
}

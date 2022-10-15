package kibwa.campus.service.impl;

import kibwa.campus.dto.MemberDTO;
import kibwa.campus.persistance.IMemberMapper;
import kibwa.campus.service.IMemberService;
import kibwa.campus.util.CmmUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service(value = "MemberService")
@RequiredArgsConstructor
public class MemberService implements IMemberService {

    private final IMemberMapper memberMapper;


    //-----------회원가입-----------------
    @Override
    public int InsertMember(MemberDTO pDTO) throws Exception {

        int res =0;

        if(pDTO == null){
            pDTO = new MemberDTO();
        }

        int success = memberMapper.InsertMember(pDTO);

        if (success > 0){
            res = 1;
        }else{
            res = 0;
        }

        return res;
    }
}

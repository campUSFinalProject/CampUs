package kibwa.campus.service.impl;

import kibwa.campus.dto.MemberDTO;
import kibwa.campus.persistance.IMemberMapper;
import kibwa.campus.service.IMemberService;
import kibwa.campus.util.CmmUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service(value = "MemberService")
@RequiredArgsConstructor
public class MemberService implements IMemberService {

    @Autowired
    private IMemberMapper memberMapper;

    //-----------회원가입-----------------
    @Override
    public int InsertMember(MemberDTO pDTO) throws Exception {

        int res =0;

        if(pDTO == null){
            pDTO = new MemberDTO();
        }

        //-------이메일로 중복 확인하기
        MemberDTO rDTO = memberMapper.getMemberExists(pDTO);

        if (rDTO == null){
            rDTO = new MemberDTO();
        }

        if (CmmUtil.nvl(rDTO.getExists_yn()).equals("Y")){
            res = 2;
        }else {

            //------데이터베이스에 회원정보 insert
            int success = memberMapper.InsertMember(pDTO);

            if (success > 0) {
                res = 1;
            } else {
                res = 0;
            }
        }
        return res;
    }

    //---------로그인--------------------
    @Override
    public MemberDTO getMemLoginCheck(MemberDTO pDTO) throws Exception {
        if (pDTO == null){
            pDTO = new MemberDTO();
        }
        return memberMapper.getMemLoginCheck(pDTO);
    }
}

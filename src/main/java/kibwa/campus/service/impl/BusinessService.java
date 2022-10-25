package kibwa.campus.service.impl;

import kibwa.campus.dto.BusinessDTO;
import kibwa.campus.persistance.mapper.IBusinessMapper;
import kibwa.campus.service.IBusinessService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service(value = "BusinessService")
@RequiredArgsConstructor
public class BusinessService implements IBusinessService {

    @Autowired
    private IBusinessMapper businessMapper;

    //------------- 일반사용자에서 사업자 변경신청-----------------
    @Override
    public int InsertChangeRequest(BusinessDTO pDTO) throws Exception {

        int res = 0;

        if (pDTO == null){
            pDTO = new BusinessDTO();
        }

        int success = businessMapper.InsertChangeRequest(pDTO);

        if (success > 0){
            res = 1;
        }else{
            res = 0;
        }

        return res;


    }
}

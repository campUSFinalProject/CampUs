package kibwa.campus.service;

import kibwa.campus.dto.BusinessDTO;

public interface IBusinessService {

    int InsertChangeRequest(BusinessDTO pDTO) throws Exception;
}

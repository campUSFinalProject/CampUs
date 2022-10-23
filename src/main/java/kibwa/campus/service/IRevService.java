package kibwa.campus.service;

import kibwa.campus.dto.RevDTO;

import java.util.List;

public interface IRevService {


    List<RevDTO> getRevList() throws Exception;
}


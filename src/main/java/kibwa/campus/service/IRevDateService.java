package kibwa.campus.service;

import kibwa.campus.dto.RevDateDTO;

import java.util.List;

public interface IRevDateService {

    List<RevDateDTO> getRevDateList() throws Exception;

}

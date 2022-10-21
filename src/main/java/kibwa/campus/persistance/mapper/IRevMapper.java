package kibwa.campus.persistance.mapper;


import kibwa.campus.dto.RevDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IRevMapper {
    List<RevDTO> getRevList() throws Exception;

    //예약하기
    int InsertRev (RevDTO pDTO) throws Exception;

}
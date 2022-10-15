package kibwa.campus.persistance;

import kibwa.campus.dto.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IMemberMapper {

    int InsertMember(MemberDTO pDTO) throws Exception;
}

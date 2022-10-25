package kibwa.campus.mapper;

import kibwa.campus.model.Insert_CG_Image_Model;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface DBMapper {

    // [DBMapper.xml 쿼리에서 선언한 변수 개수 및 타입에 맞게 파라미터 선언]
    int saveImage(Insert_CG_Image_Model userImage);

    // [DBMapper.xml 쿼리에서 선언한 개수 및 타입에 맞게 파라미터 선언]
    Map<String, Object> selectImage(int idx); // 리턴값으로 map 사용
}

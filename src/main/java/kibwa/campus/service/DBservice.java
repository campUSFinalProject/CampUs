package kibwa.campus.service;

import kibwa.campus.mapper.DBMapper;
import kibwa.campus.model.Insert_CG_Image_Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class DBService {
    
    // [DBMapper 인터페이스 설정 : db 데이터 참조 [ DBMapper.xml]]
    @Autowired
    private DBMapper dbMapper;
    
    // [DBMapper 인터페이스 지정 >> DBApliController 리턴 값 지정]
    public int saveImage(Insert_CG_Image_Model userImage) {
        return dbMapper.saveImage(userImage); //컨트롤러에 리턴 실시
    }

    // [DBMapper 인터페이스 지정 >> DBAplicontroller 리턴 값 지정]
    public Map<String, Object> selectImage(int idx) {
        return dbMapper.selectImage(idx); //컨트롤러에 리턴 실시
    }
    
}

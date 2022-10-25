package kibwa.campus.controller;

import com.project.solutionpackage.model.*;
import com.project.solutionpackage.service.DBService;
import kibwa.campus.model.Insert_CG_Image_Model;
import lombok.extern.slf4j.Slf4j;
import org.apache.logging.log4j.util.Base64Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.*;

// [rest 방식 컨트롤러 / Controller = view 연결]
@RestController
public class DBApiController {

    /**
     * [클래스 설명]
     * 1. api 호출 경로 및 리턴 데이터 반환 실시
     * 2. 실제로 api 호출 (req) 및 반환 (res) 이루어지는 클래스
     * */


    // [service 설정 : 로직 연결 위함]
    // [로직 : 사용자 API 호출 >> 컨트롤러에서 서비스 호출 >> 서비스에서 DB Mapper 호출]
    @Autowired
    private DBService dbService;


    // [post body json : Map 방식]
    // [경로 지정 : http://localhost:7000/saveImage]
    // [body json 데이터 : {"idx":"1", "image":"data:image/png;base64,iVBORw ...."}]
    // [input : 서비스에서 설정한 파라미터 개수와 같아야합니다]
    // [output : 모델에서 설정한 return 타입으로 결과를 반환합니다]
    @PostMapping("/saveImage")
    public String saveImage(@RequestBody Map<String, String> param) {
        System.out.println("\n");
        System.out.println("=======================================");
        System.out.println("[DBApiController] : [saveImage]");
        System.out.println("[request keySet] : " + String.valueOf(param.keySet()));
        System.out.println("[request idx] : " + String.valueOf(param.get("idx")));
        System.out.println("[request idx] : " + String.valueOf(param.get("image")));
        System.out.println("=======================================");
        System.out.println("\n");

        // DATA URL 을 바이트로 변환 실시
        byte imageArray [] = null;
        final String BASE_64_PREFIX = "data:image/png;base64,";
        try {
            String base64Url = String.valueOf(param.get("image"));
            if (base64Url.startsWith(BASE_64_PREFIX)){
                imageArray =  Base64.getDecoder().decode(base64Url.substring(BASE_64_PREFIX.length()));
                System.out.println("\n");
                System.out.println("=======================================");
                System.out.println("[DBApiController] : [saveImage]");
                System.out.println("[imageArray] : " + new String(imageArray));
                System.out.println("=======================================");
                System.out.println("\n");
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }

        // 모델 객체에 idx 및 byte 지정 실시 [오라클 blob 컬럼은 byte 로 되어있다]
        Insert_CG_Image_Model userImage = new Insert_CG_Image_Model(param.get("idx"), imageArray);
        if (dbService.saveImage(userImage) > 0) {
            System.out.println("\n");
            System.out.println("=======================================");
            System.out.println("[DBApiController] : [saveImage]");
            System.out.println("[response] : " + new Return_DB_Json_Model("T", "Success"));
            System.out.println("=======================================");
            System.out.println("\n");
            JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("state", "T");
                jsonObject.put("message", "Success");
            } catch (JSONException e) {
                e.printSt ackTrace();
            }
            return jsonObject.toString(); //정상 삽입 완료 시 상태값 반환
        } else {
            System.out.println("\n");
            System.out.println("=======================================");
            System.out.println("[DBApiController] : [saveImage]");
            System.out.println("[response] : " + new Return_DB_Json_Model("F", "Failed"));
            System.out.println("=======================================");
            System.out.println("\n");
            JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("state", "F");
                jsonObject.put("message", "Fail");
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return jsonObject.toString(); //정상 삽입 완료 시 상태값 반환
        }
    }



    // [get : Map 방식]
    // [경로 지정 : http://localhost:7000/selectImage?idx=1]
    // [input : 서비스에서 설정한 파라미터 개수와 같아야합니다]
    // [output : data url return 타입으로 결과를 반환합니다]
    @GetMapping("/selectImage")
    public String selectImage(@RequestParam Map<String, String> param) {
        System.out.println("\n");
        System.out.println("=======================================");
        System.out.println("[DBApiController] : [selectImage]");
        System.out.println("[request keySet] : " + String.valueOf(param.keySet()));
        System.out.println("[request idx] : " + String.valueOf(param.get("idx")));
        System.out.println("=======================================");
        System.out.println("\n");

        //서비스 호출 및 리턴 받은 데이터 확인 실시
        int data = Integer.valueOf(param.get("idx"));
        Map<String, Object> result = dbService.selectImage(data);
        System.out.println("\n");
        System.out.println("=======================================");
        System.out.println("[DBApiController] : [selectImage]");
        System.out.println("[Map keySet] : " + String.valueOf(result.keySet()));
        System.out.println("[Map msg] : " + String.valueOf(result.get("T_BLOB")));
        System.out.println("=======================================");
        System.out.println("\n");

        //blob 데이터를 byte로 변환 실시 [필요시 base64 인코딩 >>  data url 생성 가능]
        byte arr[] = blobToBytes((Blob) result.get("T_BLOB"));
        System.out.println("\n");
        System.out.println("=======================================");
        System.out.println("[DBApiController] : [selectImage]");
        System.out.println("[blobToBytes] : " + Arrays.toString(arr));
        System.out.println("=======================================");
        System.out.println("\n");

        //data url 리턴 실시
        if(arr.length > 0 && arr != null){ //데이터가 들어 있는 경우
            //바이트를 base64인코딩 실시
            String base64Encode = byteToBase64(arr);
            base64Encode = "data:image/png;base64," + base64Encode;
            System.out.println("\n");
            System.out.println("=======================================");
            System.out.println("[DBApiController] : [selectImage]");
            System.out.println("[base64Encode] : " + base64Encode);
            System.out.println("=======================================");
            System.out.println("\n");
            return base64Encode;
        }
        else {
            return "";
        }
    }

    // [blob 데이터를 바이트로 변환해주는 메소드]
    private static byte[] blobToBytes(Blob blob) {
        BufferedInputStream is = null;
        byte[] bytes = null;
        try {
            is = new BufferedInputStream(blob.getBinaryStream());
            bytes = new byte[(int) blob.length()];
            int len = bytes.length;
            int offset = 0;
            int read = 0;

            while (offset < len
                    && (read = is.read(bytes, offset, len - offset)) >= 0) {
                offset += read;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return bytes;
    }

    // [byte를 base64로 인코딩 해주는 메소드]
    private static String byteToBase64(byte[] arr) {
        String result = "";
        try {
            result = Base64Utils.encodeToString(arr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

}

package kibwa.campus.model;

public class Insert_CG_Image_Model {

    // BLOB 저장 위한 변수 지정
    private String idx;
    private byte[] img; // BLOB는 BYTE로 저장

    public Insert_CG_Image_Model(String idx, byte[] img) {
        this.idx = idx;
        this.img = img;
    }
}
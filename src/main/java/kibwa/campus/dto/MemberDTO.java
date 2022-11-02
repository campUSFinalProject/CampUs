package kibwa.campus.dto;

import lombok.Data;

@Data
public class MemberDTO {

    private String mem_num;
    private String id;
    private String password;
    private String email;
    private String name;
    private String mem_tel;
    private int mem_grade;

    private String exists_yn;
}

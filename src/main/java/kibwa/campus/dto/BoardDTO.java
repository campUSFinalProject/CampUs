package kibwa.campus.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardDTO {
    private String rownum;
    private String board_num;
    private String board_title;
    private String board_content;
    private String board_post_date;
    private String board_type_num;
    private String mem_num;
    private String id;
    private String board_view_num;
    private String board_mod_date;
    private String notice_check;
}

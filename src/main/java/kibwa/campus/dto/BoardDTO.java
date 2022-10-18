package kibwa.campus.dto;

import lombok.Data;

@Data
public class BoardDTO {
    private Integer board_num;
    private String board_title;
    private String board_content;
    private String board_post_date;
    private Integer board_type_num;
    private Integer mem_num;
    private String board_view_num;
    private String board_mod_date;
    private Integer notice_check;
}

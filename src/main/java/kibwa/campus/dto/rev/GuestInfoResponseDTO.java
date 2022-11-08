package kibwa.campus.dto.rev;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class GuestInfoResponseDTO {
    private String rev_num;
    private String rev_date;
    private String rev_people;
    private String rev_review;
    private String enter_date;
    private String exit_date;
    private String help_check;
    private String mem_num;
    private String sector_num;
    private String name;
    private String mem_tel;
}

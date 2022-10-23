package kibwa.campus.dto;


import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;

@Slf4j
@Controller
@Getter
@Setter
public class RevDTO {

    private Integer rev_num;
    private Integer mem_num;
    private Integer rev_people;
    private Integer help_check;
    private Integer sector_num;
    private String  rev_date;
    private String  rev_review;
    private String  enter_date;
    private String  exit_date;
    private String  name;

}

package kibwa.campus.dto;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;

@Slf4j
@Controller
public class RevDTO {

    private Integer rev_num;
    private Integer rev_people;
    private Integer help_check;
    private String  rev_date;
    private String  rev_review;
    private String  enter_date;
    private String  exit_date;

}

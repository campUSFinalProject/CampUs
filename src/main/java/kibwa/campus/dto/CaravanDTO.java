package kibwa.campus.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class CaravanDTO {
    private String cground_info_num;
    private String city_name;
    private String location_city_num;
    private String cground_location;
    private String cground_name;
    private String cground_tel;
    private String cground_deposit;
    private String camping_enter;
    private String camping_exit;
    private String cground_detail_info;
    private String add_facil;
    private String rev_count;
    private String business_num;
    private List<String> sector_num;
}

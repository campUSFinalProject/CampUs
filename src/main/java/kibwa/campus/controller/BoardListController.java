package kibwa.campus.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

import static kibwa.campus.util.CmmUtil.nvl;

@Controller
public class BoardListController {

    @RequestMapping(value = "boardList")
    public String BoardList(HttpServletRequest request, ModelMap
            model) throws Exception {
        //String name = nvl(request.getParameter("name"));
        //model.addAttribute("name", name);
        return "/board/FreeBoard";
    }
}

//지니 수정
//민지가 오류나는거 수정함
//건우 push test
//여기는 민지 브랜치 체크아웃 햇어
//여기서 이렇게 뭔가 작업을 했지??
//그럼 커밋을 해야해!
// 커밋 버튼은 오른쪽 상단의 체크표시
//그럼 이렇게 수정된 내용이 보이지??
// commit -> commitanyway 누르면 됨
// 그리고 그 다음은 push를 눌러줘 push는 체크 오른쪽에 있는 초록색 화살표야!
//이러면 수정된 내용 반영돼 확인?? 확인~~
// 이제 main에 있는 내용 땡겨올건데
// 그 내꺼를 지금 main에 넣으면 안되가지고 main에 있는 내용을 내 브랜치로 가져올게
// 우선 merge는 merge를 당할 브랜치에서 시작해야해
// main의 내용을 내꺼로 옮겨올거잖아? 그러면 내 브랜치 즉 minjj의 브랜치에서 시작해야함
// 이거도 버튼으로 할 수 있는거 같긴 한데 난 터미널이 더 편해서 터미널에서 할게!
// git merge [병합할 브랜치 명] 이렇게 치면 병합이 되고
// 보이는 것과 같이 main의 내용이 내 브랜치로 병합이 돼!
//병합하고
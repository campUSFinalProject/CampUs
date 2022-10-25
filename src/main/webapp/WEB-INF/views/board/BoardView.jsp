<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ page import="kibwa.campus.dto.BoardDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<%
    BoardDTO boDTO = (BoardDTO) request.getAttribute("boDTO");

    if (boDTO == null) {
        boDTO = new BoardDTO();
    }

    int access = 1;
    if (CmmUtil.nvl((String) session.getAttribute("SS_NUM")).equals(
            CmmUtil.nvl(boDTO.getMem_num()))) {
        access = 2;
    }
    //String SS_ID = CmmUtil.nvl((String) session.getAttribute("SS_ID"));
    String SS_NUM = CmmUtil.nvl((String) session.getAttribute("SS_NUM"));

    System.out.println("boDTO : " + boDTO);
    System.out.println("board_num : " + boDTO.getBoard_num());
    System.out.println("SS_NUM : " + SS_NUM);
    System.out.println("access : " + access);
    System.out.println(boDTO.getMem_num());
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" ; charset="UTF-8">
    <title>게시판 내용</title>
</head>

<!--상단, 라이트바 위한 css-->
<link href="../css/FinalMain.css" rel="stylesheet" type="text/css"/>
<script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
      integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">

<!--게시판 css -->
<link href="../css/board/FreeBoard.css" rel="stylesheet" type="text/css"/>

<!-- JS파일로 독립시키기-->
<script type="text/javascript">
    function goToBoardList() {
        location.href = "/board/BoardList";
    }

    function doEdit(){
        if("<%=access%> == 2"){
            if(confirm("작성한 글을 수정하시겠습니까?")){
                location.href="/board/BoardEditForm?board_num=<%=CmmUtil.nvl(boDTO.getBoard_num())%>";
            }
        }else{
            alert("본인이 작성한 게시글만 수정할 수 있습니다.");
        }
    }

    //게시글 삭제 함수
    function doDelete(){
        if("<%=access%> == 2"){
            if(confirm("작성한 글을 삭제하시겠습니까?")){
                location.href="/board/BoardDelete?board_num=<%=CmmUtil.nvl(boDTO.getBoard_num())%>";
            }
        }else{
            alert("본인이 작성한 게시글만 삭제할 수 있습니다.");
        }
    }
</script>

<body>
<div class="wrap show">
    <div class="sub_top_wrap">
        <div class="sub_top">
            <a><i class="fas fa-phone-alt fa-lg"></i> 게시판 내용 보기</a>
        </div>
    </div>
    <div id="content" class="sub_wrap">
        <nav>
            <ul>
                <li>
                    <a href="/notice/NoticeList" class="active">게시판</a>
                </li>
                <li>
                    <a href="/PRJmain">HOME</a>
                </li>
            </ul>
        </nav>
        <div class="align_rt">
            <div class="notice">
                <!-- Tab -->
                <div class="tab">
              <span class="tab_btn">
                게시판 작성
              </span>
                </div>
                <!-- 공지사항  -->
                <div class="tab_each">
                    <div>
                        <span>제목</span>
                    </div>
                    <div>
                        <input type="text" name="title" maxlength="100" value="<%=CmmUtil.nvl(boDTO.getBoard_title()) %>"
                               readonly style="width: 450px"/>
                    </div>
                    <div>
                        <span>내용</span>
                    </div>
                    <div>
                           <textarea
                                   name="contents" style="width: 550px; height: 400px" readonly
                           ><%=CmmUtil.nvl(boDTO.getBoard_content()).replaceAll("\r\n", "<br/>") %></textarea>
                    </div>
                </div>
                <a href="javascript:doEdit();">[수정]</a>
                <a href="javascript:doDelete();">[삭제]</a>
            </div>
        </div>
    </div>
</div>

<!--메뉴바를 위한 JS-->
<script type="text/javascript" src="../js/FinalMain.js"></script>
</body>
</html>
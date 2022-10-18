<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ page import="kibwa.campus.dto.BoardDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<%
    List<BoardDTO> bList = (List<BoardDTO>) request.getAttribute("bList");

    //게시판 조회 결과 보여주기
    if (bList == null) {
        bList = new ArrayList<BoardDTO>();
    }

    //주석
    System.out.println("bList :" + bList);
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" ; charset="UTF-8">
    <title>자유게시판</title>
</head>
<link href="../css/board/FreeBoard.css" rel="stylesheet" type="text/css"/>
<body>
<div>
    <div class="title">
        <h3> 게시판 목록 </h3>
    </div>
    <div class="content">
        <table>
            <tr>
                <td> 글번호</td>
                <td> 제 목</td>
                <td> 작성자</td>
                <td> 작성일</td>
                <td> 조회수</td>
            </tr>

            <% if (bList.isEmpty()) { %>
            <tr>
                <td colspan="5"> 등록된 게시물이 없습니다.</td>
            </tr>
            <% } else {%>
            <%for (BoardDTO b : bList) {%>
            <tr>
                <td><%=b.getBoard_num()%>
                </td>
                <td><a><%=b.getBoard_title()%>
                </a></td>
                <td><a><%=b.getId()%>
                </a></td>
                <td><a><%=b.getBoard_post_date()%>
                </a></td>
                <td><a><%=b.getBoard_view_num()%>
                </a></td>
            </tr>
            <%}%>
            <%}%>
            <tr>
                <td colspan="5">
                    <a>글쓰기</a>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
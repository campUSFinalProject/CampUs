<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" ; charset="UTF-8">
    <title>자유게시판</title>
</head>
<link href="../css/board/FreeBoard.css" rel="stylesheet" type="text/css" />
<body>
<h3> 게시판 목록 </h3>
<table>
    <tr>
        <td> 글번호 </td>
        <td> 제 목  </td>
        <td> 작성자 </td>
        <td> 작성일 </td>
        <td> 조회수 </td>
    </tr>
    <tr><td colspan="5"> 등록된 게시물이 없습니다. </td></tr>
    <tr>
        <td colspan="5">
            <a>글쓰기</a>
        </td>
    </tr>
</table>
</body>
</html>
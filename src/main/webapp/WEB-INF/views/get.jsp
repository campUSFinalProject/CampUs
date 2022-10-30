<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<%
    String name = CmmUtil.nvl((String)request.getAttribute("name"));
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <title>Insert here</title>
    <style>
    </style>
</head>
<body>
    안녕하세요 <%=name %>페이지입니다.
</body>
</html>
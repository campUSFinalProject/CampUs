<%@page import="static kibwa.campus.util.CmmUtil.nvl" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    //String name = nvl((String)request.getAttribute("name"));
    String name = "민지";
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charet=UTF-8">
        <title>Insert title here</title>
        <style>
        </style>
    </head>
        <body>
        안녕하세요, <%=name %>님!
    </body>
</html>
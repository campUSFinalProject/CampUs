<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String name = CmmUtil.nvl((String)request.getAttribute("name"));
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>hi</title>
    <style></style>
</head>
<body>
안녕하오, <%=name %>님!
</body>
</html>
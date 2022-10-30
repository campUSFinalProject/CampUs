<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
    <link href="../css/testboard.css" rel="stylesheet" type="text/css" />
    <script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
</head>
<body>


<header> [ 게시판 수정 ] </header>

<form id="form" class="topBefore">

    <input id="name" type="text" placeholder="제목">
    <input id="email" type="text" placeholder="이메일">
    <textarea id="message" type="text" placeholder="내용"></textarea>
    <input id="submit" type="submit" value="수정하기">

</form>

</body>
</html>
<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%
    String SS_EMAIL = CmmUtil.nvl((String) session.getAttribute("SS_EMAIL"));
    String SS_MEM_TEL = CmmUtil.nvl((String) session.getAttribute("SS_MEM_TEL"));
%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>사업자 전환 신청</title>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
    <link href="../css/mypage.css" rel="stylesheet" type="text/css" />
    <script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
    <script src="https://kit.fontawesome.com/c49ea42a2f.js" crossorigin="anonymous"></script>
    <script type="text/javascript">

    </script>
</head>
<body>
<div class="container">
    <div id="logo"><h1 class="logo">CAMP US</h1>
        <button class="CTA" onclick="location.href='/cu/Main'">
            <h1>MAIN PAGE</h1>
        </button>
    </div>
    <div class="leftbox">
        <nav>
            <a id="profile" href="/cu/mypage"><i class="fa fa-user"></i></a> <!-- 마이페이지 -->
            <a id="payment"><i class="fa-solid fa-pen"></i></a> <!-- 회원정보수정 아이콘 -->
            <a id="subscription" class="active"><i class="fa-solid fa-user-plus"></i></a>   <!-- 사업자 전환 아이콘 -->
            <a id="privacy"><i class="fa-solid fa-key"></i></a> <!-- 비밀번호 변경 아이콘 -->
            <a id="settings"><i class="fa-solid fa-user-minus"></i></a> <!-- 회원탈퇴 아이콘 -->
        </nav>
    </div>
    <div class="rightbox">

        <div class="profile">

                <h1>사업자 전환 요청</h1>
                <form method="post" action="">
                    <h2>사업자 번호 (10자리 / - 포함)</h2>
                    <input type="text" placeholder="ex) 000-00-00000" name="business_num" id="business_num"/>
                    <h2>회사 명</h2>
                    <input type="text" placeholder="ex) CampUs" name="business_title" id="business_title"/>
                    <h2>이메일</h2>
                    <input type="text" value="<%=SS_EMAIL%>" name="business_email" id="business_email"/>
                    <h2>전화번호</h2>
                    <input type="text" value="<%=SS_MEM_TEL%>" name="business_tel" id="business_tel"/>
                    <button type="submit" class="btn2">사업자 변환 요청</button>
                </form>
        </div>

        <div class="payment noshow">
            <h1>Payment Info</h1>
            <h2>Payment Method</h2>
            <p>Mastercard •••• •••• •••• 0000 <button class="btn">update</button></p>
            <h2>Billing Address</h2>
            <p>1234 Example Ave | Seattle, WA <button class="btn">change</button></p>
            <h2>Zipcode</h2>
            <p>999000</p>
            <h2>Billing History</h2>
            <p>2018<button class="btn">view</button></p>
            <h2>Redeem Gift Subscription </h2>
            <p><input type="text" placeholder="Enter Gift Code"></input> <button class="btn">Redeem</button></p>
        </div>

        <div class="subscription noshow">
            <h1>Your Subscription</h1>
            <h2>Payment Date</h2>
            <p>05-15-2018 <button class="btn">pay now</button></p>
            <h2>Your Next Charge</h2>
            <p>$8.48<span> includes tax</span></p>
            <h2>Hulu Base Plan</h2>
            <p>Limited Commercials <button class="btn">change plan</button></p>
            <h2>Add-ons</h2>
            <p>None <button class="btn">manage</button></p>
            <h2>Monthly Recurring Total </h2>
            <p>$7.99/month</p>
        </div>

        <div class="privacy noshow">
            <h1>Privacy Settings</h1>
            <h2>Manage Email Notifications<button class="btn">manage</button></h2>
            <p></p>
            <h2>Manage Privacy Settings<button class="btn">manage</button></h2>
            <p></p>
            <h2>View Terms of Use <button class="btn">view</button></h2>
            <p></p>
            <h2>Personalize Ad Experience <button class="btn">update</button></h2>
            <p></p>
            <h2>Protect Your Account <button class="btn">protect</button></h2>
            <p></p>
        </div>
        <div class="settings noshow">
            <h1>Account Settings</h1>
            <h2>Sync Watchlist to My Stuff<button class="btn">sync</button></h2>
            <p></p>
            <h2>Hold Your Subscription<button class="btn">hold</button></h2>
            <p></p>
            <h2>Cancel Your Subscription <button class="btn">cancel</button></h2>
            <p></p>
            <h2>Your Devices <button class="btn">Manage Devices</button></h2>
            <p></p>
            <h2>Referrals <button class="btn">get $10</button></h2>
            <p></p>
        </div>

    </div>
</div>
<script type="text/javascript" src= "../js/mypage.js"></script>
</body>
</html>
<%@ page import="kibwa.campus.dto.OutfieldDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>노지 관리자 등록 페이지</title>
    <script type="text/javascript">
        function goToOutfield() {
            location.href = "/AdminOutfield";
        }
    </script>
</head>

<link href="../css/Admin_insert.css" rel="stylesheet" type="text/css" />

<body>

<div class="container">
    <h1>노지 관리자 등록 페이지</h1>

    <form name="frm" action="/Admin_insert">
        <br>
        <div>
            <p>
                <label>
                    지역 선택<br>
                    <select name="city_name">
                        <option value="" disabled selected>시군구</option>
                        <option value="고양시">고양시</option>
                        <option value="가평시">가평시</option>
                    </select>
                </label>
            </p>
            <p>
                <label>
                    주소<br>
                    <input type="text" name="location_specific" placeholder="상세주소 입력">
                </label>
            </p>
            <p>
                <label>
                    특이사항<br>
                    <textarea rows="5" cols="40" name="Outdoor_detail_info" placeholder="야영지 특이사항에 대해 적어주세요."></textarea>
                </label>
            </p>
        <br>
            <p>
                <label>
                    주변시설<br>
                    <textarea rows="5" cols="40" name="outdoor_detail_memo" placeholder="야영지 주변 시설에 대해 적어주세요."></textarea>
                </label>
            </p>
        <br>
            <p>
                <input type="file" name="file" id="file">
            </p>
            <p>
                <input type="submit" >
            </p>
            <p>
                <input type='reset' value='메인으로' onclick="javascript:goToOutfield()">
            </p>
        </div>
    </form>
</div>

<script type="text/javascript" src= "../js/Admin_insert.js"></script>
</body>
</html>
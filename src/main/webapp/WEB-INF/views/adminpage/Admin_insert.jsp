<%@ page import="kibwa.campus.dto.OutfieldDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    List<OutfieldDTO> oList = (List<OutfieldDTO>) request.getAttribute("oList");

    //노지 정보 조회 결과 보여주기
    if (oList == null){
        oList = new ArrayList<OutfieldDTO>();
    }

    //주석
    System.out.println("oList : " + oList);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>노지 관리자 페이지</title>
</head>

<link href="../css/Admin_insert.css" rel="stylesheet" type="text/css" />

<body>

<div class="container">
    <h1>노지 관리자 페이지</h1>

    <form name="frm" action="/Admin_insert">
        <br>
        <div>
            <p>
                <label>
                    지역 선택<br>
                    <select>
                        <option value="" name="location" selected>시군구</option>
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
                <input type="submit">
            </p>
            <p>
                <input type="reset">
            </p>
            <p>
                <input type="button" value="Button (input tag)">
            </p>
            <p>
                <button>Button (button tag)</button>
            </p>
        </div>
        <fieldset>
            <legend>Legend</legend>
            Fieldset
        </fieldset>
    </form>
</div>

<script type="text/javascript" src= "../js/Admin_insert.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사업자 페이지</title>
</head>

<link href="../css/business.css" rel="stylesheet" type="text/css" />

<body>

<div class="container">
    <h1>캠핑장 등록</h1>

    <form>
        <div>
            <p>
                <label>
                    지역 선택<br>
                    <select>
                        <option value="" name="location" disabled selected>시군구</option>
                        <option> 서울 </option>
                    </select>
                </label>

                <label>
                    캠핑장 이름<br>
                    <input type="text" name= "cground_name" placeholder="ㅇㅇ캠핑장" >
                </label>
            </p>

            <p>
                <label>
                    tel<br>
                    <input type="tel" name="cground_tel" placeholder="(123) 456-7890">
                </label>
            </p>

            <p>
                <label>
                    주소<br>
                    <input type="email" name="cground_loacation" placeholder="00도00군">
                </label>
            </p>

            <p>
                <label>
                    금액<br>
                    <input type="url" name="cground_deposit" placeholder="~원">
                </label>
            </p>

            <p>
                <label>
                    입실시간<br>
                    <input type="search" name="campinng_enter"  placeholder="00:00">
                </label>
            </p>

            <p>
                <label>
                    퇴실시간<br>
                    <input type="search" name="camping_exit"  placeholder="00:00">
                </label>
            </p>

            <p>
                <label>
                    특이사항<br>
                    <textarea rows="5" cols="40" name="cground_detail_info" placeholder="화장실 , 샤워실 , 매점 반려둥물동반 가능여부 등 .."></textarea>
                </label>
            </p>

            <p>
                <label>
                    주변시설<br>
                    <textarea rows="5" cols="40" name="add_facil" placeholder="주변 계곡 , 마트 등 .."></textarea>
                </label>
            </p>

            <p>
                <input type="file" name="file" id="file">
            </p>

            <p>
                <input type="submit">
            </p>

            <p>
                <input type="reset">
            </p>

        </div>

    </form>
</div>

<script type="text/javascript" src= "../js/Admin_in_up_de.js"></script>
</body>
</html>
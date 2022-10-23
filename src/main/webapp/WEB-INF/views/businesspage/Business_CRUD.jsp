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
                    캠핑장 이름<br>
                    <input type="text" placeholder="ㅇㅇ캠핑장" >
                </label>
            </p>

            <p>
                <label>
                    tel<br>
                    <input type="tel" placeholder="(123) 456-7890">
                </label>
            </p>

            <p>
                <label>
                    주소<br>
                    <input type="email" placeholder="00도00군">
                </label>
            </p>

            <p>
                <label>
                    금액<br>
                    <input type="url" placeholder="~원">
                </label>
            </p>

            <p>
                <label>
                    입실시간<br>
                    <input type="search"  placeholder="00:00">
                </label>
            </p>

            <p>
                <label>
                    퇴실시간<br>
                    <input type="search"  placeholder="00:00">
                </label>
            </p>

            <p>
                <label>
                    특이사항<br>
                    <textarea rows="5" cols="40" placeholder="화장실 , 샤워실 , 매점 반려둥물동반 가능여부 등 .."></textarea>
                </label>
            </p>

            <p>
                <label>
                    주변시설<br>
                    <textarea rows="5" cols="40" placeholder="주변 계곡 , 마트 등 .."></textarea>
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
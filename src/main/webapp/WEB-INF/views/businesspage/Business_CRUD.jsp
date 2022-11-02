<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사업자 페이지</title>
</head>

<link href="../css/business.css" rel="stylesheet" type="text/css" />

<!-- 제출 시 프레임 띄워주기 -->
<script type="text/javascript">
    function businessInsert(){
        document.frm.submit();
    }
</script>

<!-- 리스트로 이동 -->
<script type="text/javascript">
    function goTolist() {
        location.href = "/business_insert";
    }
</script>

<body>
<div class="container">
    <h1>캠핑장 등록</h1>

    <form name='frm' action="/businesscrud">
        <div>
            <p>
                <label>
                    지역 선택<br>
                    <select name="city_name">
                        <option value=""  disabled selected> 시군구 </option>
                        <option value="가평" > 가평 </option>
                        <option value="가평시" > 가평시 </option>
                        <option value="파주시" > 파주시 </option>
                        <option value="속초시" > 속초시 </option>
                        <option value="강릉시" > 강릉시 </option>
                        <option value="목포시" > 목포시 </option>
                        <option value="여수시" > 여수시 </option>
                        <option value="서구" > 서구 </option>
                        <option value="중구" > 중구 </option>
                        <option value="천안시" > 천안시 </option>
                        <option value="아산시" > 아산시 </option>
                        <option value="논산시" > 논산시 </option>
                        <option value="청주시" > 청주시 </option>
                        <option value="충주시" > 충주시 </option>

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
                    <input type="text" name="cground_loacation" placeholder="00도00군">
                </label>
            </p>

            <p>
                <label>
                    금액<br>
                    <input type="text" name="cground_deposit" placeholder="~원">
                </label>
            </p>

            <p>
                <label>
                    입실시간<br>
                    <input type="text" name="camping_enter"  placeholder="00:00">
                </label>
            </p>

            <p>
                <label>
                    퇴실시간<br>
                    <input type="text" name="camping_exit"  placeholder="00:00">
                </label>
            </p>

            <p>
                <label>
                    특이사항<br>
                    <textarea rows="5" cols="40" name="cground_detail_info" placeholder="화장실 , 샤워실 , 매점 , 반려동물동반 가능여부 등 .."></textarea>
                </label>
            </p>

            <p>
                <label>
                    주변시설<br>
                    <textarea rows="5" cols="40" name="add_facil" placeholder="주변 계곡 , 마트 등 .."></textarea>
                </label>
            </p>

            <p>
                <input type="submit" onclick="javascript:businessInsert()">
            </p>

            <p>
                <input type="reset">
            </p>

            <p>
                <input type="reset" value='목록으로' onclick="javascript:goTolist()">
            </p>

        </div>

    </form>
</div>

<script type="text/javascript" src= "../js/Admin_in_up_de.js"></script>
</body>
</html>
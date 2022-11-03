<%@ page import="kibwa.campus.dto.CaravanDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    CaravanDTO coDTO = (CaravanDTO) request.getAttribute("coDTO");
    System.out.println("coDTO : " + coDTO);
    System.out.println("location : " + coDTO.getCground_location());
    System.out.println("bo.mem_num : " + coDTO.getCground_info_num());
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>카라반 수정 페이지</title>
</head>

<link href="../css/business.css" rel="stylesheet" type="text/css" />



<!-- 리스트로 이동 -->
<script type="text/javascript">
    function goTolist() {
        location.href = "/business/myCaravan";
    }

    function update(){
        location.href = "/caravan/CaravanUpdate"
    }

</script>

<body>
<div class="container">
    <h1>캠핑장 수정 (지역 다시 선택)</h1>

    <form method="post" action="/caravan/CaravanUpdate">
        <input type="hidden" name="cground_info_num" value="<%=coDTO.getCground_info_num()%>">
        <div>
            <p>
                <label>
                    지역 선택<br>
                    <select name="city_name">
                        <option value="<%=coDTO.getCity_name()%>" > <%=coDTO.getCity_name()%> </option>
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
                    <input type="text" name= "cground_name" value="<%=coDTO.getCground_name()%>">
                </label>
            </p>

            <p>
                <label>
                    tel<br>
                    <input type="tel" name="cground_tel" value="<%=coDTO.getCground_tel()%>">
                </label>
            </p>

            <p>
                <label>
                    주소<br>
                    <input type="text" name="cground_loacation" value="<%=coDTO.getCground_location()%>">
                </label>
            </p>

            <p>
                <label>
                    금액<br>
                    <input type="text" name="cground_deposit" value="<%=coDTO.getCground_deposit()%>">
                </label>
            </p>

            <p>
                <label>
                    입실시간<br>
                    <input type="text" name="camping_enter" value="<%=coDTO.getCamping_enter()%>" >
                </label>
            </p>

            <p>
                <label>
                    퇴실시간<br>
                    <input type="text" name="camping_exit" value="<%=coDTO.getCamping_exit()%>">
                </label>
            </p>

            <p>
                <label>
                    특이사항<br>
                    <textarea rows="5" cols="40" name="cground_detail_info" ><%=coDTO.getCground_detail_info()%></textarea>
                </label>
            </p>

            <p>
                <label>
                    주변시설<br>
                    <textarea rows="5" cols="40" name="add_facil" ><%=coDTO.getAdd_facil()%></textarea>
                </label>
            </p>

            <p>
                <input type="submit" value="수정">
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
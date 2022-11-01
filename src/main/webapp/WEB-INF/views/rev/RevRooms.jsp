<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kibwa.campus.dto.rev.CampingInfoResponseDTO" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>응애나애기붐킨쨩</title>
</head>
<body>
<section id="section-main" class="section-reservation">
    <div class="w800">
        <div id="status-track">
            <a class="complete" href="#">
                <i class="fa fa-check-circle-o"></i>
                <div class="lbl">Dates</div>
                <div class="sub">DEC 12 - DEC 13</div>
            </a>
            <a class="current" href="#"><i class="fa fa-th-list"> </i>
                <div class="lbl">Rooms</div>
            </a>
            <a class="future" href="#"><i class="fa fa-users"></i>
                <div class="lbl">Payment</div>
            </a>
            <a class="future" href="#"><i class="fa fa-users"></i>
                <div class="lbl">Guest Info</div>
            </a>
        </div>

        <%
            System.out.println(((CampingInfoResponseDTO)request.getAttribute("campInfo")));
        %>

        <form action="${pageContext.request.contextPath}/rev/rooms" method="post">
            <%-- 캠핑장 정보들을 숨겨서 서버로 보낼것 --%>
            <input type="hidden" name="sector_num" value="${campInfo.sector_num}">
            <input type="hidden" name="cground_info_num" value="${campInfo.cground_info_num}">
            <input type="hidden" name="cground_name" value="${campInfo.cground_name}">
            <input type="hidden" name="cground_location" value="${campInfo.cground_location}">
            <input type="hidden" name="cground_tel" value="${campInfo.cground_tel}">
            <input type="hidden" name="cground_deposit" value="${campInfo.cground_deposit}">
            <input type="hidden" name="cground_enter" value="${campInfo.cground_enter}">
            <input type="hidden" name="cground_exit" value="${campInfo.cground_exit}">
            <input type="hidden" name="cground_detail_info" value="${campInfo.cground_detail_info}">
            <input type="hidden" name="add_facil" value="${campInfo.add_facil}">
            <input type="hidden" name="rev_count" value="${campInfo.rev_count}">
            <input type="hidden" name="location_city_num" value="${campInfo.location_city_num}">
            <input type="hidden" name="camping_type_num" value="${campInfo.camping_type_num}">
            <input type="hidden" name="camping_type_name" value="${campInfo.camping_type_name}">
            <input type="hidden" name="mem_num" value="${campInfo.mem_num}">

            <div class="split field">
                <div>
                    <label for="numadults">Adults</label>
                    <input type="number" id="numadults" />
                </div>
                <div>
                    <label for="numchildren">Children</label>
                    <input type="number" id="numchildren" />
                </div>

            </div>
            <label>Filter By Room Type</label>
            <ul id="room-types-container">
                <li class="rc is-selected" data-filter="*">
                    All
                </li>
                <li class="rc" data-filter=".rt1">
                    NQ1
                </li>
                <li class="rc" data-filter=".rt2">
                    NK1
                </li>
                <li class="rc" data-filter=".rt3">
                    Q1
                </li>
                <li class="rc" data-filter=".rt4">
                    K1
                </li>
            </ul>

            <label>Room Number</label>
            <ul id="rooms-container">
                <li class="rc rt1">
                    <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="101" />
                    <div class="rn">101</div>
                    <div class="rp">$125.00</div>
                </li>
                <li class="rc rt1">
                    <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="102" />
                    <div class="rn">102</div>
                    <div class="rp">$125.00</div>
                </li>
                <li class="rc rt1">
                    <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="103" />
                    <div class="rn">103</div>
                    <div class="rp">$125.00</div>
                </li>
                <li class="rc rt2">
                    <input type="radio" name="reservation[room_id]" data-room-price="145" class="hide" value="104" />
                    <div class="rn">104</div>
                    <div class="rp">$145.00</div>
                </li>
                <li class="rc rt3">
                    <input type="radio" name="reservation[room_id]" data-room-price="175" class="hide" value="105" />
                    <div class="rn">105</div>
                    <div class="rp">$175.00</div>
                </li>
                <li class="rc rt2">
                    <input type="radio" name="reservation[room_id]" data-room-price="145" class="hide" value="106" />
                    <div class="rn">106</div>
                    <div class="rp">$145.00</div>
                </li>
                <li class="rc rt1">
                    <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="107" />
                    <div class="rn">107</div>
                    <div class="rp">$125.00</div>
                </li>
                <li class="rc rt4">
                    <input type="radio" name="reservation[room_id]" data-room-price="195" class="hide" value="108" />
                    <div class="rn">108</div>
                    <div class="rp">$195.00</div>
                </li>
                <li class="rc rt4">
                    <input type="radio" name="reservation[room_id]" data-room-price="195" class="hide" value="109" />
                    <div class="rn">109</div>
                    <div class="rp">$195.00</div>
                </li>
                <li class="rc rt3">
                    <input type="radio" name="reservation[room_id]" data-room-price="165" class="hide" value="110" />
                    <div class="rn">110</div>
                    <div class="rp">$165.00</div>
                </li>
            </ul>

            <label>Price</label>
            <div class="display-price">
                <div class="dp-row">
                    <div class="col1"><b>ROOM</b></div>
                    <div class="col2">
                        <input type="text" id="reservation_rate" />
                    </div>
                </div>
                <div class="dp-row">
                    <div class="col1">TAX (10%)</div>
                    <div class="col2">
                        <input type="text" id="reservation_tax" />
                    </div>
                </div>
                <div class="dp-row">
                    <div class="col1"><b>TOTAL</b></div>
                    <div class="col2">
                        <input type="text" id="reservation_total" />
                    </div>
                </div>
            </div>

            <div class="spacer"></div>
            <div class="actions">
                <div><a href="">Cancel</a></div>
                <div><a class="btn btn-aqua" href="#"><i class="fa fa-angle-left fa"></i> Back</a><span class="btn btn-aqua spacer-v" onclick="">Continue <i class="fa fa-angle-right fa"></i></span></div>
                <i class="fa fa-angle-left fa"></i>
                <input type="submit" class="btn btn-aqua" value="Back" />
                <input type="submit" class="btn btn-aqua spacer-v" value="Continue"/>
                <i class="fa fa-angle-right fa"></i>
            </div>
        </form>
    </div>
</section>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kibwa.campus.dto.rev.CampingInfoResponseDTO" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 예약 페이지 </title>
</head>


<!-- CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link href="../../../resources/static/css/FinalMain.css" rel="stylesheet" type="text/css" />
<link href="../../../resources/static/css/RevRooms.css" rel="stylesheet" type="text/css" />
<script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



<!-- 폰트어썸 불러오기 -->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">


<body>

<!-- 우측 메뉴바 -->
<div class="bring">
    <div class="why cell-right">
        <div class="quickH">
            <!--민지 : 게시판으로 이동-->
            <a href="/board/BoardList">
                <h1>게시판</h1>
                <p>정보 공유 및 <br>소통 가능한 게시판</p>
            </a>
        </div>
        <div class="grand">
            <ul class="quickC">
                <li><a href="https://www.busanparadisehotel.co.kr/front/hotel/room/list">
                    <em class="icon1"><i></i></em>
                    <p><span>MainBoard</span><span>전체게시판</span></p></a></li>
                <li><a href="https://www.busanparadisehotel.co.kr/front/facility/launge?">
                    <em class="icon2"><i></i></em>
                    <p><span>ALL DAY</span><span>정보게시판</span></p></a></li>
                <li><a href="https://www.busanparadisehotel.co.kr/front/facility/spaparacimer?">
                    <em class="icon3"><i></i></em><p><span>TipBoard</span><span>꿀팁게시판</span></p></a></li>
                <li><a href="https://www.busanparadisehotel.co.kr/front/facility/spaparapool?">
                    <em class="icon4"><i></i></em>
                    <p><span>OUTDOOR OCEAN SPA</span><span>사업자등록 게시판</span></p></a></li>
                <li><a href="https://www.busanparadisehotel.co.kr/front/facility/dinebuffet?">
                    <em class="icon5"><i></i></em>
                    <p><span>BUFFET</span><span>ON THE PLATE</span></p></a></li>
                <li><a href="https://www.busanparadisehotel.co.kr/front/facility/kidsList?">
                    <em class="icon6"><i></i></em>
                    <p><span>PARADISE</span><span>KIDS VILLAGE</span></p></a></li>
            </ul>
        </div>
    </div>
</div>

<!-- 우측 메뉴바 끝 -->

<!-- 상단 메뉴바 -->
<div class="top-bar con-min-width row">
    <div class="ride">
        <a href="#" class="logo cell block img-box">
            <img src="../../../resources/static/img/CampUslogo.png" alt="">
        </a>
        <nav class="menu-box-2 cell">
            <ul class="row">
                <li class="cell">
                    <a href="#" class="block">CAMPING</a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="#">캠핑장 1</a>
                                    </li>
                                    <li class="cell">
                                        <a href="#">캠핑장 2</a>
                                    </li>
                                    <li class="cell">
                                        <a href="#">캠핑장 3</a>
                                    </li>
                                    <li class="cell">
                                        <a href="#">캠핑장 4</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="cell">
                    <a href="#" class="block">GLAMPING</a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="#">2인전용</a>
                                        <ul class="row">
                                            <li class="cell"><a href="#" class="block">스탠다드</a></li>
                                            <li class="cell"><a href="#" class="block">슈페리어 룸</a></li>
                                            <li class="cell"><a href="#" class="block">디럭스 룸</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">4인전용</a>
                                        <ul class="row">
                                            <li class="cell"><a href="#" class="block">디럭스 룸</a></li>
                                            <li class="cell"><a href="#" class="block">주니어 스위트 룸</a></li>
                                            <li class="cell"><a href="#" class="block">디럭스 스위트 룸</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="cell">
                    <a href="#" class="block"></a>
                </li>
            </ul>
        </nav>
    </div>
</div>

<!-- 상단 메뉴바 끝 -->

<!-- 예약 -->
<div class="container" style="margin-top: 25%">
    <section id="section-main" class="section-reservation">
        <div class="">
                <div id="status-track">
                    <a class="current" href="#"><i class="fa fa-th-list"> </i>
                        <div class="lbl"> 날짜 </div>
                    </a>
                    <a class="future" href="#"><i class="fa fa-users"></i>
                        <div class="lbl"> 결제 </div>
                    </a>
                    <a class="future" href="#"><i class="fa fa-users"></i>
                        <div class="lbl"> 예약자 정보 </div>
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
                </form>

                <br/>
                <br/>

                <div class="revrev">
                    <div class="split field">
                        <br/>
                        <div class="equal">
                            <label><b> 체크인 </b></label>
                            <input type="date"/>
                        </div>
                        <br/>
                        <br/>
                        <div class="equal">
                            <label><b> 체크아웃 </b></label>
                            <input type="date"/>
                        </div>
                    </div>

                    <div class="display-price">
                        <div class="dp-row">
                            <div class="col1"><b> 구역 </b></div>
                            <div class="col2">
                                <input type="text" id="reservation_rate" />
                            </div>
                        </div>
                        <div class="dp-row">
                            <div class="col1"><b> 인원 </b></div>
                            <div class="col2">
                                <input type="text" id="reservation_tax"/>
                            </div>
                        </div>
                        <div class="dp-row">
                            <div class="col1"><b> 총계 </b></div>
                            <div class="col2">
                                <input type="text" id="reservation_total" />
                            </div>
                        </div>
                    </div>
                </div>
                </form>
        </div>
    </section>
</div>

<br/>
<br/>
<br/>

<div class="dp-row" style="margin-left: 63.5%">
    <form action="${pageContext.request.contextPath}/rev/payment" method="post">
        <input type"submit"/>
    </form>
</div>


<!-- 자바 스크립트 -->
<script type="text/javascript" src= "../../../resources/static/js/FinalMain.js"></script>





</body>
</html>

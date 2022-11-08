<%@ page import="kibwa.campus.dto.rev.RevDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%
    List<RevDTO> rList = (List<RevDTO>) request.getAttribute("rList");
    // 예약 정보 불러오기
    if (rList == null){
        rList = new ArrayList<RevDTO>();
    }
    // 주석
    System.out.println("rList : " + rList);
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>예약</title>
</head>

<link href="../../../resources/css/FinalMain.css" rel="stylesheet" type="text/css" />
<link href="../../../resources/css/RevDate.css" rel="stylesheet" type="text/css" />
<link href="../../../resources/css/RevRooms.css" rel="stylesheet" type="text/css" />
<link href="../../../resources/css/RevPayments.css" rel="stylesheet" type="text/css" />
<link href="../../../resources/css/RevGuestinfo.css" rel="stylesheet" type="text/css" />

<script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">

<body>

<!-- 우측 메뉴바 -->
<body>
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

<!-- 예약 날짜 -->
<section id="section-main" class="section-reservation" style="margin-top: 20%">
    <div class="w800">
        <div id="status-track">
            <a class="complete" href="#"><i class="fa fa-check-circle-o"></i>
                <div class="lbl"> 날짜 </div> </br>
            </a>

            <a class="complete" href="#"><i class="fa fa-credit-card"></i>
                <div class="lbl"> 결제 </div>
            </a>

            <a class="current" href="#"><i class="fa fa-users"></i>
                <div class="lbl"> 예약자 정보 </div>
            </a>
        </div>

        <table class="guests-list" style="margin-left: 30%">
            <thead>
            <tr>
                <th>고객 명</th> <th>예약 확인</th>
            </tr>
            </thead>
            <tbody>


            <tr class="guest-item">
                <%for (RevDTO r : rList){%>

                <td class="guest-details-c">
                    <div class="name">
                        <%=r.getName()%>
                    </div>
                    <div class="guest-details">
                        <div class="phone">
                            <%=r.getMem_Tel()%>
                        </div>
                    </div>
                    <div class="guest-details">
                        <div class="email">
                            <%=r.getEmail()%>
                        </div>
                    </div>
                </td>
                <%}%>
                <td>
                    <div class="guest-actions">
                        <div><button type="button" onclick="location.href='RevConf.jsp' ">예약 확정</button></div>
                        <div><button type="button" onclick="location.href='RevConf.jsp' ">예약 취소</button></div>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
        <div class="spacer"></div>
    </div>
</section>

<!-- 예약 날짜 끝 -->

<script type="text/javascript" src= "../js/FinalMain.js"></script>
<script type="text/javascript" src= "../js/RevDate.js"></script>
<script type="text/javascript" src= "../js/RevRooms.js"></script>
<script type="text/javascript" src= "../js/RevPayments.js"></script>
<script type="text/javascript" src= "../js/RevGuestinfo.js"></script>

</body>
</html>
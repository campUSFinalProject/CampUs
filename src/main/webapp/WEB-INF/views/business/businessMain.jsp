<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<%
    String SS_business_ID = CmmUtil.nvl((String) session.getAttribute("SS_business_ID"));
    String SS_business_PASSWORD = CmmUtil.nvl((String) session.getAttribute("SS_business_PASSWORD"));

    System.out.println("SS_business_PASSWORD : " + SS_business_PASSWORD);

%>

<%
    int id = 0;

    //Session을 받을때는 값이 null로 올때를 생각해서 조건문을 사용한다.
    if (session.getAttribute("SS_business_ID") != null) {
        //세션의 값을 가져오기
        id = 1;
    }
%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<link href="../css/FinalMain.css" rel="stylesheet" type="text/css" />
<script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">


<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">



<body>

<div class="bring">
    <div class="why cell-right">
        <div class="quickH">

            <a href="/front/게시판">

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







<div class="top-bar con-min-width row">
    <div class="ride">
        <a href="#" class="logo cell block img-box">
            <img src="../img/camplogg.png" alt="">
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
                                    <li class="cell">
                                        <a href="#">Sweet</a>
                                        <ul class="row">
                                            <li class="cell"><a href="#" class="block">주니어 스위트 룸</a></li>
                                            <li class="cell"><a href="#" class="block">로얄 스위트 룸</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">Executive Tower</a>
                                        <ul class="row">
                                            <li class="cell"><a href="#" class="block">스탠다드(Room only)</a></li>
                                            <li class="cell"><a href="#" class="block">그랜드 디럭스 룸</a></li>
                                            <li class="cell"><a href="#" class="block">그랜드 디럭스 패밀리 트윈 룸</a></li>
                                            <li class="cell"><a href="#" class="block">프리미어 룸</a></li>
                                            <li class="cell"><a href="#" class="block">프리미어 패밀리 트윈 룸</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">이그제큐티브(Le Salon access)</a>
                                        <ul class="row">
                                            <li class="cell"><a href="#" class="block">이그제큐티브 그랜드 디럭스 룸</a></li>
                                            <li class="cell"><a href="#" class="block">이그제큐티브 프리미어 룸</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">스위트(Le Salon access)</a>
                                        <ul class="row">
                                            <li class="cell"><a href="#" class="block">주니어 스위트 룸</a></li>
                                            <li class="cell"><a href="#" class="block">디럭스 스위트 룸</a></li>
                                            <li class="cell"><a href="#" class="block">프리미어 스위트 룸</a></li>
                                            <li class="cell"><a href="#" class="block">샤롯데 스위트 룸</a></li>
                                            <li class="cell"><a href="#" class="block">프렌지덴셜 스위트 룸</a></li>
                                            <li class="cell"><a href="#" class="block">로얄 스위트 룸</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="cell">
                    <a href="#" class="block">CARAVAN</a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="#">호텔 패키지</a>
                                    </li>
                                    <li class="cell">
                                        <a href="#">호텔 이벤트</a>
                                    </li>
                                    <li class="cell">
                                        <a href="#">파트너 십</a>
                                        <ul class="row f-1">
                                            <li class="cell"><a href="#" class="block">항공사 마일리지</a></li>
                                            <li class="cell"><a href="#" class="block">L.POINT</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">해온 베딩 시스템</a>
                                    </li>
                                    <li class="cell">
                                        <a href="#">룸 프로모션</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="cell">
                    <a href="#" class="block">CARSLEEP & OUTFIELD</a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="#">레스토랑</a>
                                        <ul class="row f-2">
                                            <li class="cell"><a href="#" class="block">피에르 가니에르 서울</a></li>
                                            <li class="cell"><a href="#" class="block">무궁화</a></li>
                                            <li class="cell"><a href="#" class="block">모모야마</a></li>
                                            <li class="cell"><a href="#" class="block">도림</a></li>
                                            <li class="cell"><a href="#" class="block">라세느</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">바 &amp; 라운지</a>
                                        <ul class="row f-2">
                                            <li class="cell"><a href="#" class="block">피에르 바</a></li>
                                            <li class="cell"><a href="#" class="block">페닌슐라 라운지&amp;바</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">베이커리</a>
                                        <ul class="row f-2">
                                            <li class="cell"><a href="#" class="block">델리카 한스</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="cell">
                    <a href="#" class="block">AUXILIARY FACILITIES</a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="#">스파&amp;피트니스</a>
                                        <ul class="row f-3">
                                            <li class="cell"><a href="#" class="block">호텔 헬스장</a></li>
                                            <li class="cell"><a href="#" class="block">호텔 사우나</a></li>
                                            <li class="cell"><a href="#" class="block">설화수 스파</a></li>
                                            <li class="cell"><a href="#" class="block">호텔 수영장</a></li>
                                            <li class="cell"><a href="#" class="block">골프 연습장</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">비즈니스</a>
                                        <ul class="row f-3">
                                            <li class="cell"><a href="#" class="block">비즈니스 센터</a></li>
                                            <li class="cell"><a href="#" class="block">이그제큐티브타워-컨퍼스 룸</a></li>
                                            <li class="cell"><a href="#" class="block">메인타워-컨퍼스 룸</a></li>
                                            <li class="cell"><a href="#" class="block">도림</a></li>
                                            <li class="cell"><a href="#" class="block">라세느</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">문화</a>
                                        <ul class="row f-3">
                                            <li class="cell"><a href="#" class="block">호텔 박물관</a></li>
                                            <li class="cell"><a href="#" class="block">롯데호텔 갤러리</a></li>
                                            <li class="cell"><a href="#" class="block">쇼핑 아케이드</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">서비스</a>
                                        <ul class="row f-3">
                                            <li class="cell"><a href="#" class="block">르 살롱</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="cell">
                    <a href="#" class="block"> </a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="#">웨딩홀</a>
                                        <ul class="row f-4">
                                            <li class="cell"><a href="#" class="block">크리스탈볼룸</a></li>
                                            <li class="cell"><a href="#" class="block">사파이어볼룸</a></li>
                                            <li class="cell"><a href="#" class="block">벨뷰스위트</a></li>
                                            <li class="cell"><a href="#" class="block">아테네가든</a></li>
                                            <li class="cell"><a href="#" class="block">에메랄드룸</a></li>
                                            <li class="cell"><a href="#" class="block">기타 부대시설</a></li>
                                            <li class="cell"><a href="#" class="block">웨딩 컨셉</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">웨딩프로모션</a>
                                    </li>
                                    <li class="cell">
                                        <a href="#">웨딩문의</a>
                                        <ul class="row f-4">
                                            <li class="cell"><a href="#" class="block">컨설팅</a></li>
                                            <li class="cell"><a href="#" class="block">FAQ</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">호텔 컨벤션</a>
                                        <ul class="row f-4">
                                            <li class="cell"><a href="#" class="block">크리스탈볼룸</a></li>
                                            <li class="cell"><a href="#" class="block">사파이어볼룸</a></li>
                                            <li class="cell"><a href="#" class="block">에메랄드 룸</a></li>
                                            <li class="cell"><a href="#" class="block">벨뷰 스위트</a></li>
                                            <li class="cell"><a href="#" class="block">가넷스위트</a></li>
                                            <li class="cell"><a href="#" class="block">아스토 스위트</a></li>
                                            <li class="cell"><a href="#" class="block">샤롯데 스위트</a></li>
                                            <li class="cell"><a href="#" class="block">피콕 스위트</a></li>
                                            <li class="cell"><a href="#" class="block">버클리 스위트</a></li>
                                            <li class="cell"><a href="#" class="block">파인 룸</a></li>
                                            <li class="cell"><a href="#" class="block">아테네 가든</a></li>
                                            <li class="cell"><a href="#" class="block">토파즈 룸</a></li>
                                            <li class="cell"><a href="#" class="block">칼튼 스위트</a></li>
                                            <li class="cell"><a href="#" class="block">제이드 룸</a></li>
                                            <li class="cell"><a href="#" class="block">컨벤션 문의</a></li>
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

    <!--로그인 전 화면  -->

    <div class="cell-right row">
        <%if (id == 0) {%>
        <ul>
            <div class="cell"><a href="/member/memRegLoginForm" class="">로그인/회원가입</a>
            </div>
            <div class="cell block"><a href="">예약확인/취소</a>
            </div>
            <div class="cell block"><a href="#">ABOUT US</a>
            </div>
            <div class="cell block"><a href="#">CAMP US</a>
            </div>
            <div class="cell block"><a href="#">asdasd</a>
            </div>
            <div class="cell block"><a href="#"></a>
            </div>
        </ul>


        <!--로그인 후 화면  -->

        <%} else if (id > 0) {%>
        <ul>
            <div class="cell"><a href="/cu/businessMypage" class="">내정보</a>
            </div>
            <div class="cell block"><a href="/cu/Logout">로그아웃</a>
            </div>
            <div class="cell block"><a href="">내 업장 관리</a>
            </div>
            <div class="cell block"><a href="#">내 업장 예약현황</a>
            </div>
            <div class="cell block"><a href="/member/memRegLoginForm">asdasd</a>
            </div>
            <div class="cell block"><a href="#"></a>            </div>

        </ul>
        <%};%>
    </div>
</div>




<%--<div class="cell-right row">
    <div class="cell"><a href="#" class=""></a>
    </div>
    <div class="cell block"><a href="#">MEMBERSHIP</a>
    </div>
    <div class="cell block"><a href="#"></a>
    </div>
    <div class="cell block"><a href="#">ABOUT US</a>
    </div>
    <div class="cell block"><a href="/member/memRegLoginForm">로그인/회원가입</a>
    </div>

    <div class="cell block"><a href="#">예약확인/취소</a>
   </div>
   <div class="cell block"><a href="#">KR <i class="fas fa-caret-down"></i></a>
        <ul>
            <li><a href="#">KR</a></li>
            <li><a href="#">EN</a></li>
            <li><a href="#">JP</a></li>
            <li><a href="#">CN</a></li>
        </ul>
   </div>
</div>
</div>


</div>--%>


<!--메인 페이지-->



<div class="box-1">
    <ul class="row">
        <li class="cell">
            <div class="content-box">
                <h1 class="up-100px-on-active dff a6" style="background-image:url(../img/camp1.jpg);">
                    <p class="cell">CAMPING</p>
                    <p class="cell df">밤하늘에 수놓인 별들을<br>눈으로 경험해보세요.</p>
                </h1>
                <div class="box-2 bg">
                    <ul>
                        <li class="text-view"><a href="#" class="block">
                            <h2>숲이 바로 보이는 민지 캠핑장</h2>
                            <p class="text">오션테라스 객실에는 발코니가 구비되어 있어 <br>바다를 보다 가까이서 느낄 수 있습니다.</p>
                        </a></li>
                        <li class="text-view"><a href="#" class="block">
                            <h2>조용하고 휴가철 편한하게 쉴수있는 캠핑장</h2>
                            <p class="text">탁 트인 하늘과 바다의 화려한 <br>경관을 자랑하는 오션스파</p>
                        </a></li>
                        <li class="text-view"><a href="#" class="block">
                            <h2>OUTDOOR OCEAN SPA POOL</h2>
                            <p class="text">낮과 밤의 각기 다른 매력을 <br>가진 하늘 위의 작은 바다</p>
                        </a></li>
                        <li class="text-view"><a href="#" class="block">
                            <h2>LOUNGE SERVICE</h2>
                            <p class="text">최고의 미를 자랑하는 롯데 <br>호텔의 최고급 라운지 서비스</p>
                        </a></li>

                    </ul>
                </div>
            </div>
            <div class="bg-box" style="background-image:url(../img/camp1.jpg);"></div>

        </li>
        <li class="cell">
            <div class="content-box">
                <h1 class="dgg dff" style="background-image:url(../img/glamping.jpg);">
                    <p class="cell">GLAMING</p>
                    <p class="cell df">품격있는 시그니처 시설과 <br>색다른 즐거움을 만나보세요.</p>
                </h1>
                <div class="box-2 bg-1">
                    <ul>
                        <li><a href="#" class="block">
                            <h2>PARADISE KIDS VILLAGE</h2>
                            <p class="text">약 400평 규모의 초대형 실내 <br>키즈 테마 체험 월드 </p>
                        </a></li>
                        <li><a href="#" class="block">
                            <h2>LEO ACTIVITY</h2>
                            <p class="text">최고의 레저 엔터테인먼트 전문가와 <br>함께하는 체험 프로그램 </p>
                        </a></li>
                        <li><a href="#" class="block">
                            <h2>HAEUNDAE GUIDE</h2>
                            <p class="text">아름다운 서울 경치 주변을 즐길 수 있는 <br>투어 가이드 </p>
                        </a></li>
                    </ul>
                </div>
            </div>
            <div class="bg-box" style="background-image:url(../img/glamping.jpg);"></div>

        </li>
        <li class="cell">
            <div class="content-box">
                <h1 class="dff sdd" style="background-image:url(../img/caravan.jpg);">
                    <p class="cell">CARAVAN</p>
                    <p class="cell df">최고의 서비스와 맛이 있는 <br>미식의 세계로 초대합니다.</p>
                </h1>
                <div class="box-2 bg-2">
                    <ul>
                        <li><a href="#" class="block">
                            <h2>BUFFET ON THE PLATE</h2>
                            <p class="text">국내 최초 7성급 <br>Luxury All Day Dining 레스토랑 </p>
                        </a></li>
                        <li><a href="#" class="block">
                            <h2>RESTAURANTS</h2>
                            <p class="text">밤의 야경을 감상하며 즐기는 <br>트렌디한 미식공간 </p>
                        </a></li>
                        <li><a href="#" class="block">
                            <h2>BAKERY &amp; FLOWER</h2>
                            <p class="text">로맨틱하고 고급스러운 품격이 <br>담겨 있는 착한 베이커리</p>
                        </a></li>
                    </ul>
                </div>
            </div>
            <div class="bg-box" style="background-image:url(../img/caravan.jpg);"></div>
        </li>
        <li class="cell">
            <div class="content-box">
                <h1 class=" dff sds" style="background-image:url(../img/carsleep.jpg);">
                    <p class="cell">CARSPEEPING &amp; OUTFIELD</p>
                    <p class="cell df">인생의 가장 빛나는 하루, <br>잊지 못할 감동을 선사합니다.</p>
                </h1>
                <div class="box-2 bg-3">
                    <ul>
                        <li><a href="#" class="block">
                            <h2>CARSPEEPING &amp; OUTFIELD</h2>
                            <p class="text">눈부신 바다 풍경이 있는 <br>로맨틱 야외 가든 예식 </p>
                        </a></li>
                    </ul>
                </div>
            </div>
            <div class="bg-box" style="background-image:url(../img/carsleep.jpg);"></div>
        </li>
    </ul>
</div>








<!-- 3차 -->







<div class="box-2-title con text-align-center active-on-visible" data-active-on-visible-diff-y="-100">
    <div class="bb inline-block"><span>OFFERS</span></div>
    <div class="gr"><span>CAMPUS에서 준비한 이벤트</span></div>
</div>




<div class="bn3">
    <div class="box-2 con">
        <nav class="menu-box-1 text-align-center">
            <ul class="row">
                <div class="cell active-on-visible" data-active-on-visible-diff-y="-200">
                    <div>
                        <div  class="img img-box img-box-1">
                            <img src="../img//bbq.jpg" alt="">
                        </div>
                        <div class="one-1 one row ">
                            <span class="cell">BBQ 예약</span>
                            <p class=" cell font-6">개인 캠핑장 바로 앞에서</p>
                            <p class=" cell font-6 font-67">숯불에 구워드실수있는 BBQ GRILLS</p>
                            <p class="cell font-6 font-7">30,000원 ~ </p>
                            <p class="cell font-6 font-8">2. 7 ~ 3. 31 (일~금)</p>
                        </div>
                    </div>
                </div>
                <div class="cell active-on-visible" data-active-on-visible-diff-y="-300">
                    <div>
                        <div class="img">
                            <img src="../img/campfire.jpg" alt="">
                        </div>
                        <div class="one-1 one-2 row ">
                            <span class="cell">불멍</span>
                            <p class=" cell font-6">보고 있으면 묘하게 빠져드는</p>
                            <p class=" cell font-6 font-67">소중한 연인과의 특별하고 로맨틱한 힐링</p>
                            <p class="cell font-6 font-7">35,000원 ~ </p>
                            <p class="cell font-6 font-8">2. 7 ~ 3. 31 (일~금)</p>
                        </div>
                    </div>
                </div>
                <div class="cell active-on-visible" data-active-on-visible-diff-y="-400">
                    <div>
                        <div class="img">
                            <img src="../img/campitem.jpg" alt="">
                        </div>
                        <div class="one-1 one-3 row ">
                            <span class="cell">물품대여 서비스</span>
                            <p class=" cell font-6">홈페이지 예약시 3,000원 할인!</p>
                            <p class=" cell font-6 font-67"></p>
                            <p class="cell font-6 font-7">10,000원 ~ </p>
                            <p class="cell font-6 font-8">항시 대기</p>
                        </div>
                    </div>
                </div>
                <div class="cell active-on-visible" data-active-on-visible-diff-y="-500">
                    <div>
                        <div class="img">
                            <img src="../img/madd.jpg" alt="">
                        </div>
                        <div class="one-1 one-4 row ">
                            <span class="cell">마시멜로우</span>
                            <p class=" cell font-6">즐거운 캠핑에 감성 한수푼</p>
                            <p class=" cell font-6 font-67">가족들과 함께 마시멜로우</p>
                            <p class="cell font-6 font-7">20.000원 ~ </p>
                            <p class="cell font-6 font-8">2. 7 ~ 3. 31 (일~금)</p>
                        </div>
                    </div>
                </div>
            </ul>
        </nav>
    </div>
</div>

<div class="box-3 con text-align-center">
    <p>전체보기</p>
</div>








<!--4차 -->








<div class="con-min-width gray">

    <div class="box-3-title con text-align-center">
        <h1>CAMPUS WITH CUSTOMERS</h1>
        <p>CAMPUS 에서 진행되는 다양한 이벤트를 만나보세요.</p>
    </div>

    <div class="t5">
        <div class="box-6 con">
            <nav class="menu-box-1">
                <ul class="row">
                    <li class="cell">
                        <a href="#" class="">
                            <div class="img">
                                <img src="../img/picnic.jpg" alt="">
                            </div>
                            <div class="txt row">
                                <span class="cell vvv">가족 나들이를 위한 피크닉세트 대여</span>
                                <span class="sub cell">가족단위 4인 이상 방문시 무료 대여가능</span>
                                <p class="cell date"></p>
                            </div>
                        </a>
                    </li>
                    <li class="cell">
                        <a href="#" class="">
                            <div class="img">
                                <img src="../img/axe.jpg" alt="">
                            </div>
                            <div class="img">
                                <span class="cell vvv">장작패기 체험</span>
                                <span class="sub sub-1 cell">설레는 계절, 아이들과 함께 추억을 만들어 보세요</span>
                                <p class="cell date daad">지역 한정</p>
                            </div>
                        </a>
                    </li>
                    <li class="cell">
                        <a href="#" class="">
                            <div class="img">
                                <img src="../img/sale.jpg" alt="">
                            </div>
                            <div class="txt row">
                                <span class="cell vvv">계절 할인 프로모션</span>
                                <span class="sub cell">2022년 가을 캠핑여행 CAMP US와 함께</span>
                                <span class="subb sub cell">할인된 가격으로 만나 보세요</span>
                                <p class="cell date dd-1">2020.02.22~2020.03.01</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="box-5 con text-align-center">
        <p>전체보기</p>
    </div>


</div>






<!-- 5차 -->






<div class="box-3-title con text-align-center active-on-visible" data-active-on-visible-diff-y="-100">
    <div class="bb inline-block"><span>OUTFIELD 정보 공유</span></div>
    <div class="gr"><span>CAMP US 에서 선정한 OUTFIELD 랭킹</span></div>
</div>


<div class="t6">
    <div class="box-2 con">
        <nav class="menu-box-1">
            <ul class="row">
                <li class="cell active-on-visible" data-active-on-visible-diff-y="-200">
                    <div class="border-line"></div>
                    <div class="border-line"></div>
                    <div class="border-line"></div>
                    <div class="border-line"></div>
                    <div class="img">

                        <img src="../img/hwang2.jpg" alt="">
                        <div class="cover">
                            <div>
                                <p>상품별 이용 실적에 따라 <br>포인트 혜택을 제공하는 <br>롯데호텔 서울 <br>무료 멤버십입니다.</p>
                                <a href="/front/memnotice/membership" class="btn small2 btnLine2">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                    <p class="text">황매산 오토캠핑 노지스팟</p>
                </li>
                <li class="cell active-on-visible" data-active-on-visible-diff-y="-300">
                    <div class="border-line"></div>
                    <div class="border-line"></div>
                    <div class="border-line"></div>
                    <div class="border-line"></div>
                    <div class="img">
                        <img src="https://www.busanparadisehotel.co.kr/resource/images/pc/temp/img_membership2.jpg" alt="">
                        <div class="cover">
                            <div>
                                <p>품격 있는 서비스와 <br>차별화된 혜택을 제공하는 <br>롯데호텔 서울 <br>유료 멤버십입니다.</p>
                                <a href="/front/memnotice/membership" class="btn small2 btnLine2">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                    <p class="text">PARADIAN PLATINUM</p>
                </li>
                <li class="cell active-on-visible" data-active-on-visible-diff-y="-400">
                    <div class="border-line"></div>
                    <div class="border-line"></div>
                    <div class="border-line"></div>
                    <div class="border-line"></div>
                    <div class="img">
                        <img src="https://www.busanparadisehotel.co.kr/resource/images/pc/temp/img_membership3.jpg" alt="">
                        <div class="cover">
                            <div>
                                <p>고품격 프로그램과 <br>다양한 혜택을 제공하는 <br>피트니스 전용 멤버십입니다.</p>
                                <a href="/front/memnotice/membership" class="btn small2 btnLine2">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                    <p class="text">PARADIAN FITNESS</p>
                </li>
            </ul>
        </nav>
    </div>
</div>










<!-- 6차 -->



<div class="g8">
    <div class="box-7 con">
        <nav class="menu-box-1">
            <ul class="row">
                <li class="cell">
                    <a href="#" class="">
                        <div class="d003-item d003-item--banner">
                            <div class="d003-banner">
                                <div class="d003-banner__inner">
                                    <em class="d003-banner__title">Connect With</em>
                                    <p class="d003-banner__tag">
                                        #CAMPUS
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="cell">
                    <a href="#" class="">
                        <div class="img">
                            <img src="https://user-images.githubusercontent.com/56675593/76625635-09526900-657b-11ea-9b59-bd36739c1238.jpg" alt="">
                        </div>
                        <div class="img-1">
                            <img src="https://user-images.githubusercontent.com/56675593/76625999-add4ab00-657b-11ea-850a-546056a914eb.png" alt="">
                        </div>
                    </a>
                </li>
                <li class="cell">
                    <a href="#" class="">
                        <div class="img">
                            <img src="https://scontent.cdninstagram.com/v/t51.2885-15/e35/80888477_195602438233699_6351209435408071560_n.jpg?_nc_ht=scontent.cdninstagram.com&amp;_nc_ohc=-wp1pm1vU7oAX_gqfLV&amp;oh=e7b7da11f17bc0610e60ffc1bf2a28ec&amp;oe=5EBD020D" data-src="https://scontent.cdninstagram.com/v/t51.2885-15/e35/80888477_195602438233699_6351209435408071560_n.jpg?_nc_ht=scontent.cdninstagram.com&amp;_nc_ohc=-wp1pm1vU7oAX_gqfLV&amp;oh=e7b7da11f17bc0610e60ffc1bf2a28ec&amp;oe=5EBD020D" alt="">
                        </div>
                    </a>
                </li>
                <li class="cell">
                    <a href="#" class="">
                        <div class="img">
                            <img src="https://scontent.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/82599747_161557568468799_2391484360121017169_n.jpg?_nc_ht=scontent.cdninstagram.com&amp;_nc_ohc=0ilg7P7r2uIAX9N6WNB&amp;oh=63dacdb6170cc8b79d389f65700925c9&amp;oe=5ED44590" data-src="https://scontent.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/82599747_161557568468799_2391484360121017169_n.jpg?_nc_ht=scontent.cdninstagram.com&amp;_nc_ohc=0ilg7P7r2uIAX9N6WNB&amp;oh=63dacdb6170cc8b79d389f65700925c9&amp;oe=5ED44590" alt="">
                        </div>
                    </a>
                </li>
            </ul>
        </nav>
    </div>


    <div class="d084 con">
        <div class="d084-news__content cell">
            <div class="d084-news__head">
                <p class="d084-news__title">뉴스레터 구독신청</p>
                <!-- <p class="d084-news__desc">롯데호텔의 새로운 뉴스를 받아보세요.</p> -->
            </div>
            <div class="d084-form" aria-live="polite" aria-atomic="true">
                <div class="d084-form__inp row">
                    <div class="input cell">
                        <div class="input__wrap input__wrap--email">
                            <span class="input__placeholder" id="phd-email">이메일 주소를 입력해 주세요.</span>
                            <input type="email" class="o-input o-input--email" id="inp-email" title="이메일" aria-describedby="phd-email">
                            <button type="button" class="input__removetext">신청</button>
                        </div>
                        <div class="validation__text__wrap"></div>
                    </div>
                </div>
                <p class="d084-news__desc__under">앞으로 뉴스레터를 수신하고 싶지 않으시다면 <a href="#" class="d084__btn__pop" id="modal_block_mail">여기</a>를 클릭해 주십시오</p>
            </div>
        </div>
    </div>



    <div class="d084-trip">
        <a href="javascript:void(0);" onclick="javascript:goTripAdPopup('306130');" title="새창">
            <!--  <div class="d084-trip__logo">
                 <img src="http://www.tripadvisor.co.kr/img/cdsi/img2/branding/tripadvisor_logo_transp_340x80-18034-2.png" alt="tripadvisor"> </div> -->
            <div class="d084-trip__cont">
                <p class="d084-trip__review">
                    <span>3989</span> 리뷰</p>
            </div>
        </a>
    </div>





    <!-- <div class="s125-main-seo-copy con">
            <div class="s125 common-spacing-top--m ">
                <p class="s125__copy">롯데호텔 서울은 을지로입구 역 인근에 위치하고 있어 서울시청, 명동, 청계천 등 서울의 주요 관광지로의 접근성이 높은 5성급 럭셔리 호텔입니다. 서울 지하철, 버스, 공항 리무진 버스 등 대중 교통을 이용하여 편리하게 이동이 가능하여 서울 도심 최적의 위치를 자랑합니다. 롯데 호텔 서울은 본관 (메인 타워) 과 신관 (이그제큐티브 타워) 로 구성되어 있으며 서울 도심의 환상적인 전망을 감상할 수 있는 안락한 객실을 제공하고 있습니다. 다이닝 시설로는 업 스케일 뷔페 레스토랑 '라세느' 에서 200여 가지의 요리를 제공하며 일식 레스토랑 '모모야마', 중식 레스토랑 '도림', 한식 레스토랑 '무궁화', 프랑스 레스토랑 '피에르 가니에르 서울' 등 다양한 세계각국의 요리를 만나보실 수 있습니다. 롯데호텔 서울에는 고객 분들의 휴식을 위해 설화수 스파, 호텔 사우나 등 다양한 부대시설이 준비되어 있으며 다양한 해외 유명 브랜드가 입점 되어 있는 국내 최대 규모의 면세점인 롯데 면세점 본점을 만나보실 수 있습니다. 다양한 크기의 연회장은 품격 있는 가족 모임과 고품격 웨딩, 국제회의와 비즈니스 행사를 위한 최상의 장소를 제공합니다. 롯데호텔 서울의 호텔 패키지, 객실 프로모션, 특별 할인상품, 객실 예약 할인 정보를 공식사이트에서 지금 바로 확인 해 보세요.</p>
            </div>
        </div> -->



    <div class="hee">
        <div class="s026__inner s026-layout--square s026-background--gray-full-gray">
            <div class="s079-align--center ">
                <a href="https://www.worldhotels.com/hotel/lotte-hotel-seoul-downtown" target="_blank" title="새창">
                    <img src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/seoul/main/190923-890-mai-LTSE.png" alt="">
                </a>
            </div>
        </div>
    </div>
</div>










<!--- 마지막 --->










<div class="s099 con-min-width">
    <div class="s099__inner con row">
        <ul class="s099__brand cell">
            <li class=" cell">
                <a href="https://www.lottehotel.com/global/ko/about/lotte-hotel/brand/signiel.html" target="_blank">
                    <img src="https://www.lottehotel.com/content/dam/lottehotel/author/@temp/footer-brand-signiel.png">
                </a>
            </li>

            <li class=" cell">
                <a href="https://www.lottehotel.com/global/ko/about/lotte-hotel/brand/lotte-hotel.html" target="_blank">
                    <img src="https://www.lottehotel.com/content/dam/lottehotel/author/@temp/footer-brand-lotte-hotels-resorts.png">
                </a>
            </li>

            <li class=" cell">
                <a href="https://www.lottehotel.com/global/ko/about/lotte-hotel/brand/lotte-city-hotel.html" target="_blank">
                    <img src="https://www.lottehotel.com/content/dam/lottehotel/author/@temp/footer-brand-lotte-city-hotels.png">
                </a>
            </li>

            <li class=" cell">
                <a href="https://www.lottehotel.com/global/ko/about/lotte-hotel/brand/l7-hotel.html" target="_blank">
                    <img src="https://www.lottehotel.com/content/dam/lottehotel/author/@temp/footer-brand-l7-hotels.png">
                </a>
            </li>

            <li class=" cell">
                <a href="https://www.lotteresort.com" target="_blank">
                    <img src="https://www.lottehotel.com/content/dam/lotte-hotel/global/main/footer-brand-resort.png" alt="롯데 리조트">
                </a>
            </li>
        </ul>
        <ul class="s099__sns cell-right">
            <li class=" cell">
                <a href="http://www.lottehotelmagazine.com" target="_blank">
                    <img class="img-1" src="https://www.lottehotel.com/content/dam/lotte-hotel/global/main/footer-LHM.png" alt="LHM">
                </a>
            </li>

            <li class=" cell">
                <a href="https://www.tripadvisor.co.kr/Hotel_Review-g294197-d306130-Reviews-Lotte_Hotel_Seoul-Seoul.html" target="_blank">
                    <img class="img-2"src="https://www.lottehotel.com/content/dam/lotte-hotel/common/email/icon-tripad.png">
                </a>
            </li>

            <li class=" cell">
                <a href="https://www.facebook.com/lotteseoul" target="_blank">
                    <img class="img-3" src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/seoul/main/footer-sns-facebook.png">
                </a>
            </li>

            <li class=" cell">
                <a href="https://www.instagram.com/lottehotels/" target="_blank">
                    <img class="img-4" src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/seoul/main/footer-sns-instagram.png">
                </a>
            </li>

            <li class=" cell">
                <a href="https://www.youtube.com/user/LotteHotels/" target="_blank">
                    <img class="img-5" src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/seoul/main/footer-sns-youtube.png">
                </a>
            </li>

            <li class=" cell">
                <a href="http://blog.lottehotel.com/" target="_blank">
                    <img class="img-6" src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/seoul/main/footer-sns-blog.png">
                </a>
            </li>
        </ul>
    </div>
</div>






<div class="s100__inner con-min-width">

    <div class="s100__desktop con">
        <div class="s100__info">
            <a href="/global/ko.html" target="_blank">
                <img src="https://www.lottehotel.com/content/dam/lottehotel/author/@temp/footer-logo.png" class="s100__logo">
            </a>
            <div class="s100-address">
                <p class="s100-address__item"> ㈜캠퍼스</p>
                <p class="s100-address__item">의정부시 호국로 30</p>
                <p class="s100-address__item">010-2713-3607</p>
            </div>
        </div>
        <div class="s100-link">
            <div class="s100-link__list">
                <a href="/global/ko/about/lotte-hotel.html" target="_blank" title="새창" class="s100-link__item">롯데호텔 소개</a>

                <a href="/global/ko/about/lotte-hotel/brand.html" target="_blank" title="새창" class="s100-link__item">브랜드 소개</a>

                <a href="/global/ko/about/news.html" target="_blank" title="새창" class="s100-link__item">뉴스</a>

                <a href="/global/ko/about/lotte-hotel/awards.html" target="_blank" title="새창" class="s100-link__item">수상</a>

                <a href="/global/en/download-site.html" target="_blank" title="새창" class="s100-link__item">갤러리</a>

                <a href="/seoul-hotel/ko/sitemap.html" target="_self" class="s100-link__item">사이트맵</a>
            </div>
            <div class="s100-link__list">
                <a href="/global/ko/member/membership/trevi.html" target="_blank" title="새창" class="s100-link__item">트레비클럽 모바일카드 및 쿠폰 조회</a>

                <a href="/global/ko/support/voice-of-customer.html" target="_blank" title="새창" class="s100-link__item">고객의 소리</a>

                <a href="/global/ko/support/contact-information.html" target="_blank" title="새창" class="s100-link__item">지점별 연락처</a>

                <a href="/global/ko/about/lotte-hotel/ethics.html" target="_blank" title="새창" class="s100-link__item">윤리 HOT LINE</a>

                <a href="/global/ko/about/lotte-hotel/careers.html" target="_blank" title="새창" class="s100-link__item">채용</a>

                <a href="/global/ko/about/service-academy.html" target="_blank" title="새창" class="s100-link__item">서비스 아카데미</a>
            </div>
            <div class="s100-link__list list-1">

                <a href="/global/ko/support/business-inquiry.html" target="_blank" title="새창" class="s100-link__item">개발문의</a>

                <a href="/global/ko/member/membership/staff.html" target="_blank" title="새창" class="s100-link__item">임직원</a>

                <div class="s100-store">
                    <a href="https://itunes.apple.com/kr/app/lotte-hotels-resorts/id1063239345?mt=8" class="s100-store__button s100-store__button--ios" target="_blank" title="새창">Apple Store</a>
                    <a href="https://play.google.com/store/apps/details?id=com.lottehotels.global&amp;hl=ko" class="s100-store__button s100-store__button--android" target="_blank" title="새창">Google Play</a>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="s102 con-min-width">
    <div class="footer-info con">
        <div class="footer-info--web">
            <div class="footer-policy">
                <a href="/global/ko/terms/support/privacy-policy.html" target="_self" class="footer-policy__item">개인정보처리방침</a>

                <a href="/global/ko/terms/support/policy.html" target="_self" class="footer-policy__item">영상정보처리기기 운영·관리 방침</a>

                <a href="/global/ko/terms/support/terms-of-use.html" target="_self" class="footer-policy__item">이용약관</a>

                <a href="/global/ko/member/membership/privilege-rewards-terms.html" target="_self" class="footer-policy__item">롯데호텔 리워즈 회원약관</a>
            </div>
            <div class="footer-company">
	             <span class="footer-company__item">
	                 <span class="footer-company__title">대표이사</span>강현석</span>
                <span class="footer-company__item">
	                 <span class="footer-company__title">사업자등록번호</span> 104-81-25980</span>
                <span class="footer-company__item">
	                <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1048125980&amp;apv_perm_no=" target="_blank" title="새창">
	                <span class="footer-company__title">통신판매신고번호</span> 중구02802호</a>
	             </span>
            </div>
            <div class="tol-inner2">
                /jsp/view/chatHotelList.jsp" data-postfixuri="langcd=KO&amp;hotelcd=LTSE" data-logined="false" data-js="#" data-name="footerPopup" data-width="450" data-height="600"></a>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src= "../js/FinalMain.js"></script>
</body>
</html>
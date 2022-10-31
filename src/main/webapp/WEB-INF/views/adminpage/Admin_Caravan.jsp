<%@ page import="kibwa.campus.dto.CaravanDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>

<%
    List<CaravanDTO> cList = (List<CaravanDTO>) request.getAttribute("cList");

    //카라반 정보 조회 결과 보여주기
    if (cList == null){
        cList = new ArrayList<CaravanDTO>();
    }

    //주석
    System.out.println("cList : " + cList);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>소풍캠핑장 상세정보</title>
</head>

<link href="../css/FinalMain.css" rel="stylesheet" type="text/css" />
<link href="../css/CaravanDetail.css" rel="stylesheet" type="text/css" />
<script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">

<body>

<!-- 우측 메뉴바 -->
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
                    <p><span>OUTDOOR OCEAN SPA</span><span>POOL</span></p></a></li>
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
        <a href="/FinalMain" class="logo cell block img-box">
            <img src="../img/CampUslogo.png" alt="">
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
                                        <a href="#">뉴스</a>
                                    </li>
                                    <li class="cell">
                                        <a href="#">갤러리</a>
                                    </li>
                                    <li class="cell">
                                        <a href="#">LotteHottel Seoul 위치</a>
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
                                        <a href="#">Main Tower</a>
                                        <ul class="row">
                                            <li class="cell"><a href="#" class="block">스탠다드</a></li>
                                            <li class="cell"><a href="#" class="block">슈페리어 룸</a></li>
                                            <li class="cell"><a href="#" class="block">디럭스 룸</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="#">Club Floor</a>
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

</div>
<!-- 상단 메뉴바 끝 -->

<!-- 메인 정보창 -->
<div id="wrap">
    <div id="container">
        <div class="conHeader">
            <ul>
                <li><a href="" class="homeIcon"><em class="blind">홈</em></a></li>
                <li>></li>
                <li><a href="" style="color: #666666">객실</a></li>
                <li>></li>
                <li><a href="">전체객실보기</a></li>
            </ul>
        </div>

        <div class="nav">
            <h2>구 역</h2>
            <ul>
                <li><a href="">A 구역</a></li>
                <li><a href="">B 구역</a></li>
                <li><a href="">C 구역</a></li>
            </ul>


        </div>
        <div class="contents">
            <h1>A 구역</h1>
            <div class="mainVisual">
                <div class="slider">
                    <div class="visual_1"></div>
                    <div class="visual_1"></div>
                    <div class="visual_1"></div>
                    <div class="visual_1"></div>
                </div>

                <div class="btnsArea">
                    <a href="#" class="previousPage"><span class="mark"><em class="blind">이전페이지</em></span></a>
                    <a href="#" class="nextPage"><span class="mark"><em class="blind">다음페이지</em></span></a>
                </div>
            </div>
            <div class="subVisual">
                <ul>
                    <li><a href="" class="visual_1"><em class="blind">사진</em></a></li>
                    <li><a href="" class="visual_1"><em class="blind">사진</em></a></li>
                    <li><a href="" class="visual_1"><em class="blind">사진</em></a></li>
                    <li><a href="" class="visual_1"><em class="blind">사진</em></a></li>
                </ul>
            </div>
            <div class="content_2">
                <%for (CaravanDTO c : cList) { %>
                <div class="leftSec">
                    <p class="title">    <%= c.getCground_name() %>  </p>
                    <p class="callText"> <%= c.getCground_location() %> </p>
                    <ul>
                        <li><span>· 전화번호 : </span> <%= c.getCground_tel()%> </li>
                        <li><span>· 예약금액 : </span> <%= c.getCground_deposit() %> </li>
                        <li><span>· 조회수 : </span> <%= c.getRev_count() %> </li>

                    </ul>
                    <div class="bottomSec">
                        <div class="leftSec"><h3>객실서비스</h3></div>
                        <div class="rightSec1">
                            <ul>
                                <li>· <%= c.getCground_detail_info() %> </li>
                            </ul>
                        </div>
                    </div>
                    <%}%>
                </div>

                <div class="rightSec">
                    <ul class="detail">
                        <li></li>
                        <li></li>
                        <li><a href="" class="btn_3">예약하기</a></li>
                    </ul>
                    <h2>객실 정보</h2>

                    <div class="bottomBox">
                        <%for (CaravanDTO c : cList) { %>
                        <ul class="headList">
                            <li>
                                <p>· 체크인/체크아웃 시간</p>
                                <ul>
                                    <li>- 체크인 : <%= c.getCamping_enter() %> </li>
                                    <li>- 체크아웃 : <%= c.getCamping_exit() %></li>
                                </ul>
                            </li>

                            <li>
                                <p>· 추가 시설</p>
                                <ul>
                                    <li>- <%= c.getAdd_facil() %></li>
                                </ul>
                            </li>
                            <li>
                                <p>· 예약 취소 및 변경 안내</p>
                                <ul>
                                    <li>- 숙박 예정일 1일 전 24시 까지 : 위약금 없음</li>
                                    <li>- 당일 취소 : 1박 객실요금의 80%</li>
                                    <li>- No Show : 1박 객실요금의 100%</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <%}%>
            </div>
            <div class="content_3">
                <h2>후기</h2>
                <div class="contentBox">
                    <a href="" class="visual"><em class="blind">사진</em></a>
                    <div class="rightSec">
                        <dl>
                            <dt>여기에 후기테이블 제목</dt>
                            <dd>후기 내용</dd>
                        </dl>
                    </div>
                    <a href="" class="plusBtn"><em class="blind">후기게시판</em></a>
                </div>
            </div>
            <br/>



            <!-- 지도를 표시할 div 입니다 -->
            <div id="map" style="width:911px;height:300px;"></div>

            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=119ae2ea8315dbedde5d3225d2c16c6d"></script>
            <script>
                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapOption = {
                        center: new kakao.maps.LatLng(37.58176478603421, 127.53583598220568), // 소풍캠핑장 주소
                        level: 3 // 지도의 확대 레벨
                    };

                // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);

                <%
                    CaravanDTO cDTO = new CaravanDTO();

                    if (cDTO == null){
                        cDTO = new CaravanDTO();
                    }
                %>

                // 주소-좌표 변환 객체를 생성합니다
                var geocoder = new kakao.maps.services.Geocoder();
                // 주소로 좌표를 검색합니다
                geocoder.addressSearch('<%=CmmUtil.nvl(cDTO.getCground_location())%>', function(result, status) {

                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {

                        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                        // 결과값으로 받은 위치를 마커로 표시합니다
                        var marker = new kakao.maps.Marker({
                            map: map,
                            position: coords,
                            clickable: true
                        });

                        // 마커가 지도 위에 표시되도록 설정합니다
                        marker.setMap(map);
                    }
                });


            </script>

        </div>

        <div class="snsSec">
            <ul>
                <li><a href="" class="facebook"><em class="blind">페이스북</em></a></li>
                <li><a href="" class="blog"><em class="blind">블로그</em></a></li>
                <li><a href="" class="kakao"><em class="blind">카카오스토리</em></a></li>
            </ul>
        </div>

    </div>

    <footer>
        <div class="topCon">
            <div class="test1">
                <div class="logo_1"><em class="blind">로고</em></div>
                <ul>
                    <li><a href="">호텔소개</a></li>
                    <li><a href="">호텔사진</a></li>
                    <li><a href="">호텔안내도</a></li>
                    <li><a href="">오시는길</a></li>
                    <li><a href="">채용</a></li>
                    <li><a href="">의견&문의</a></li>
                </ul>
                <div class="logo_2"><em class="blind">삼성중공업</em></div>
            </div>
            <div class="bottomCon">
                <ul class="information">
                    <li>개인정보처리방침</li>
                    <li>개인정보취급방침</li>
                    <li>이메일무단수집금지</li>
                </ul>
                <hr class="line">
                <ul class="information_2">
                    <li>삼성중공업(거제호텔)</li>
                    <li>경상남도 거제시 장평3로 80-37 (우 53261)</li>
                    <li>TEL 055-631-2114</li>
                    <li>FAX 055-631-2010</li>
                    <li>사업자번호 612-85-00343</li>
                    <li>대표이사 박대영</li>
                </ul>
                <p>COPYRIGHT ⓒ 2015 SAMSUNG HOTEL GEOJE LIMITED, ALL RIGHTS RESERVED. </p>
            </div>
        </div>
    </footer>
</div>
<!-- 메인 정보창 끝 -->

<script type="text/javascript" src= "../js/FinalMain.js"></script>
</body>
</html>
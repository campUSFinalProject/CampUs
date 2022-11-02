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
<link href="../../css/FinalMain.css" rel="stylesheet" type="text/css" />
<link href="../../../resources/static/css/RevRooms.css" rel="stylesheet" type="text/css" />
<script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<

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

<!-- 상단 메뉴바 끝 -->>

<!-- 예약 -->

<section id="section-main" class="section-reservation">
    <div class="w800" style="">
        <form>
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

                <div class="split field">
                    <div>
                        <label for="numadults"> 인원 </label>
                        <input type="number" id="numadults" />
                    </div>
                </div>

                <label> 구역 </label>
                <ul id="rooms-container">
                    <li class="rc rt1">
                        <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="101" />
                        <div class="rn">101번</div>
                        <div class="rp">30,000원</div>
                    </li>
                    <li class="rc rt1">
                        <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="102" />
                        <div class="rn">102번</div>
                        <div class="rp">35,000원</div>
                    </li>
                    <li class="rc rt1">
                        <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="103" />
                        <div class="rn">103번</div>
                        <div class="rp">40,000원</div>
                    </li>
                    <li class="rc rt2">
                        <input type="radio" name="reservation[room_id]" data-room-price="145" class="hide" value="104" />
                        <div class="rn">104번</div>
                        <div class="rp">45,000원</div>
                    </li>
                    <li class="rc rt3">
                        <input type="radio" name="reservation[room_id]" data-room-price="175" class="hide" value="105" />
                        <div class="rn">105번</div>
                        <div class="rp">50,000원</div>
                    </li>

                <label>Price</label>
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

                <div class="spacer"></div>
                <div class="actions">
                    <div><a class="btn btn-aqua" href="#">
                        <span class="btn btn-aqua spacer-v" onclick=""> 결제 <i class="fa fa-angle-right fa"></i></span>
                    </div>
                </div>
        </form>
    </div>
</section>


<!-- 자바 스크립트 -->
<script type="text/javascript" src= "../../../resources/static/js/FinalMain.js"></script>





</body>
</html>

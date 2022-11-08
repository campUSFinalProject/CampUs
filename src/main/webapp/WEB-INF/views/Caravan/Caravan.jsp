<%@ page import="kibwa.campus.dto.CaravanDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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
    <title>카라반</title>

    <!--나중에 JS독립시키기-->
    <script type="text/javascript">
        //제목 누르면 게시글 보게 함
        function goToCaravanDetail(cground_info_num){
            location.href="/CaravanDetail?cground_info_num=" + cground_info_num;
        }
    </script>
</head>

<link href="../css/FinalMain.css" rel="stylesheet" type="text/css" />
<link href="../css/Caravan.css" rel="stylesheet" type="text/css" />
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
            <!--민지 : 게시판으로 이동-->
            <a href="/board/BoardList?keyword=">
                <h1>게시판</h1>
                <p>정보 공유 및 <br>소통 가능한 게시판</p>
            </a>
        </div>
        <div class="grand">
            <ul class="quickC">
                <li><a href="/board/BoardList?keyword=">
                    <em class="icon1"><i></i></em>
                    <p><span>MainBoard</span><span>전체게시판</span></p></a></li>
                <li><a href="/board/BoardList?keyword=">
                    <em class="icon2"><i></i></em>
                    <p><span>ALL DAY</span><span>정보게시판</span></p></a></li>
                <li><a href="/board/BoardList?keyword=">
                    <em class="icon3"><i></i></em><p><span>TipBoard</span><span>꿀팁게시판</span></p></a></li>
                <li><a href="/board/BoardList?keyword=">
                    <em class="icon4"><i></i></em>
                    <p><span>OUTDOOR OCEAN SPA</span><span>사업자등록 게시판</span></p></a></li>
                <li><a href="/board/BoardList?keyword=">
                    <em class="icon5"><i></i></em>
                    <p><span>BUFFET</span><span>ON THE PLATE</span></p></a></li>
                <li><a href="/board/BoardList?keyword=">
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
        <a href="/cu/Main" class="logo cell block img-box">
            <img src="../img/CampUslogo.png" alt="">
        </a>
        <nav class="menu-box-2 cell">
            <ul class="row">
                <li class="cell">
                    <a href="/Caravan" class="block">CAMPING</a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="/Caravan">경기도</a>
                                        <ul class="row">
                                            <li class="cell"><a href="/Caravan" class="block">가평군</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">고양시</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">파주시</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">의정부</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">부천시</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="/Caravan">강원도</a>
                                        <ul class="row">
                                            <li class="cell"><a href="/Caravan" class="block">속초시</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">강릉</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="/Caravan">충청남도</a>
                                        <ul class="row">
                                            <li class="cell"><a href="/Caravan" class="block">태안군</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="cell">
                    <a href="/Caravan" class="block">GLAMPING</a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="/Caravan">경기도</a>
                                        <ul class="row">
                                            <li class="cell"><a href="/Caravan" class="block">가평군</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">고양시</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">파주시</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">의정부</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">부천시</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="/Caravan">강원도</a>
                                        <ul class="row">
                                            <li class="cell"><a href="/Caravan" class="block">속초시</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">강릉</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="/Caravan">충청남도</a>
                                        <ul class="row">
                                            <li class="cell"><a href="/Caravan" class="block">태안군</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="cell">
                    <a href="/Caravan" class="block">CARAVAN</a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="/Caravan">경기도</a>
                                        <ul class="row f-1">
                                            <li class="cell"><a href="/Caravan" class="block">가평군</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">고양시</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">파주시</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">의정부</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">부천시</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="/Caravan">강원도</a>
                                        <ul class="row f-1">
                                            <li class="cell"><a href="/Caravan" class="block">속초시</a></li>
                                            <li class="cell"><a href="/Caravan" class="block">강릉</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="/Caravan">충청남도</a>
                                        <ul class="row f-1">
                                            <li class="cell"><a href="/Caravan" class="block">태안군</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="cell">
                    <a href="/Outfield" class="block">CARSLEEP & OUTFIELD</a>
                    <div>
                        <div>
                            <div>
                                <ul class="row">
                                    <li class="cell">
                                        <a href="/Outfield">경기도</a>
                                        <ul class="row f-2">
                                            <li class="cell"><a href="/Outfield" class="block">가평군</a></li>
                                            <li class="cell"><a href="/Outfield" class="block">고양시</a></li>
                                            <li class="cell"><a href="/Outfield" class="block">파주시</a></li>
                                            <li class="cell"><a href="/Outfield" class="block">의정부</a></li>
                                            <li class="cell"><a href="/Outfield" class="block">부천시</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="/Outfield">강원도</a>
                                        <ul class="row f-2">
                                            <li class="cell"><a href="/Outfield" class="block">속초시</a></li>
                                            <li class="cell"><a href="/Outfield" class="block">강릉</a></li>
                                        </ul>
                                    </li>
                                    <li class="cell">
                                        <a href="/Outfield">충청남도</a>
                                        <ul class="row f-2">
                                            <li class="cell"><a href="/Outfield" class="block">태안군</a></li>
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
        <div class="cell-right row">
            <div class="cell"><a href="#" class=""></a>
            </div>
            <div class="cell block"><a href="#">MEMBERSHIP</a>
            </div>
            <div class="cell block"><a href="#"></a>
            </div>
            <div class="cell block"><a href="#">ABOUT US</a>
            </div>
            <div class="cell block"><a href="#">로그인</a>
            </div>
            <div class="cell block"><a href="#">회원가입</a>
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

</div>
<!-- 상단 메뉴바 끝 -->

<!-- 캠핑장 리스트  -->

<%for (CaravanDTO c : cList) {%>
<div class="card">


    <div class="card__thumb"><a href="javascript:;"><img class="animate" src="https://picsum.photos/800?random=1"/></a></div>
    <div class="card__content">
        <h2 class="card__title animate"><a href="javascript:;"> <%=c.getCground_name()%> </a></h2>
        <p class="card__text"> <%=c.getCground_detail_info()%> </p>
        <button class="card__btn" onclick="goToCaravanDetail('<%=c.getCground_info_num()%>')"><i class="fa-solid fa-arrow-right fa-fw"></i></button>
    </div>
</div>
<%}%>

<script type="text/javascript" src= "../js/FinalMain.js"></script>
</body>
</html>
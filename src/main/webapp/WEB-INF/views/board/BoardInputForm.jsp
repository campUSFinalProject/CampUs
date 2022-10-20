<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ page import="kibwa.campus.dto.BoardDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<%
    BoardDTO bDTO = (BoardDTO)request.getAttribute("bDTO");

    if(bDTO == null){
        bDTO = new BoardDTO();
    }

    int access = 1;
    if (CmmUtil.nvl((String)session.getAttribute("SS_ID")).equals(
            CmmUtil.nvl(bDTO.getId()))){
        access = 2;
    }
    //String SS_ID = CmmUtil.nvl((String) session.getAttribute("SS_ID"));
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" ; charset="UTF-8">
    <title>게시판 글쓰기</title>
</head>

<!--상단, 라이트바 위한 css-->
<link href="../css/FinalMain.css" rel="stylesheet" type="text/css"/>
<script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
      integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">

<!--게시판 css -->
<link href="../css/board/FreeBoard.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">
    function checkFields(){
        document.frm.submit();
    }
</script>

<body>
<div class=mainDiv>
    <!--상단 메뉴바-->
    <div class="top-bar con-min-width row">
        <div class="ride">
            <a href="#" class="logo cell block img-box">
                <img src="../img/camlog.jpg" alt="">
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

    <!--라이트 메뉴바-->
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
                        <em class="icon3"><i></i></em>
                        <p><span>TipBoard</span><span>꿀팁게시판</span></p></a></li>
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

    <!--BoardInputForm area-->
    <h4> 게시판 글 쓰기 </h4><br/>
    나중에 이쁘게 만드시오 <br/><br/>
    <form name='frm' action="/board/BoardList">
        제  목 : <input type='text' name="title" required><br/><br/>
        내  용 : <textarea name="contents" rows='10' cols='40' required></textarea><br/><br/>
        <input type='button' value='작성' onclick="javascript:checkFields()">
        <input type='reset' value='취소'>
    </form>
</div>

<!--메뉴바를 위한 JS-->
<script type="text/javascript" src="../js/FinalMain.js"></script>
</body>
</html>
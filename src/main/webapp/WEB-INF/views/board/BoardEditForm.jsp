<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ page import="kibwa.campus.dto.BoardDTO" %>
<%
    //String mem_num = CmmUtil.nvl((String) session.getAttribute("SS_NUM"));
    BoardDTO bDTO = (BoardDTO) request.getAttribute("boDTO");

    //공지글 정보를 못불러왔다면, 객체 생성
    if (bDTO == null) {
        bDTO = new BoardDTO();
    }

    //사용자 로그인 여부 확인
    int id = 0;

    //Session을 받을때는 값이 null로 올때를 생각해서 조건문을 사용한다.
    if (session.getAttribute("SS_ID") != null) {
        //세션의 값을 가져오기
        id = 1;
    }

    System.out.println(bDTO.getBoard_title());
    System.out.println(bDTO.getBoard_content());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>게시글 수정</title>
    <script type="text/javascript">
        //전송시 유효성 체크
        function doSubmit(f) {
            if (f.title.value == "") {
                alert("제목을 입력하시기 바랍니다.");
                f.title.focus();
                return false;
            }

            if (calBytes(f.title.value) > 200) {
                alert("최대 200Bytes까지 입력 가능합니다.");
                f.title.focus();
                return false;
            }

            var noticeCheck = false; //체크 여부 확인 변수
            for (var i = 0; i < f.noticeYn.length; i++) {
                if (f.noticeYn[i].checked) {
                    noticeCheck = true;
                }
            }

            if (noticeCheck == false) {
                alert("공지글 여부를 선택하시기 바랍니다.");
                f.noticeYn[0].focus();
                return false;
            }

            if (f.contents.value == "") {
                alert("내용을 입력하시기 바랍니다.");
                f.contents.focus();
                return false;
            }

            if (calBytes(f.contents.value) > 4000) {
                alert("최대 4000Bytes까지 입력 가능합니다.");
                f.contents.focus();
                return false;
            }
        }

        //글자 길이 바이트 단위로 체크하기(바이트값 전달)
        function calBytes(str) {
            var tcount = 0;
            var tmpStr = new String(str);
            var strCnt = tmpStr.length;
            var onechar;
            for (i = 0; i < strCnt; i++) {
                onechar = tmpStr.charAt(i);

                if (escape(onechar).length > 4) {
                    tcount += 2;
                } else {
                    tcount += 1;
                }
            }
            return tcount;
        }
    </script>
</head>

<!--상단, 라이트바 위한 css-->
<link href="../css/FinalMain.css" rel="stylesheet" type="text/css"/>
<script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!--게시판 글쓰기 css-->
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link href="../css/testboard.css" rel="stylesheet" type="text/css"/>

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
      integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">

<!--게시판 css -->
<link href="../css/board/FreeBoard.css" rel="stylesheet" type="text/css"/>

<body>
<div class=mainDiv>
    <!--상단 메뉴바-->
    <div class="top-bar con-min-width row">
        <div class="ride">
            <a href="/cu/Main" class="logo cell block img-box">
                <img src="../img/camplogg.png" alt="">
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
                <div class="cell"><a href="/cu/mypage" class="">내정보</a>
                </div>
                <div class="cell block"><a href="/cu/Logout">로그아웃</a>
                </div>
                <div class="cell block"><a href="">예약확인/취소</a>
                </div>
                <div class="cell block"><a href="#">ABOUT US</a>
                </div>
                <div class="cell block"><a href="/member/memRegLoginForm">asdasd</a>
                </div>
                <div class="cell block"><a href="#"></a>            </div>

            </ul>
            <%};%>
        </div>
    </div>

    <!--라이트 메뉴바-->
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

    <!--BoardEditForm area-->
    <header> [ 게시글 수정 ] </header>

    <form name="f" method="post" id="form" class="topBefore" action="/board/BoardUpdate" onsubmit="return doSubmit(this);">
        <input type="hidden" name="board_num" value="<%=CmmUtil.nvl(request.getParameter("board_num")) %>"/>
        <input id="name" name="title" type="text" placeholder="제목" value="<%=CmmUtil.nvl(request.getParameter("board_title")) %>">
        <textarea id="message" name="contents" type="text" placeholder="내용" required><%=CmmUtil.nvl(request.getParameter("board_content")) %></textarea>
        <input type='reset' value='초기화'>
        <input id="submit" type="submit" value="수정하기">
    </form>
</div>

<!--메뉴바를 위한 JS-->
<script type="text/javascript" src="../js/FinalMain.js"></script>
</body>
</html>
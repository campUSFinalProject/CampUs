<%@ page import="kibwa.campus.dto.CaravanDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kibwa.campus.util.CmmUtil" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>

<%
    //List<CaravanDTO> cList = (List<CaravanDTO>) request.getAttribute("cList");

    //카라반 정보 조회 결과 보여주기
    //if (cList == null){
    //    cList = new ArrayList<CaravanDTO>();
    //}

    //주석
    //System.out.println("cList : " + cList)
    CaravanDTO coDTO = (CaravanDTO) request.getAttribute("coDTO");

    String SS_business_NUM = CmmUtil.nvl((String) request.getAttribute("SS_business_NUM"));
    int access = 1;
    if (CmmUtil.nvl((String) session.getAttribute("SS_business_NUM")).equals(
            CmmUtil.nvl(coDTO.getBusiness_num()))) {
        access = 2;
    }

    //사용자 로그인 여부 확인
    int id = 0;

    //Session을 받을때는 값이 null로 올때를 생각해서 조건문을 사용한다.
    if (session.getAttribute("SS_buiness_ID") != null) {
        //세션의 값을 가져오기
        id = 1;
    }

    System.out.println("coDTO : " + coDTO);
    System.out.println("location : " + coDTO.getCground_location());
    System.out.println("cground_info_num : " + coDTO.getCground_info_num());

%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>카라반 상세정보</title>

    <script type="text/javascript">
        function doEdit() {
            if ("<%=access%>" == "1") {
                alert("작성자만 수정할 수 있습니다.");
            } else {
                location.href = "/caravan/updateCaravanForm?cground_info_num=<%=CmmUtil.nvl(coDTO.getCground_info_num())%>"
            }
        }

        //게시글 삭제 함수
        function doDelete() {
            if ("<%=access%> == 2") {
                if (confirm("작성한 글을 삭제하시겠습니까?")) {
                    location.href = "/caravan/deleteCaravan?cground_info_num=<%=CmmUtil.nvl(coDTO.getCground_info_num())%>";
                }
            } else {
                alert("본인이 작성한 게시글만 삭제할 수 있습니다.");
            }
        }

    </script>
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
                    <a href="Caravan" class="block">CAMPING</a>
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
                    <a href="#" class="block">GLAMPING</a>
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
                    <a href="#" class="block">CARAVAN</a>
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
            <% for(String sectorId : coDTO.getSector_num()) { %>
                <li><a href=""><%=sectorId%> 구역</a></li>
            <% } %>
            </ul>


        </div>
        <div class="contents">
            <h1>1 구역</h1>
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
                <div class="leftSec">
                    <p class="title"> <%=CmmUtil.nvl(coDTO.getCground_name())%></p>
                    <p class="callText"> <%=CmmUtil.nvl(coDTO.getCground_location())%></p>
                    <ul>
                        <li><span>· 전화번호 : </span> <%=CmmUtil.nvl(coDTO.getCground_tel())%> </li>
                        <li><span>· 예약금액 : </span> <%=CmmUtil.nvl(coDTO.getCground_deposit())%> </li>
                        <li><span>· 조회수 : </span><%=CmmUtil.nvl(coDTO.getRev_count())%> </li>

                    </ul>
                    <div class="bottomSec">
                        <div class="leftSec"><h3>객실서비스</h3></div>
                        <div class="rightSec1">
                            <ul>
                                <li>· <%=CmmUtil.nvl(coDTO.getCground_detail_info())%> </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="rightSec">
                    <ul class="detail">
                        <li></li>
                        <li><a href="javascript:doEdit();" class="btn_3">수정하기</a></li>
                        <li><a href="${pageContext.request.contextPath}/rev/한강뚝섬캠핑장/1" class="btn_3">예약하기</a></li>
                    </ul>
                    <h2>객실 정보</h2>

                    <div class="bottomBox">
                        <ul class="headList">
                            <li>
                                <p>· 체크인/체크아웃 시간</p>
                                <ul>
                                    <li>- 체크인 : <%=CmmUtil.nvl(coDTO.getCamping_enter())%> </li>
                                    <li>- 체크아웃 : <%=CmmUtil.nvl(coDTO.getCamping_exit())%></li>
                                </ul>
                            </li>

                            <li>
                                <p>· 추가 시설</p>
                                <ul>
                                    <li>- <%=CmmUtil.nvl(coDTO.getAdd_facil())%></li>
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

            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=119ae2ea8315dbedde5d3225d2c16c6d&libraries=services"></script>
            <script>

                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapOption = {
                        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                        level: 3 // 지도의 확대 레벨
                    };

                // 지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);

                // 주소-좌표 변환 객체를 생성합니다
                var geocoder = new kakao.maps.services.Geocoder();

                // 주소로 좌표를 검색합니다
                geocoder.addressSearch('<%=CmmUtil.nvl(coDTO.getCground_location())%>', function(result, status) {

                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {
                        console.log("status : " +status)

                        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                        // 결과값으로 받은 위치를 마커로 표시합니다
                        var marker = new kakao.maps.Marker({
                            map: map,
                            position: coords
                        });

                        // 인포윈도우로 장소에 대한 설명을 표시합니다
                        var infowindow = new kakao.maps.InfoWindow({
                            content: '<div style="width:150px;text-align:center;padding:6px 0;"><%=CmmUtil.nvl(coDTO.getCground_name())%></div>'
                        });
                        infowindow.open(map, marker);

                        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                        map.setCenter(coords);
                    }
                });

                /* var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                     mapOption = {
                         center: new kakao.maps.LatLng(37.58176478603421, 127.53583598220568), // 소풍캠핑장 주소
                         level: 3 // 지도의 확대 레벨
                     };

                 // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                 var map = new kakao.maps.Map(mapContainer, mapOption); // 지도 생성


                 // 주소-좌표 변환 객체를 생성합니다
                 var geocoder = new kakao.maps.services.Geocoder();
                 // 주소로 좌표를 검색합니다
                 geocoder.addressSearch('', function(result, status) {

                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {

                        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                        console.log("coords : " + coords)

                        // 결과값으로 받은 위치를 마커로 표시합니다
                        var marker = new kakao.maps.Marker({
                            map: map,
                            position: coords,
                            clickable: true
                        });
                            marker.setMap(map);
                    }
                });*/
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
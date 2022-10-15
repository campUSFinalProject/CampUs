<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
    <link href="../css/login.css" rel="stylesheet" type="text/css" />
    <script src="../4_jquery_class/lib/jquery-1.9.1.min.js"></script>

</head>
<body>

<div class="cotn_principal">
    <div class="cont_centrar">

        <div class="cont_login">
            <div class="cont_info_log_sign_up">
                <!-- LOGIN -->
                <div class="col_md_login">
                    <div class="cont_ba_opcitiy">

                        <h2>로그인</h2>
                        <p>CAMP US에 오신걸 환영합니다.</p>
                        <button class="btn_login" onclick="cambiar_login()">로그인</button>
                    </div>
                </div>
                <!-- SIGNUP -->
                <div class="col_md_sign_up">
                    <div class="cont_ba_opcitiy">
                        <h2>회원가입</h2>


                        <p>혹시 저희 사이트가 처음이신가요?</p>

                        <button class="btn_sign_up" onclick="cambiar_sign_up()">회원가입</button>

                    </div>
                </div>
            </div>


            <div class="cont_back_info">
                <div class="cont_img_back_grey">
                    <img src="../img/fire.jpg" alt="" />
                </div>

            </div>
            <!-- Анимированные LOGIN и SIGNUP после нажатия на кнопку -->
            <div class="cont_forms" >
                <div class="cont_img_back_">
                    <img src="../img/fire.jpg" alt="" />
                </div>
                <div class="cont_form_login">
                    <a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
                    <h2>LOGIN</h2>
                    <input type="text" placeholder="아이디" />
                    <input type="password" placeholder="비밀번호" />
                    <button class="btn_login" onclick="cambiar_login()">사용자 로그인</button>
                    <button class="btn_login" onclick="cambiar_login()">사업자 로그인</button>
                </div>

                <div class="cont_form_sign_up">

                    <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                    <h2>SIGN UP</h2>
                    <input type="text" placeholder="이메일" />
                    <input type="text" placeholder="아이디" />
                    <input type="password" placeholder="비밀번호" />
                    <input type="password" placeholder="비밀번호 확인" />
                    <button class="btn_sign_up" onclick="cambiar_sign_up()">회원가입 완료</button>
                </div>

            </div>
        </div>
    </div>

    <script src="js/index.js"></script>
    <script type="text/javascript" src= "../js/login.js"></script>
</body>

</body>
</html>
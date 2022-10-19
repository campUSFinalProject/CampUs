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
    <script type="text/javascript">
        function doRegUserCheck(f) {

            if (f.id.value === "") {
                alert("아이디를 입력하세요");
                f.id.focus();
                return false;
            }
            if (f.name.value === "") {
                alert("이메일을 입력하세요");
                f.name.focus();
                return false;
            }
            if (f.password.value === "") {
                alert("비밀번호를 입력하세요");
                f.password.focus();
                return false;
            }
            if (f.password2.value === "") {
                alert("비밀번호를 확인하세요");
                f.password2.focus();
                return false;
            }
            if (f.mem_tel.value === "") {
                alert("이메일을 입력하세요");
                f.mem_tel.focus();
                return false;
            }
        }

        function password() {
            var p1 = document.getElementById('password').value;
            var p2 = document.getElementById('password2').value;
            if (p1 != p2){
                alert("비밀번호가 일치하지 않습니다");
                return false;
            }else{
                return true;
            }
        }
    </script>

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


                <form class="cont_form_sign_up" name="f" method="post" action="/cu/insertMember" onclick="return doRegUserCheck(this);">

                    <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>

                    <h2>SIGN UP</h2>
                    <input type="text" placeholder="아이디" name="id"/>
                    <input type="text" placeholder="이름" name="이름"/>
                    <input type="password" placeholder="비밀번호" name="password" />
                    <input type="password" placeholder="비밀번호 확인" name="password2" />
                    <input type="text" placeholder="전화번호" name="mem_tel">
                    <button class="btn_sign_up" onclick="cambiar_sign_up()" type="submit">회원가입 완료</button>
                </form>

            </div>
        </div>
    </div>

    <script src="js/index.js"></script>
    <script type="text/javascript" src= "../js/login.js"></script>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <title>mainpage</title>
    <link rel="stylesheet" type="text/css"  href="/semi/resources/css/mainpagecss.css" >

</head>
<body>
    <nav>
        <ul>
            <li class="logo"><img src="resources/images/win_win.png"></li>
            <li><a href ="views/findProject/projectList.jsp">프로젝트 찾기</a></li>
            <li><a href ="developer.html">개발자 찾기</a></li>
            <li><a href ="views/signupProject/signupProject.jsp">프로젝트 등록</a></li>
            <li><a href ="#">이용방법</a></li>
            <li class="login"><a href ="LoginUser.html">로그인</a></li>
            <li class="signup"><a href ="JoinUser.html">회원가입</a></li>
        </ul>
    </nav>
    
    <div class="introduction">
        <section class="intro_container">
            <div class="introdution_ment">
                <p class="title_ment">능력있는 개발자 , <br> 맞춤형 프로젝트를 <br>WIN WIN 에서 <br> 더 간편하고 빠르게!</p>
                <p class="guide_ment">애플리케이션 개발, 웹 개발, 일반 소프트웨어 개발, <br> 웹 디자인, 쇼핑몰 등</p>
            </div>
            <div class="introdution_img">
                <img src="resources/images/winwinlogo.jpg">
            </div>
        </section>
    </div>
     <footer class="foot">
        <div class="foot_container">
            <div class="row">
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.3783800920023!2d127.03072031526789!3d37.49899297981053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9ec255555555%3A0x3565475c3365c5bb!2zS0jsoJXrs7TqtZDsnKHsm5A!5e0!3m2!1sko!2skr!4v1579419044117!5m2!1sko!2skr" width="350" height="200" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                </div>
                <div class="location">
                    <h4 class="h4_text">Location</h4>
                    <p class="loacation_text"> 서울특별시 강남구 테헤란로 <br><br> 14길 6  남도빌딩 2F, 3F, 4F, 5F</p>
                </div>
                <div class="fax_phone">
                    <h4 class="h4_text">Information</h4>
                    <p class="fax_phone_text">Tel: 1544-9970 </p>
                    <p class="fax_phone_text">Fax: 02-562-2378</p>
                </div>
            </div>
        </div>
    </footer>
   <%@ include file="views/common/footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" href="/win/css/LoginUser.css">
</head>
<body>
    <form action="/win/login.me" method="POST">
        <div class="logo"><a href="/win/mainpage.jsp" style="padding:0px;"><img src="/win/images/winwin_logo.PNG"></a></div>

        <div class="Id_pwd_form">
        <input type="text" id="ID" name="userId" class="login_form" placeholder="아이디" required> </div>
        <div class="Id_pwd_form">
        <input type="password" id="PWD" name="userPwd" class="login_form" placeholder="비밀번호" required>
        </div>
        
        <div class="sub_but">
            <input type="submit" value="로그인" class="submit_button" style="width: 380px; height: 50px; margin-top: 20px;">
        </div>
        <hr class="line_form">
    </form>

    <div class="links">
        <a href="/win/Member/found_id.jsp">아이디 찾기 </a> &nbsp;
        <a href="/win/Member/found_id.jsp">비밀번호 찾기 </a> <br>
        <a href="/win/Member/memberJoinForm.jsp"> <br> 회원가입</a>
      </div>

</body>
</html>
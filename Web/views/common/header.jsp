<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="win.model.vo.*"%>
<%
	Member m = (Member)session.getAttribute("member");
	/* session.setMaxInactiveInterval(1000);*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/myWeb/resources/js/jquery-3.4.1.min.js"></script>

<title>Insert title here</title>
<link rel="stylesheet" href="/semi/css/mainpagecss.css">

</head>
<body>

 <nav id=nav2>
        <ul>
            <li class="logo"><a href = "/semi/mainpage.jsp" style="padding:0px;"><img src="/semi/images/win_win.png"></a></li>
            <li><a href ="plist.do?currentPage=1">프로젝트 찾기</a></li>
            <li><a href ="/semi/dlist.do">개발자 찾기</a></li>
            <li><a href ="/semi/Project/signupProject.jsp">프로젝트 등록</a></li>
            <li><a href ="#">이용방법</a></li>
            <%if(m==null){ %>
            <li class="login"><a href ="/semi/Member/loginUser.jsp" onclick='login()'>로그인</a></li>
            <li class="signup"><a href ="/semi/Member/memberJoinForm.jsp" onclick="memberJoin()">회원가입</a></li>
            <%}else{ %>
            <li class="login"><a href ="" onclick='logout()'>로그아웃</a></li>
            <li class="signup"><a href ="/semi/page/myPage1.jsp" onclick="myPage()">마이페이지</a></li>
            <%} %>
            
        </ul>
    </nav>

	<script>
		function login(){
			$('#loginForm').submit();
		}
		
		function logout(){
			location.href="/semi/logout.me";
		}
		
		function memberJoin(){
			location.href="/semi/views/member/memberJoinForm.jsp";
		}
		
		function myPage(){
			location.href="/semi/page/myPage1.jsp";
		}
	</script>
</body>
</html>
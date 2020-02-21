
<%-- <%@page import="java.sql.Date"%> --%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="com.winwin.jsp.project.model.vo.Project"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.winwin.jsp.project.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<Project> list = (ArrayList<Project>)request.getAttribute("list"); 
PageInfo pi = (PageInfo)request.getAttribute("pi");
int listCount = pi.getListCount();
int currentPage = pi.getCurrentPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();
Date date = new Date(System.currentTimeMillis());
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
/* Project p = (Project)request.getAttribute("project");
 */
%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Find Project</title>
   <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
  <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
  <!-- <link href="netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
  <!-- Custom fonts for this theme -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="/semi/resources/css/freelancer.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/semi/resources/css/mainpagecss.css">


</head>

<body id="page-top">

  <!-- Navigation -->
  <nav>
      <ul>
          <li class="logo"><a href = "/semi/mainpage.jsp" style="padding:0px;"><img src="/semi/resources/images/win_win.png"></li>
          <li><a href ="/semi/Project/projectFind.jsp">프로젝트 찾기</a></li>
          <li><a href ="/semi/Project/developer.jsp">개발자 찾기</a></li>
          <li><a href ="/semi/Project/signupProject.jsp">프로젝트 등록</a></li>
          <li><a href ="#">이용방법</a></li>
          <li class="login"><a href ="LoginUser.html">로그인</a></li>
          <li class="signup"><a href ="JoinUser.html">회원가입</a></li>
      </ul>
  </nav>
  <!-- 상단바 끝 -->
  

  <!-- Masthead -->
  <header class="masthead bg-primary text-white text-center">
    <div class="container d-flex align-items-center flex-column">

      <!-- Masthead Avatar Image -->
      <!-- <img class="masthead-avatar mb-5" src="images/avataaars.svg" alt=""> -->

      <!-- Masthead Heading -->
      <!-- <h1 class="masthead-heading text-uppercase mb-0">Welcome!</h1> -->
            <!-- <h2 class = "subTitle">프로젝트</h2> -->
      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Masthead Subheading -->
      <!-- <p class="masthead-subheading font-weight-light mb-0">Project</p> -->

    </div>
  </header>

        <!-- About Section Heading -->
      <!-- <h2 class="page-section-heading text-center text-uppercase text-white">About</h2> -->

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

    
  <!-- Contact Section -->
  <section class="page-section" id="contact">
    <div class="container">
      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>
    </section>
    
    <!-- 메인 시작부분 (흰색배경) 콘텐츠 집어넣어야함. -->
    <div class = "maindan">

      <h2 id = "projectid">프로젝트</h2>
     
      <div id = "custom2">
      <div id="custom-search-input">
        <div class="input-group col-md-12">
            <!-- <p id = "example-font"><span class = "example-font">프로젝트 등록 제목 예시입니다 &nbsp;&nbsp;&nbsp;프로젝트 등록 제목 예시입니다</span></p>
            <p id = "date"><span class = "date">등록 : 2020년 01월 20일</span></p> -->
            <!-- <div id = "point-item01"> -->
            <input type="text" id="keyword" class="  search-query form-control" placeholder="Search" />
            <span class="input-group-btn">
                <button class="btn btn-danger" type="button">
                    <span class=" glyphicon glyphicon-search"></span>
                </button>
            </span>
            
             </div>
            </div>
        </div>
      <!-- <div id = "box">
         <p id = "example-font"><span class = "example-font">프로젝트 등록 제목 예시입니다 &nbsp;&nbsp;&nbsp;프로젝트 등록 제목 예시입니다</span></p>
            <p id = "date"><span class = "date">등록 : 2020년 01월 20일</span></p> 
             <div id = "point-item01">
      </div>
    </div> -->
</div>

<p id = "filter"><span id = "pfilter" onclick="search();">프로젝트 필터</span></p>
  <div id = "filtercheck">
    
    <dl>	
      <dt>기본 정렬</dt>
      <dd>
        <ul>
          <li><input type ="radio" name = "filter-radio" id="sort1" value="sort1" checked=true>
            <label>기본 정렬 순</label>
          </li>
          <li><input type ="radio" name = "filter-radio" id="sort2" value="sort2" >
            <label>급여 순</label>
          </li>
         <!--  <li><input type ="radio" name = "filter-radio" id="sort3" value="sort3" >
            <label>평점 순</label>
          </li> -->
          <li><input type ="radio" name = "filter-radio" id="sort3" value="sort3" >
            <label>최신 등록 순</label>
          </li>
          <li><input type ="radio" name = "filter-radio" id="sort4" value="sort4" >
            <label>마감 임박 순</label>
          </li>
        </ul>
        <hr>
        <dt>참여파트 분류</dt>
        <ul>
          <li><input type = "checkbox" name = "searchCondition1" id = "develop" value="develop">
              <label>개발</label>
          <li><input type = "checkbox" name = "searchCondition1" id = "design" value="design">
              <label>디자인</label>
          <li><input type = "checkbox" name = "searchCondition1" id = "plan" value="plan">
              <label>기획</label>
       <!--    <li><input type = "checkbox" name = "part" id = "기획">
              <label>기획+개발</label>
          <li><input type = "checkbox" name = "part" id = "기획">
              <label>디자인+개발</label>
          <li><input type = "checkbox" name = "part" id = "기획">
              <label>기획+디자인</label>
          <li><input type = "checkbox" name = "part" id = "기획">	
              <label>기획+디자인+개발</label> -->
        </ul>
      </dd>
    </dl>

  </div>

  <div class = "div1" style="border: white;">
  <ul>
  
  <%for(Project p : list){ %>
  <%int compare = dateFormat.format(p.getPend()).compareTo(dateFormat.format(date)); %>
 
  <li id="btn1" style="border: 2px solid #ced4da;">
  <div  class = "proj-header">
  
    <div class = "divline" id = "div0" hidden><span id = "font1"><%=p.getPno() %> </span><strong class = "black"></strong></div>
    <h3 id = "projectname"><%=p.getPtitle() %></h3>
    <p id = "date">등록 : <%=p.getPenroll() %></p> 
    </div>
    
    <div class="proj-point" style = "display:flex;">
    <div class = "divline" id = "div1"><span id = "font1">예산 </span><strong class = "black"><%=p.getPcost() %> 원</strong></div>
    <div class = "divline" id = "div2"><span id = "font1">기간</span><strong class = "black"><%=p.getPgo() %></strong></div>
    <div class = "divline" id = "div3"><span id = "font1">마감</span><strong class = "black"><%=p.getPend() %></strong></div>
    <div class = "divline" id = "div4"><span id = "font1">지원자수</span><strong class = "black"><%=p.getCount() %></strong></div>
    <div class = "divline" id = "div5"><span id = "font2"></span><%if(compare>0){ %>진행중<%}else if(compare<0){ %>마감<% }else{ %>오늘 마감!<%} %></div>
    </div>
   
    <div class = "proj-bottom">
    <div class = "divbottom" id = "divb1" style = "border-right : 1px solid #ced4da; width : 640px;">
      <div style = "display:flex;">
        <div class = "divline2" id = "di1"><span id = "font3"><%=p.getPbang() %></span></div> </div>  <!--  외주 or 상주 -->
       
      <p id = "word">  
              <%=p.getPcotx() %>         
                       	<!--  포로젝트 상세 내용 -->
                       
      </p>
     </div>
  	<div class = "divbottom" id = "divb2">
    
        <p id ="company">
          <img src = "/semi/resources/images/developer.png" 
          style="position: relative;
          left: -16px;
          top: 32px;
          width:80px; height:80px">
          <p id = "company_1">
            기업 아이디					<!--  기업 아이디 끌어다 넣을 것 -->
          </p>
          <p id = "company_2">
            기업 소개 내용<br>
            내용 내용 내용<br>         <!--  여기에 기업 소개 끌어다 넣을 것 -->
            내용 내용 내용<br>
          </p>
	
       </p>
       </div>
       </div>
       </li>
      
       <br>
       <%} %>
	</ul>
 
	
	<div class="pagingArea" align="center">
			<button onclick="location.href='<%= request.getContextPath() %>/plist.do?currentPage=1'"><<</button>
			<%  if(currentPage <= 1){  %>
			<button disabled><</button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/plist.do?currentPage=<%=currentPage - 1 %>'"><</button>
			<%  } %>
			
			<% for(int p = startPage; p <= endPage; p++){
					if(p == currentPage){	
			%>
				<button disabled><%= p %></button>
			<%      }else{ %>
				<button onclick="location.href='<%= request.getContextPath() %>/plist.do?currentPage=<%= p %>'"><%= p %></button>
			<%      } %>
			<% } %>
				
			<%  if(currentPage >= maxPage){  %>
			<button disabled>></button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/plist.do?currentPage=<%=currentPage + 1 %>'">></button>
			<%  } %>
			<button onclick="location.href='<%= request.getContextPath() %>/plist.do?currentPage=<%= maxPage %>'">>></button>
			
		</div>
    </div>
<script>
$(function(){
	
	$("#pfilter").mouseenter(function(){
		$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
	}).mouseout(function(){
		$(this).parent().css({"background":"#0f4c81"});
	})
});

$(function(){
	
	$("#btn1").mouseenter(function(){
		$(this).parent().css({"cursor":"pointer"});
	})
});


function search(){
	var check = $('input[name=searchCondition1]');
	
	var sort = $('input[name=filter-radio]');
	
	var chk = '';	
	for(var i=0; i< check.length;i++){
		if($('input[name=searchCondition1]')[i].checked == true){
			chk = $('input[name=searchCondition1]')[i].value;
		}
	}
	var chk2 = '';
	for(var i=0; i< sort.length;i++){
		if($('input[name=filter-radio]')[i].checked == true){
			chk2 = $('input[name=filter-radio]')[i].value;
			console.log(chk2);
		}
	}

	location.href="<%=request.getContextPath()%>/pSearch.do?currentPage=<%=currentPage%>&con="+chk+"&keyword="+$('#keyword').val()+"&sort="+chk2;
}

/* function detail(){
	var pno =
}
 */ $("div").on({
    click:function(){
       $("#btn1").click(function(){
               //console.log($(this).parent().children().eq(0).text());
               var Pno = $(this).children().children().eq(0).text();
               location.href="<%=request.getContextPath()%>/selectOne.bo?Pno=" + Pno;
            });
    }
 });
</script>

  


  


  <!-- Footer (시작점)-->
      
   <%@ include file="../views/common/footer.jsp" %>
</body>

</html>

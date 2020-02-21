<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="com.winwin.jsp.developer.model.vo.PageInfo"%>
<%@page import="com.winwin.jsp.developer.model.vo.developer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% ArrayList<developer> list = (ArrayList<developer>)request.getAttribute("list");
PageInfo pi = (PageInfo)request.getAttribute("pi");
int listCount = pi.getListCount();
int currentPage = pi.getCurrentPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();
Date date = new Date(System.currentTimeMillis());
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Freelancer - Start Bootstrap Theme</title>
   <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
  <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
  <!-- <link href="netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
  <!-- Custom fonts for this theme -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="/win/css/freelancer.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/win/css/mainpagecss.css">

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav id = nav2>
    <ul>
       <li class="logo"><a href = "/semi/mainpage.jsp" style="padding:0px;"><img src="/win/images/win_win.png"></a></li>
            <li><a href ="../plist.do">프로젝트 찾기</a></li>
            <li><a href ="/semi/Project/developer.jsp">개발자 찾기</a></li>
            <li><a href ="/semi/Project/signupProject.jsp">프로젝트 등록</a></li>
            <li><a href ="#">이용방법</a></li>
            <li class="login"><a href ="/win/Member/loginUser.jsp">로그인</a></li>
            <li class="signup"><a href ="/win/Member/memberJoinForm.jsp">회원가입</a></li>
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
      <h2 id = "projectid">개발자</h2>
      <div id = "custom2">
      <div id="custom-search-input">
        <div class="input-group col-md-12">
            <input type="text" class="  search-query form-control" placeholder="Search" />
            <span class="input-group-btn">
                <button class="btn btn-danger" type="button">
                    <span class=" glyphicon glyphicon-search"></span>
                </button>
            </span>
        </div>
    </div>
</div>
<p id = "filter"><span id = "pfilter" >프로젝트 필터</span></p>
  <div id = "filtercheck" style="height : auto;">
    
    <dl>
      <dt>기본 정렬</dt>
      <dd>
        <ul>
          <li><input type ="radio" name = "filter-radio" value="sort1" checked=true>
            <label>기본 정렬 순</label>
          </li>
         <!--  <li><input type ="radio" name = "filter-radio">
            <label>평점 높은 순</label>
          </li> -->
          <li><input type ="radio" name = "filter-radio" value="sort2" >
            <label>포트폴리오 수</label>
          </li>
          <li><input type ="radio" name = "filter-radio" value="sort3" >
            <label>프로젝트 완료 수</label>
          </li>
          <!-- <li><input type ="checkbox" name = "filter-radio" >
            <label>마감 임박 순</label>
          </li> -->
        </ul>
       <!--  <hr>
        <dt>참여파트 분류</dt>
        <ul>
          <li><input type = "checkbox" name = "part" id = "기획">
              <label>기획</label>
          <li><input type = "checkbox" name = "part" id = "기획">
              <label>디자인</label>
          <li><input type = "checkbox" name = "part" id = "기획">
              <label>개발</label>
          <li><input type = "checkbox" name = "part" id = "기획">
              <label>기획+개발</label>
          <li><input type = "checkbox" name = "part" id = "기획">
              <label>디자인+개발</label>
          <li><input type = "checkbox" name = "part" id = "기획">
              <label>기획+디자인</label>
          <li><input type = "checkbox" name = "part" id = "기획">
              <label>기획+디자인+개발</label>
        </ul> -->
      </dd>
    </dl>

  </div>
    </div>
    <%for(developer d : list){ %>
	<li id="btn1" style="border: 2px solid #ced4da;">
    <div class = "div1_1" style = "display:inline-block;">
      <!-- <h3 id = "projectname">프로젝트 제목 제목 예시 예시</h3> -->
      <div class = "block" style = "display:inline-block;">
      <div class = "block2" style = "display:inline-block;">
      <div class = "picture"><img src = "/win/images/developer.png"></div>
      <div class = "picture2"><img src = ""></div>
      <div class = "starfont" style =""></div>
      </div> 
      </div>

      <div class="block" style="position: relative;
      display: inline-block;
       /* border: 1px solid;  */
      height: 200px;
      top: -165px;
      width: 500px;
      margin-left: 27px;">

        <div class = "info1">
          <span style="margin: 13px;">개발자 아이디 </span>
          <span class= "person">개인사업자<span>
          <!--   <span class = "person2">개발</span> -->
          </div>
          <p id = "context"><span id ="text2">
            "하나를 만들더라도 제대로 만들어보자"
란, 단 하나의 슬로건을 중심으로 다양한 분야의 스타일(style)을 가진 사람들이 구성된 회사 온스타일러(onstyler)입니다.
그저 개발만 하면 끝나버리는 기존의 획일적인 개발사에서 벗어나, 내가 만들었다는 프라이드를 만들기 위해 존제합니다.
또한 다양한 분야에서 주력 개발을 해온 10년~20년차 개발자, 디자이너, 퍼블리셔 그리고 기획자로 구성된 회사입니다.
인력 구성원 한명한명이 단순한 개발뿐만이 아닌, 내 아이템처럼 기획하고, 내 아이템처럼 생각하며, 내 아이템처럼 개발해 나가고 있습니다.
최근까지 삼성 스마트폰, 스마트TV 출시마다 탑제되는 주력 앱 개발은 물론, 삼성전자 앱마켓인 삼성마켓 개발 또한 참여했습니다.
이 외에도 서울대 학사행정 시스템부터 롯데슈퍼타워2 건설공정관리 시스템, 이랜드몰, 삼성자산운용 ATIS 시스템, KTX 산천 멀티미디어 시스템 구축부터 스마트 안전관리 앱 강동안전플러스까지 대기업, 관공서, 대학교부터 중소기업까지 1,000여개의 프로젝트를 성공리에 진행한 다양한 경험을 가지고 있습니다.
이런 수년간의 경험에서 얻어지는 노하우는 최고의 파트너가 되기에 충분하리라 생각합니다.
프로젝트를 진행하며 가장 중요한 것은 믿을 수 있는 기술력을 가진 파트너쉽과 책임감입니다.
하나를 만들더라도 내가 자신있게 추천할 수 있도록 제대로 만들자는 단 하나의 목표를 가지고 그동안 쌓아온 커리어와 노하우에서 얻어지는 파트너쉽과 끝까지 함께하는 책임감을 드리겠습니다.
또한 개발 이후 가장 중요한 유지보수까지 책임지고 함께하는 파트너가 되어 좋은 프로젝트를 함께 이루어가길 희망합니다.
감사합니다.
          </span></p>
          <!-- <div class = "info2">
            <span class = "person3">내용내용</span>
          </div> -->
      </div>
      <div class = "block2" style = "position:relative;
      display: inline-block;
      vertical-align: middle;
      /* border : 1px solid black; */
      font-size: 13px;
      width: 350px;
      height: 256px;
      margin-top:-167px;">

      <div class = "context2" style = "font-size:13px;">
        <span id = "lan">PHP</span>
        <span id = "lan">ASP</span>
        <span id = "lan">JSP</span>
        <span id = "lan">ASP.NET</span>
        <span id = "lan">JavaScript</span>..
      </div>
      
      <div class = "context3">
        <ul>
          <li class = "certi">
            <!-- <p id = "c1"><span>신원 인증</span></p> -->
            <!-- <p id = "c2"><span>실사 인증</span></p> -->
          </li>
          <li class = "certi2">
            <p id = "c3"><span>계약</span></p>
          </li>
          <li class = "certi3">
            <p id = "c4"><span>포트폴리오</span></p>
          </li>
          <!-- <li class = "certi4"> -->
            <!-- <p id = "c5"><span>동영상 인터뷰</span></p> -->
          <!-- </li> -->

        </ul>
      </div>

      <!-- <div class = "money">
        <span>누적계약금액 :</span>
         <span id = "money2">543,130,000</span>
        <span id = "money3">원</span> -->
        <!-- <div class ="money2"> -->
          <!-- 543,130,000 -->
          <!-- <span id = "money3">원</span> -->

        <!-- </div> -->
      <!-- </div>  -->

      </div>

      
  </div>
</li>
<br>
<%} %>
 <!--  <div class = "div1_2" style = "display:inline-block;">
    <h3 id = "projectname">프로젝트 제목 제목 예시 예시</h3>
    <div class = "block" style = "display:inline-block;">
    <div class = "block2" style = "display:inline-block;">
    <div class = "picture"><img src = "/win/images/developer.png"></div>
    <div class = "picture2"><img src = ""></div>
    <div class = "starfont" style =""></div>
    </div> 
    </div>

    <div class="block" style="position: relative;
    display: inline-block;
     /* border: 1px solid;  */
    height: 200px;
    top: -165px;
    width: 500px;
    margin-left: 27px;">

      <div class = "info1">
        <span style="margin: 13px;">개발자 아이디 </span>
        <span class= "person">개인사업자<span>
          <span class = "person2">개발</span>
        </div>
        <p id = "context"><span id ="text2">
          "하나를 만들더라도 제대로 만들어보자"
란, 단 하나의 슬로건을 중심으로 다양한 분야의 스타일(style)을 가진 사람들이 구성된 회사 온스타일러(onstyler)입니다.
그저 개발만 하면 끝나버리는 기존의 획일적인 개발사에서 벗어나, 내가 만들었다는 프라이드를 만들기 위해 존제합니다.
또한 다양한 분야에서 주력 개발을 해온 10년~20년차 개발자, 디자이너, 퍼블리셔 그리고 기획자로 구성된 회사입니다.
인력 구성원 한명한명이 단순한 개발뿐만이 아닌, 내 아이템처럼 기획하고, 내 아이템처럼 생각하며, 내 아이템처럼 개발해 나가고 있습니다.
최근까지 삼성 스마트폰, 스마트TV 출시마다 탑제되는 주력 앱 개발은 물론, 삼성전자 앱마켓인 삼성마켓 개발 또한 참여했습니다.
이 외에도 서울대 학사행정 시스템부터 롯데슈퍼타워2 건설공정관리 시스템, 이랜드몰, 삼성자산운용 ATIS 시스템, KTX 산천 멀티미디어 시스템 구축부터 스마트 안전관리 앱 강동안전플러스까지 대기업, 관공서, 대학교부터 중소기업까지 1,000여개의 프로젝트를 성공리에 진행한 다양한 경험을 가지고 있습니다.
이런 수년간의 경험에서 얻어지는 노하우는 최고의 파트너가 되기에 충분하리라 생각합니다.
프로젝트를 진행하며 가장 중요한 것은 믿을 수 있는 기술력을 가진 파트너쉽과 책임감입니다.
하나를 만들더라도 내가 자신있게 추천할 수 있도록 제대로 만들자는 단 하나의 목표를 가지고 그동안 쌓아온 커리어와 노하우에서 얻어지는 파트너쉽과 끝까지 함께하는 책임감을 드리겠습니다.
또한 개발 이후 가장 중요한 유지보수까지 책임지고 함께하는 파트너가 되어 좋은 프로젝트를 함께 이루어가길 희망합니다.
감사합니다.
        </span></p>
        <div class = "info2">
          <span class = "person3">내용내용</span>
        </div>
    </div>
    <div class = "block2" style = "position:relative;
    display: inline-block;
    vertical-align: middle;
    /* border : 1px solid black; */
    font-size: 13px;
    width: 350px;
    height: 256px;
    margin-top:-167px;">

    <div class = "context2" style = "font-size:13px;">
      <span id = "lan">PHP</span>
      <span id = "lan">ASP</span>
      <span id = "lan">JSP</span>
      <span id = "lan">ASP.NET</span>
      <span id = "lan">JavaScript</span>..
    </div>
    
    <div class = "context3">
      <ul>
        <li class = "certi">
          <p id = "c1"><span>신원 인증</span></p>
          <p id = "c2"><span>실사 인증</span></p>
        </li>
        <li class = "certi2">
          <p id = "c3"><span>계약</span></p>
        </li>
        <li class = "certi3">
          <p id = "c4"><span>포트폴리오</span></p>
        </li>
        <li class = "certi4">
          <p id = "c5"><span>동영상 인터뷰</span></p>
        </li>

      </ul>
    </div>

    <div class = "money">
      <span>누적계약금액 :</span>
       <span id = "money2">543,130,000</span>
      <span id = "money3">원</span>
      <div class ="money2">
        543,130,000
        <span id = "money3">원</span>

      </div>
    </div> 

    </div>

    
</div>

<div class = "div1_3" style = "display:inline-block;">
  <h3 id = "projectname">프로젝트 제목 제목 예시 예시</h3>
  <div class = "block" style = "display:inline-block;">
  <div class = "block2" style = "display:inline-block;">
  <div class = "picture"><img src = "/win/images/developer.png"></div>
  <div class = "picture2"><img src = ""></div>
  <div class = "starfont" style =""></div>
  </div> 
  </div>

  <div class="block" style="position: relative;
  display: inline-block;
   /* border: 1px solid;  */
  height: 200px;
  top: -165px;
  width: 500px;
  margin-left: 27px;">

    <div class = "info1">
      <span style="margin: 13px;">개발자 아이디 </span>
      <span class= "person">개인사업자<span>
        <span class = "person2">개발</span>
      </div>
      <p id = "context"><span id ="text2">
        "하나를 만들더라도 제대로 만들어보자"
란, 단 하나의 슬로건을 중심으로 다양한 분야의 스타일(style)을 가진 사람들이 구성된 회사 온스타일러(onstyler)입니다.
그저 개발만 하면 끝나버리는 기존의 획일적인 개발사에서 벗어나, 내가 만들었다는 프라이드를 만들기 위해 존제합니다.
또한 다양한 분야에서 주력 개발을 해온 10년~20년차 개발자, 디자이너, 퍼블리셔 그리고 기획자로 구성된 회사입니다.
인력 구성원 한명한명이 단순한 개발뿐만이 아닌, 내 아이템처럼 기획하고, 내 아이템처럼 생각하며, 내 아이템처럼 개발해 나가고 있습니다.
최근까지 삼성 스마트폰, 스마트TV 출시마다 탑제되는 주력 앱 개발은 물론, 삼성전자 앱마켓인 삼성마켓 개발 또한 참여했습니다.
이 외에도 서울대 학사행정 시스템부터 롯데슈퍼타워2 건설공정관리 시스템, 이랜드몰, 삼성자산운용 ATIS 시스템, KTX 산천 멀티미디어 시스템 구축부터 스마트 안전관리 앱 강동안전플러스까지 대기업, 관공서, 대학교부터 중소기업까지 1,000여개의 프로젝트를 성공리에 진행한 다양한 경험을 가지고 있습니다.
이런 수년간의 경험에서 얻어지는 노하우는 최고의 파트너가 되기에 충분하리라 생각합니다.
프로젝트를 진행하며 가장 중요한 것은 믿을 수 있는 기술력을 가진 파트너쉽과 책임감입니다.
하나를 만들더라도 내가 자신있게 추천할 수 있도록 제대로 만들자는 단 하나의 목표를 가지고 그동안 쌓아온 커리어와 노하우에서 얻어지는 파트너쉽과 끝까지 함께하는 책임감을 드리겠습니다.
또한 개발 이후 가장 중요한 유지보수까지 책임지고 함께하는 파트너가 되어 좋은 프로젝트를 함께 이루어가길 희망합니다.
감사합니다.
      </span></p>
      <div class = "info2">
        <span class = "person3">내용내용</span>
      </div>
  </div>
  <div class = "block2" style = "position:relative;
  display: inline-block;
  vertical-align: middle;
  /* border : 1px solid black; */
  font-size: 13px;
  width: 350px;
  height: 256px;
  margin-top:-167px;">

  <div class = "context2" style = "font-size:13px;">
    <span id = "lan">PHP</span>
    <span id = "lan">ASP</span>
    <span id = "lan">JSP</span>
    <span id = "lan">ASP.NET</span>
    <span id = "lan">JavaScript</span>..
  </div>
  
  <div class = "context3">
    <ul>
      <li class = "certi">
        <p id = "c1"><span>신원 인증</span></p>
        <p id = "c2"><span>실사 인증</span></p>
      </li>
      <li class = "certi2">
        <p id = "c3"><span>계약</span></p>
      </li>
      <li class = "certi3">
        <p id = "c4"><span>포트폴리오</span></p>
      </li>
      <li class = "certi4">
        <p id = "c5"><span>동영상 인터뷰</span></p>
      </li>

    </ul>
  </div>

  <div class = "money">
    <span>누적계약금액 :</span>
     <span id = "money2">543,130,000</span>
    <span id = "money3">원</span>
    <div class ="money2">
      543,130,000
      <span id = "money3">원</span>

    </div>
  </div> 

  </div>

  
</div>
<div class = "div1_4" style = "display:inline-block;">
  <h3 id = "projectname">프로젝트 제목 제목 예시 예시</h3>
  <div class = "block" style = "display:inline-block;">
  <div class = "block2" style = "display:inline-block;">
  <div class = "picture"><img src = "/win/images/developer.png"></div>
  <div class = "picture2"><img src = ""></div>
  <div class = "starfont" style =""></div>
  </div> 
  </div>

  <div class="block" style="position: relative;
  display: inline-block;
   /* border: 1px solid;  */
  height: 200px;
  top: -165px;
  width: 500px;
  margin-left: 27px;">

    <div class = "info1">
      <span style="margin: 13px;">개발자 아이디 </span>
      <span class= "person">개인사업자<span>
        <span class = "person2">개발</span>
      </div>
      <p id = "context"><span id ="text2">
        "하나를 만들더라도 제대로 만들어보자"
란, 단 하나의 슬로건을 중심으로 다양한 분야의 스타일(style)을 가진 사람들이 구성된 회사 온스타일러(onstyler)입니다.
그저 개발만 하면 끝나버리는 기존의 획일적인 개발사에서 벗어나, 내가 만들었다는 프라이드를 만들기 위해 존제합니다.
또한 다양한 분야에서 주력 개발을 해온 10년~20년차 개발자, 디자이너, 퍼블리셔 그리고 기획자로 구성된 회사입니다.
인력 구성원 한명한명이 단순한 개발뿐만이 아닌, 내 아이템처럼 기획하고, 내 아이템처럼 생각하며, 내 아이템처럼 개발해 나가고 있습니다.
최근까지 삼성 스마트폰, 스마트TV 출시마다 탑제되는 주력 앱 개발은 물론, 삼성전자 앱마켓인 삼성마켓 개발 또한 참여했습니다.
이 외에도 서울대 학사행정 시스템부터 롯데슈퍼타워2 건설공정관리 시스템, 이랜드몰, 삼성자산운용 ATIS 시스템, KTX 산천 멀티미디어 시스템 구축부터 스마트 안전관리 앱 강동안전플러스까지 대기업, 관공서, 대학교부터 중소기업까지 1,000여개의 프로젝트를 성공리에 진행한 다양한 경험을 가지고 있습니다.
이런 수년간의 경험에서 얻어지는 노하우는 최고의 파트너가 되기에 충분하리라 생각합니다.
프로젝트를 진행하며 가장 중요한 것은 믿을 수 있는 기술력을 가진 파트너쉽과 책임감입니다.
하나를 만들더라도 내가 자신있게 추천할 수 있도록 제대로 만들자는 단 하나의 목표를 가지고 그동안 쌓아온 커리어와 노하우에서 얻어지는 파트너쉽과 끝까지 함께하는 책임감을 드리겠습니다.
또한 개발 이후 가장 중요한 유지보수까지 책임지고 함께하는 파트너가 되어 좋은 프로젝트를 함께 이루어가길 희망합니다.
감사합니다.
      </span></p>
      <div class = "info2">
        <span class = "person3">내용내용</span>
      </div>
  </div>
  <div class = "block2" style = "position:relative;
  display: inline-block;
  vertical-align: middle;
  /* border : 1px solid black; */
  font-size: 13px;
  width: 350px;
  height: 256px;
  margin-top:-167px;">

  <div class = "context2" style = "font-size:13px;">
    <span id = "lan">PHP</span>
    <span id = "lan">ASP</span>
    <span id = "lan">JSP</span>
    <span id = "lan">ASP.NET</span>
    <span id = "lan">JavaScript</span>..
  </div>
  
  <div class = "context3">
    <ul>
      <li class = "certi">
        <p id = "c1"><span>신원 인증</span></p>
        <p id = "c2"><span>실사 인증</span></p>
      </li>
      <li class = "certi2">
        <p id = "c3"><span>계약</span></p>
      </li>
      <li class = "certi3">
        <p id = "c4"><span>포트폴리오</span></p>
      </li>
      <li class = "certi4">
        <p id = "c5"><span>동영상 인터뷰</span></p>
      </li>

    </ul>
  </div>

  <div class = "money">
    <span>누적계약금액 :</span>
     <span id = "money2">543,130,000</span>
    <span id = "money3">원</span>
    <div class ="money2">
      543,130,000
      <span id = "money3">원</span>

    </div>
  </div> 

  </div>

  
</div>
<div class = "div1_5" style = "display:inline-block;">
  <h3 id = "projectname">프로젝트 제목 제목 예시 예시</h3>
  <div class = "block" style = "display:inline-block;">
  <div class = "block2" style = "display:inline-block;">
  <div class = "picture"><img src = "/win/images/developer.png"></div>
  <div class = "picture2"><img src = ""></div>
  <div class = "starfont" style =""></div>
  </div> 
  </div>

  <div class="block" style="position: relative;
  display: inline-block;
   /* border: 1px solid;  */
  height: 200px;
  top: -165px;
  width: 500px;
  margin-left: 27px;">

    <div class = "info1">
      <span style="margin: 13px;">개발자 아이디 </span>
      <span class= "person">개인사업자<span>
        <span class = "person2">개발</span>
      </div>
      <p id = "context"><span id ="text2">
        "하나를 만들더라도 제대로 만들어보자"
란, 단 하나의 슬로건을 중심으로 다양한 분야의 스타일(style)을 가진 사람들이 구성된 회사 온스타일러(onstyler)입니다.
그저 개발만 하면 끝나버리는 기존의 획일적인 개발사에서 벗어나, 내가 만들었다는 프라이드를 만들기 위해 존제합니다.
또한 다양한 분야에서 주력 개발을 해온 10년~20년차 개발자, 디자이너, 퍼블리셔 그리고 기획자로 구성된 회사입니다.
인력 구성원 한명한명이 단순한 개발뿐만이 아닌, 내 아이템처럼 기획하고, 내 아이템처럼 생각하며, 내 아이템처럼 개발해 나가고 있습니다.
최근까지 삼성 스마트폰, 스마트TV 출시마다 탑제되는 주력 앱 개발은 물론, 삼성전자 앱마켓인 삼성마켓 개발 또한 참여했습니다.
이 외에도 서울대 학사행정 시스템부터 롯데슈퍼타워2 건설공정관리 시스템, 이랜드몰, 삼성자산운용 ATIS 시스템, KTX 산천 멀티미디어 시스템 구축부터 스마트 안전관리 앱 강동안전플러스까지 대기업, 관공서, 대학교부터 중소기업까지 1,000여개의 프로젝트를 성공리에 진행한 다양한 경험을 가지고 있습니다.
이런 수년간의 경험에서 얻어지는 노하우는 최고의 파트너가 되기에 충분하리라 생각합니다.
프로젝트를 진행하며 가장 중요한 것은 믿을 수 있는 기술력을 가진 파트너쉽과 책임감입니다.
하나를 만들더라도 내가 자신있게 추천할 수 있도록 제대로 만들자는 단 하나의 목표를 가지고 그동안 쌓아온 커리어와 노하우에서 얻어지는 파트너쉽과 끝까지 함께하는 책임감을 드리겠습니다.
또한 개발 이후 가장 중요한 유지보수까지 책임지고 함께하는 파트너가 되어 좋은 프로젝트를 함께 이루어가길 희망합니다.
감사합니다.
      </span></p>
      <div class = "info2">
        <span class = "person3">내용내용</span>
      </div>
  </div>
  <div class = "block2" style = "position:relative;
  display: inline-block;
  vertical-align: middle;
  /* border : 1px solid black; */
  font-size: 13px;
  width: 350px;
  height: 256px;
  margin-top:-167px;">

  <div class = "context2" style = "font-size:13px;">
    <span id = "lan">PHP</span>
    <span id = "lan">ASP</span>
    <span id = "lan">JSP</span>
    <span id = "lan">ASP.NET</span>
    <span id = "lan">JavaScript</span>..
  </div>
  
  <div class = "context3">
    <ul>
      <li class = "certi">
        <p id = "c1"><span>신원 인증</span></p>
        <p id = "c2"><span>실사 인증</span></p>
      </li>
      <li class = "certi2">
        <p id = "c3"><span>계약</span></p>
      </li>
      <li class = "certi3">
        <p id = "c4"><span>포트폴리오</span></p>
      </li>
      <li class = "certi4">
        <p id = "c5"><span>동영상 인터뷰</span></p>
      </li>

    </ul>
  </div>

  <div class = "money">
    <span>누적계약금액 :</span>
     <span id = "money2">543,130,000</span>
    <span id = "money3">원</span>
    <div class ="money2">
      543,130,000
      <span id = "money3">원</span>

    </div>
  </div> 

  </div>

  
</div>
<div class = "div1_6" style = "display:inline-block;">
  <h3 id = "projectname">프로젝트 제목 제목 예시 예시</h3>
  <div class = "block" style = "display:inline-block;">
  <div class = "block2" style = "display:inline-block;">
  <div class = "picture"><img src = "/win/images/developer.png"></div>
  <div class = "picture2"><img src = ""></div>
  <div class = "starfont" style =""></div>
  </div> 
  </div>

  <div class="block" style="position: relative;
  display: inline-block;
   /* border: 1px solid;  */
  height: 200px;
  top: -165px;
  width: 500px;
  margin-left: 27px;">

    <div class = "info1">
      <span style="margin: 13px;">개발자 아이디 </span>
      <span class= "person">개인사업자<span>
        <span class = "person2">개발</span>
      </div>
      <p id = "context"><span id ="text2">
        "하나를 만들더라도 제대로 만들어보자"
란, 단 하나의 슬로건을 중심으로 다양한 분야의 스타일(style)을 가진 사람들이 구성된 회사 온스타일러(onstyler)입니다.
그저 개발만 하면 끝나버리는 기존의 획일적인 개발사에서 벗어나, 내가 만들었다는 프라이드를 만들기 위해 존제합니다.
또한 다양한 분야에서 주력 개발을 해온 10년~20년차 개발자, 디자이너, 퍼블리셔 그리고 기획자로 구성된 회사입니다.
인력 구성원 한명한명이 단순한 개발뿐만이 아닌, 내 아이템처럼 기획하고, 내 아이템처럼 생각하며, 내 아이템처럼 개발해 나가고 있습니다.
최근까지 삼성 스마트폰, 스마트TV 출시마다 탑제되는 주력 앱 개발은 물론, 삼성전자 앱마켓인 삼성마켓 개발 또한 참여했습니다.
이 외에도 서울대 학사행정 시스템부터 롯데슈퍼타워2 건설공정관리 시스템, 이랜드몰, 삼성자산운용 ATIS 시스템, KTX 산천 멀티미디어 시스템 구축부터 스마트 안전관리 앱 강동안전플러스까지 대기업, 관공서, 대학교부터 중소기업까지 1,000여개의 프로젝트를 성공리에 진행한 다양한 경험을 가지고 있습니다.
이런 수년간의 경험에서 얻어지는 노하우는 최고의 파트너가 되기에 충분하리라 생각합니다.
프로젝트를 진행하며 가장 중요한 것은 믿을 수 있는 기술력을 가진 파트너쉽과 책임감입니다.
하나를 만들더라도 내가 자신있게 추천할 수 있도록 제대로 만들자는 단 하나의 목표를 가지고 그동안 쌓아온 커리어와 노하우에서 얻어지는 파트너쉽과 끝까지 함께하는 책임감을 드리겠습니다.
또한 개발 이후 가장 중요한 유지보수까지 책임지고 함께하는 파트너가 되어 좋은 프로젝트를 함께 이루어가길 희망합니다.
감사합니다.
      </span></p>
      <div class = "info2">
        <span class = "person3">내용내용</span>
      </div>
  </div>
  <div class = "block2" style = "position:relative;
  display: inline-block;
  vertical-align: middle;
  /* border : 1px solid black; */
  font-size: 13px;
  width: 350px;
  height: 256px;
  margin-top:-167px;">

  <div class = "context2" style = "font-size:13px;">
    <span id = "lan">PHP</span>
    <span id = "lan">ASP</span>
    <span id = "lan">JSP</span>
    <span id = "lan">ASP.NET</span>
    <span id = "lan">JavaScript</span>..
  </div>
  
  <div class = "context3">
    <ul>
      <li class = "certi">
        <p id = "c1"><span>신원 인증</span></p>
        <p id = "c2"><span>실사 인증</span></p>
      </li>
      <li class = "certi2">
        <p id = "c3"><span>계약</span></p>
      </li>
      <li class = "certi3">
        <p id = "c4"><span>포트폴리오</span></p>
      </li>
      <li class = "certi4">
        <p id = "c5"><span>동영상 인터뷰</span></p>
      </li>

    </ul>
  </div>

  <div class = "money">
    <span>누적계약금액 :</span>
     <span id = "money2">543,130,000</span>
    <span id = "money3">원</span>
    <div class ="money2">
      543,130,000
      <span id = "money3">원</span>

    </div>
  </div> 

  </div>

  
</div>
<div class = "div1_7" style = "display:inline-block;">
  <div class = "block" style = "display:inline-block;">
  <div class = "block2" style = "display:inline-block;">
  <div class = "picture"><img src = "/win/images/developer.png"></div>
  <div class = "picture2"><img src = ""></div>
  <div class = "starfont" style =""></div>
  </div> 
  </div>

  <div class="block" style="position: relative;
  display: inline-block;
   /* border: 1px solid;  */
  height: 200px;
  top: -165px;
  width: 500px;
  margin-left: 27px;">

    <div class = "info1">
      <span style="margin: 13px;">개발자 아이디 </span>
      <span class= "person">개인사업자<span>
        <span class = "person2">개발</span>
      </div>
      <p id = "context"><span id ="text2">
        "하나를 만들더라도 제대로 만들어보자"
란, 단 하나의 슬로건을 중심으로 다양한 분야의 스타일(style)을 가진 사람들이 구성된 회사 온스타일러(onstyler)입니다.
그저 개발만 하면 끝나버리는 기존의 획일적인 개발사에서 벗어나, 내가 만들었다는 프라이드를 만들기 위해 존제합니다.
또한 다양한 분야에서 주력 개발을 해온 10년~20년차 개발자, 디자이너, 퍼블리셔 그리고 기획자로 구성된 회사입니다.
인력 구성원 한명한명이 단순한 개발뿐만이 아닌, 내 아이템처럼 기획하고, 내 아이템처럼 생각하며, 내 아이템처럼 개발해 나가고 있습니다.
최근까지 삼성 스마트폰, 스마트TV 출시마다 탑제되는 주력 앱 개발은 물론, 삼성전자 앱마켓인 삼성마켓 개발 또한 참여했습니다.
이 외에도 서울대 학사행정 시스템부터 롯데슈퍼타워2 건설공정관리 시스템, 이랜드몰, 삼성자산운용 ATIS 시스템, KTX 산천 멀티미디어 시스템 구축부터 스마트 안전관리 앱 강동안전플러스까지 대기업, 관공서, 대학교부터 중소기업까지 1,000여개의 프로젝트를 성공리에 진행한 다양한 경험을 가지고 있습니다.
이런 수년간의 경험에서 얻어지는 노하우는 최고의 파트너가 되기에 충분하리라 생각합니다.
프로젝트를 진행하며 가장 중요한 것은 믿을 수 있는 기술력을 가진 파트너쉽과 책임감입니다.
하나를 만들더라도 내가 자신있게 추천할 수 있도록 제대로 만들자는 단 하나의 목표를 가지고 그동안 쌓아온 커리어와 노하우에서 얻어지는 파트너쉽과 끝까지 함께하는 책임감을 드리겠습니다.
또한 개발 이후 가장 중요한 유지보수까지 책임지고 함께하는 파트너가 되어 좋은 프로젝트를 함께 이루어가길 희망합니다.
감사합니다.
      </span></p>
      <div class = "info2">
        <span class = "person3">내용내용</span>
      </div>
  </div>
  <div class = "block2" style = "position:relative;
  display: inline-block;
  vertical-align: middle;
  /* border : 1px solid black; */
  font-size: 13px;
  width: 350px;
  height: 256px;
  margin-top:-167px;">

  <div class = "context2" style = "font-size:13px;">
    <span id = "lan">PHP</span>
    <span id = "lan">ASP</span>
    <span id = "lan">JSP</span>
    <span id = "lan">ASP.NET</span>
    <span id = "lan">JavaScript</span>..
  </div>
  
  <div class = "context3">
    <ul>
      <li class = "certi">
        <p id = "c1"><span>신원 인증</span></p>
        <p id = "c2"><span>실사 인증</span></p>
      </li>
      <li class = "certi2">
        <p id = "c3"><span>계약</span></p>
      </li>
      <li class = "certi3">
        <p id = "c4"><span>포트폴리오</span></p>
      </li>
      <li class = "certi4">
        <p id = "c5"><span>동영상 인터뷰</span></p>
      </li>

    </ul>
  </div>

  <div class = "money">
    <span>누적계약금액 :</span>
     <span id = "money2">543,130,000</span>
    <span id = "money3">원</span>
    <div class ="money2">
      543,130,000
      <span id = "money3">원</span>

    </div>
  </div> 

  </div>
 -->
  
</div>

  <div class = "money">
    <span>누적계약금액 :</span>
    <!-- <span id = "money2">543,130,000</span>
    <span id = "money3">원</span> -->
    <div class ="money2">
      543,130,000
      <span id = "money3">원</span>

    </div>
  </div>

  </div>

  
</div>
<div class="pagingArea" align="center">
			<button onclick="location.href='<%= request.getContextPath() %>/dlist.do?currentPage=1'"><<</button>
			<%  if(currentPage <= 1){  %>
			<button disabled><</button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/dlist.do?currentPage=<%=currentPage - 1 %>'"><</button>
			<%  } %>
			
			<% for(int p = startPage; p <= endPage; p++){
					if(p == currentPage){	
			%>
				<button disabled><%= p %></button>
			<%      }else{ %>
				<button onclick="location.href='<%= request.getContextPath() %>/dlist.do?currentPage=<%= p %>'"><%= p %></button>
			<%      } %>
			<% } %>
				
			<%  if(currentPage >= maxPage){  %>
			<button disabled>></button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/dlist.do?currentPage=<%=currentPage + 1 %>'">></button>
			<%  } %>
			<button onclick="location.href='<%= request.getContextPath() %>/dlist.do?currentPage=<%= maxPage %>'">>></button>
			
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
</script>

  <!-- </div> -->


  <!-- Footer (시작점)-->
    
<section class="last">
    <div class="last_container">
        <small>Copyright &copy; Your Website 2020</small>
    </div>
</section>



</body>

</html>

<%@page import="com.winwin.jsp.projectComment.model.vo.ProjectComment"%>
<%@page import="com.winwin.jsp.project.model.vo.Project"%>
<%@page import="java.util.ArrayList"%>


<%ArrayList<Project> list = (ArrayList<Project>)request.getAttribute("list"); 
  Project p = (Project)request.getAttribute("project");
  ArrayList<ProjectComment> plist = (ArrayList<ProjectComment>)request.getAttribute("plist");
  String type ="";
  System.out.println(p.getPtype());
   if(!p.getPtype().isEmpty()){
	  switch(p.getPtype().trim()){
	  case "plan": type="기획"; break;
	  case "design": type="디자인"; break;
	  case "develop": type="개발"; break;
	  case "develop,design": type="개발 + 디자인"; break; 
	  case "develop,design, plan": type="개발 + 디자인 + 기획"; break;
	  case "develop,plan": type="개발 + 기획"; break;
	  case "design,plan": type="디자인 + 기획"; break;
	  }
  } 
%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>프로젝트 설명 상세</title>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- Custom fonts for this theme -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
        type="text/css">

    <!-- Theme CSS -->
    <link href="/semi/resources/css/freelancer.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/semi/resources/css/mainpagecss.css">
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <style>
        #content-wrap {
            width: 100%;
            height: 100%;
           /*  margin: 0px; */
           
           	margin-left:auto;
		margin-right:auto;
		margin-top:50px;
        }

        .container {
            margin: 3%;
            border: solid lightgrey 1px;
        }

        .project-header {
            border-bottom: solid grey 1px;

            font-size: 28px;
            margin: 5%;
            margin-bottom: 0px;
        }

        .project-content {
            margin: 5%;
            margin-top: 7px;
        }

        .small-menu {
            font-size: 14px;
            color: grey;
        }

        .back {
            background-color: skyblue;
            color: grey;
        }

        .basic-info {
            margin-top: 20px;
            padding-left: 20px;
            background: #f7f7f7;
            border: 1px solid #dedede;
            border-radius: 2px;
            padding-top: 3px;
            padding-bottom: 3px;
            line-height: 38px;
            font-size: 16px;
        }

        #project-apply {
            margin-left: 35%;
            width: 350px;
            height: 50px;
        }

        .comment {
            margin-top: -3%;
            margin-left: 4%;
        }

        .comment-send {
            margin-right: 20%;
        }

    </style>
</head>

    <!-- Navigation -->
    <!-- <nav>
        <ul>
            <li class="logo"><a href = "/semi/mainpage.jsp" style="padding:0px;"><img src="/semi/resources/images/win_win.png"></a></li>
            <li><a href="/semi/plist.do">프로젝트 찾기</a></li>
            <li><a href="developer.jsp">개발자 찾기</a></li>
            <li><a href="signupProject.jsp">프로젝트 등록</a></li>
            <li><a href="#">이용방법</a></li>
            <li class="login"><a href="LoginUser.html">로그인</a></li>
            <li class="signup"><a href="JoinUser.html">회원가입</a></li>
        </ul>
    </nav> -->
    
    <!-- 상단바 끝 -->
	<%@ include file="/views/common/header.jsp" %>
    <body>
    
        <div id="content-wrap">
            <!-- <div class="back">
                <a href='/semi/plist.do' style="margin: 10px; font-size: 16px;"><i class="fa fa-undo"></i> 프로젝트로 돌아가기
                </a>
            </div> -->

            <div class="container">
                <div class="project-header"><span><%=p.getPtitle() %></span> <!-- <span class="label label-info"
                        style="font-size: 16px;">마감 2주전</span> -->
                </div>
                <div class="project-content">
                    <p class="small-menu">
                      <%=type %></p>
                    <p class="small-menu"><i class="fa fa-file-alt"> 10 </i> 명 지원</p>
                    <div class="basic-info">
                        <table class="table" style="margin-bottom: -3%;">
                            <thead>
                                <th>예상 금액</th>
                                <th>예상 기간</th>
                                <th>모집 마감</th>
                            </thead>
                            <tbody>
                                <td id="price"><%=p.getPcost() %></td>
                                <td id="term"><%=p.getPgo() %></td>
                                <td id="ad-close"><%=p.getPend() %></td>
                            </tbody>
                        </table>
                        <br>
                    </div>
                    <hr>
                    <table class="table table-striped table-sm" id="table-first-row">
                        <thead>
                            <th>기획 상태</th>
                            <th>매니징 경험</th>
                            <th>등록 일자</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td id="status"><%=type %>                                </td>
                                <td id="manage-experience">임시</td>
                                <td id="post-date"><%=p.getPenroll() %></td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="table table-striped" id="table-second-row">
                        <thead>
                            <th>예상 시작일</th>
                            <th>미팅 방식</th>
                            <th>위치</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td id="status"><%=p.getPstart() %></td>
                                <td id="manage-experience">임시</td>
                                <td id="post-date"><%=p.getPbang() %></td>
                            </tr>
                        </tbody>
                    </table>
                    <h3>프로젝트 내용</h3><br>
                    <div class="main-content">
                        <%=p.getPcotx() %>
                    </div>
                    <hr>
                        <div class="skill-tag">
                        <h3>관련 기술</h3>
                        <label class="label label-default" id="HTML5">HTML5</label>
                        <label class="label label-default" id="CSS3">CSS3</label>
                        <label class="label label-default" id="JavaScript">JavaScript</label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-info btn-lg" id="project-apply">프로젝트 지원하기</button>
                    <br><hr></hr>
                </div>
                
                <div id="replySelectArea">
			<!-- 게시글의 댓글들을 보여주는 부분  -->
			<% if (plist != null) { %>
				<% for(ProjectComment pco : plist) { %>
				
				<table id="replySelectTable" class="replyList" style="color: black; margin-left: 3%;">
		  		<tr>
		  			<td rowspan="2" > </td>
					<td ><b><%= pco.getEwriterId() %></b></td>
					<td ><%= pco.getEdate() %></td>
					
					<%-- <td align="center">
 					<%if(m.getUserId().equals(pco.getEwriterId())) { %>
						<input type="hidden" name="cno" value="<%=pco.getCno()%>"/>
							  
						<button type="button" class="updateBtn" 
							onclick="updateReply(this);">수정하기</button>
							
						<button type="button" class="updateConfirm"
							onclick="updateConfirm(this);"
							style="display:none;" >수정완료</button> &nbsp;&nbsp;
							
						<button type="button" class="deleteBtn"
							onclick="deleteReply(this);">삭제하기</button>
							
					 
					<% } %>
					</td> --%>
				</tr>
				<tr class="comment replyList">
					<td colspan="3" style="background : transparent;">
					<textarea class="reply-content" cols="105" rows="3"
					 readonly="readonly"style="width:1140px;"><%= pco.getEcontent() %></textarea>
					</td>
				</tr>
			</table>
			
			<% } } else { %>
			<p>현재 등록된 댓글이 없습니다.<br>
			   첫 댓글의 주인공이 되어 보세요!</p>
			<% } %>
			</div>
                
                <div class="apply">	
                </div>
                <div class="comment">
                    <form id="comment-form" name="comment-form" method="post">
                        <br><br>
                            <div>
                                <div>
                                    <span><strong><h3>프로젝트 문의하기</h3></strong></span>
                                </div>
                            <div>
                                <table class="table">                  <tr>
                                        <td>
                                            <textarea style="width: 1100px" rows="3" cols="30" id="comment" name="comment"></textarea>
                                            <br>
                                            <div class="comment-send">
                                                <button type="submit" id ="submit" class="btn pull-right btn-success">등록</button>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            </div>
                            <input type="hidden" id="" name="" value="" />        
                    </form>
            </div>
        </div>
		<script>
		
		var pno = '<%=p.getPno()%>';
		
		var parent = $(obj).parent();
		var grandparent = parent.parent();
		var siblingsTR = grandparent.siblings().last();
		
		var content = siblingsTR.find('textarea').val();
		
		<%-- $("button").on({
		    click:function(){
		$('#submit').click(function(){
			location.href='/semi/cinsert.bo'
				+'?writer=<%=m.getUserId() %>'
				+ '&comment=' + content
				+ '&pno=' + pno;
		});
		    }
		}); --%>
	<%-- 	function cSubmit(){
			var pno = '<%=p.getPno()%>';
			
			var content = $('#comment').val();
			
			location.href='/semi/cinsert.bo'
					+'?writer=<%=m.getUserId() %>'
					+ '&comment=' + content
					+ '&pno=' + pno;
					
			
		} --%>
		</script>
        <!-- Footer (시작점)-->
        <section class="footer">
            <div class="last_container">
                <small>Copyright &copy; Your Website 2020</small>
            </div>
        </section>
    </body>

</html>
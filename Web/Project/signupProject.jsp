<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="/semi/resources/css/pignose.calendar.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
    <script src="/semi/resources/js/pignose.calendar.full.min.js"></script>

    <link rel="stylesheet" href="/semi/resources/css/mainpagecss.css">
    <link rel="stylesheet" href="/semi/resources/css/signupProject.css">
</head>
<body>
    <nav>
        <ul>
            <li class="logo"><a href = "/semi/mainpage.jsp" style="padding:0px;"><img src="/semi/resources/images/win_win.png"></li>
            <li><a href ="../plist.do">프로젝트 찾기</a></li>
            <li><a href ="/semi/Project/developer.jsp">개발자 찾기</a></li>
            <li><a href ="/semi/Project/signupProject.jsp">프로젝트 등록</a></li>
            <li><a href ="#">이용방법</a></li>
            <li class="login"><a href ="mypage1.html">마이페이지</a></li>
        </ul>
    </nav>

    <div class="project">
        <div class="page_project">
            <div class="pro_container">
                <header class="project_signup">
                    <h2> 프로젝트 등록</h2>
                </header>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/pinsert.do" class="form_pro">
        <div class="projectdiv">
            <div class="projectway">
                <label class="project_title">프로젝트 진행방식<span class="star">*</span></label>
                <p class="project_explain">프로젝트에 적합한 작업자를 모집하기 위해 프로젝트 진행방식을 선택해주세요.</p>
                <div class="project_form">
                    <label class="input_replace" for="project_form_1_content">
                    <div class="project_form_1" >
                        <input id="project_form_1_content" name="project_type" type="radio" value="외주" >
                       
                        <div class="card_image">
                            <img class="cardimg" src=/semi/resources/images/user.png>
                        <div class="select_card1">
                            <p class="select_card_ment1">프로젝트 단위로 계약</p>
                            <p class="select_card_ment2">외주</p>
                        </div>
                    </div>
                </label>
                </div>
                <label class="input_replace" for="project_form_2_content">
                    <div class="project_form_2">
                        <input id="project_form_2_content" name="project_type" type="radio" value="상주">
                        <div class="card_image">
                            <img class="cardimg" src=/semi/resources/images/desk.png>
                        <div class="select_card2">
                            <p class="select_card_ment3">인력을 기간 단위로 구인</p>
                            <p class="select_card_ment4">상주(근무 장소 지정)</p>
                        </div>
                    </label>
                    </div>
                 </div>
                </div>
            </div>

            <!-- <div class="projectgroup">
                <label class="project_title">프로젝트 진행분류 <span class="star">*</span></label>
                <div class="pro_group">
                    <ul class="group_radio">
                        <li class="group_radio_1">
                            <label class="radio-client"><span><input type="radio" name="radio_group">신규 프로젝트를 진행하려합니다.</span></label>
                        </li>
                        <li class="group_radio_2">
                            <label class="radio-client"><span><input type="radio" name="radio_group">운영중인 서비스를 리뉴얼 또는 유지보수하려고합니다.</span></label>
                        </li>
                    </ul>
                </div>
            </div> -->

            <div class="projectName">
                <label class="project_title">프로젝트 제목<span class="star"> *</span></label>
                <div class="pro_name_content">
                    <div class="string_input">
                        <input class="pro_Name_String_input" name="title" placeholder="예)JAVA FRAMEWORKS 구축" type="text" data-maxlength="30">
                        <div class="String_detail">
                            <p class="String_detail_content">50자 이내로 작성해주세요</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="projectCategory">
                <label class="project_title">프로젝트 카테고리<span class="star">*</span></label>
                <p class="project_explain">해당되는 프로젝트 카테고리를 모두 선택해주세요.</p>
                <div class="category_content">
                    <label class="input-replacer" for="category_develop">
                    <div class="category">
                        <input id="category_develop" name="category" value="develop" type="checkbox">
                        <div class="select_category_image">
                            <img class="select_img" src="/semi/resources/images/develop.png">
                            <p class="select_category_ment"> 개발</p>
                        </div>
                    </div>
                    </label>

                    <label class="input-replacer" for="category_design">
                    <div class="category">
                        <input id="category_design" name="category" value="design" type="checkbox">
                        <div class="select_category_image">
                            <img class="select_img" src="/semi/resources/images/design1.png">
                            <p class="select_category_ment">디자인</p>
                        </div>
                    </div>
                    </label>

                    <label class="input-replacer" for="category_plan">
                    <div class="category">
                        <input id="category_plan" name="category" value="plan" type="checkbox">
                        <div class="select_category_image">
                            <img class="select_img" src="/semi/resources/images/plan.png">
                            <p class="select_category_ment">기획</p>
                        </div>
                    </div>
                    </label>

                    <div class="category_detail" id="subcategory">
                        <label class="project_title">상세 카테고리<span class="star">*</span></label>
                        <div class="subcategory_list">
                            <label class="subcategory_choice"><input name="subcategory_ch" id="choicesub"value="1" type="checkbox"><span class="cata">웹</span></label>
                            <label class="subcategory_choice"><input name="subcategory_ch" value="2" type="checkbox"><span class="cata">애플리케이션</span></label>
                            <label class="subcategory_choice"><input name="subcategory_ch" value="3" type="checkbox"><span class="cata">퍼블리싱</span></label>
                            <label class="subcategory_choice"><input name="subcategory_ch" value="4" type="checkbox"><span class="cata">쇼핑몰</span></label>
                            <label class="subcategory_choice"><input name="subcategory_ch" value="5" type="checkbox"><span class="cata">게임</span></label>
                            <label class="subcategory_choice"><input name="subcategory_ch" value="6" type="checkbox"><span class="cata">임베디드</span></label>
                            <label class="subcategory_choice"><input name="subcategory_ch" value="7" type="checkbox"><span class="cata">그래픽</span></label>
                            <label class="subcategory_choice"><input name="subcategory_ch" value="8" type="checkbox"><span class="cata">영상</span></label>
                        </div>
                    </div>

                    <div class="form_project_content_detail">
                        <div class="project_content_detail">
                            <label class="project_title">상세 업무 내용 <span class="star">*</span></label>
                        </div>
                        <div class="project_datail_list">
                            <div class="ment_list">
                                <img class = "detail_img" src="/semi/resources/images/check.png">
                                <p class="check_list">필요한 내용을 적어주세요.</p>
                            </div>
                            <div class="ment_list">
                                <img class = "detail_img"  src="/semi/resources/images/check.png">
                                <p class="check_list">업무 내용을 상세하게 작성해주실수록, 더 적합한 파트너를 만나실 수 있습니다.</p>
                            </div>
                            <div class="ment_list">
                                <img class = "detail_img"  src="/semi/resources/images/check.png">
                                <p class="check_list">파트너가 알아야할 유의사항(필수사항 , 전문 경험 등) 도 함께 작성해주세요.</p>
                            </div>
                        </div>
                        <div class="project_detail_form">
                            <textarea class="project_detail_textarea" data-maxlength="5000" name="description" rows="15" style="resize:none">

※프로젝트의 현재 상황

   Ex) 기획, 디자인여부, PM여부, 진행계획 등


※상세한 업무 내용

   Ex) 주요 기능 List, 작업분량(페이지 수), 필요조건 , 개발환경 등 


※참고 / 유의 사항
                            </textarea>
                            <div class="String_detail_ment">
                                <p class="detail_ment">5000자 이내로 작성해주세요.</p>
                                <p class="count_detail_ment">
                                    <span class="count_detail_length">119</span>/5000
                                </p>
                            </div>
                        </div>
                    </div>


                    <div class="projectmoney">
                        <label class="project_title">프로젝트 지출 가능 예산 <span class="star">*<span></label>
                        <p class="projectmoney_ment">지출 가능 예싼은 개발자 1인당 월 단위로 받는 실수령액이며, 사업소득(3.3%)이 포함된 금액입니다.<br>
                                                     WIn WIn 이용요금(5%)은 별도 입니다.
                        </p>
                        <div class="projectmoney_choice">
                            <div class="money_choice_box">
                                <div class="choice_year">
                                    <select class="custom_choice_year" name = "career">
                                        <option value="no">경력무관</option>
                                        <option value="beginner">1~2년차</option>
                                        <option value="low">3~4년차</option>
                                        <option value="middle">5~9년차</option>
                                        <option value="high">10년 차 이상</option>
                                    </select>
                                    <!-- <div class="custom_choice_year1">
                                        <span class="current">1~2년 차</span>
                                        <ul class="year_list">
                                            <li data-value="no" class="option">경력무관</li>
                                            <li data-value="beginner" class="option">1~2년 차</li>
                                            <li data-value="low" class="option">3~4년 차</li>
                                            <li data-value="middle" class="option">5~9년차</li>
                                            <li data-value="high" class="option">10년 차 이상 </li>
                                        </ul>
                                    </div> -->
                                </div>
                                <div class="choice_count">
                                    <input class="client_input" data-right-measure="명" name="count_number" type="number" style="padding-right:34px">
                                    <span class="count">명</span>
                                </div>

                                <div class="month_money">
                                    <input name="cost" class="client_month_money" placeholder="1인당 월 실수령액">
                                    <span class="right_client_month_money">/월</span>
                                </div>

                                
                                <div class="checkclient">
                                    <label class="checkbox_client">
                                        <span>
                                            <input name="conf1" class="moeny_notice" type="checkbox">
                                        </span>
                                            <span class="money_noticement"> 프로젝트 예산의 협의가 가능합니다.</span>
                                    </label>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                    

                    <div class="start_Date_div">
                        <label class="start_date">예상 시작일<span class="star">*<span></span></label>
                        <p class="start_date_mentent">
                            파트너가 프로젝트에 착수하는 날짜입니다.<br>
                            해당 날짜에 프로젝트 시작이 가능한 파트너들이 지원하게 됩니다
                        </p>
                        <div class="start_date_option">
                            <input class="client_input_start" data-toggle="datepicker" name="launch_date" readonly="readonly" placeholder="날짜선택" type="text" id="text-calendar1">
                            <div>
                                <div>
                                    <label class="checkbox_client">
                                        <span>
                                            <input name="conf2" class="Date_notice" type="checkbox">
                                        </span>
                                        <span class="Date_notice_ment"> 프로젝트 착수 일자의 협의가 가능합니다.</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <div class="project_ing">
                        <label class="project_date_ing">예상 진행 기간<span class="star">*<span></span></label>
                        <p class="date_ing_ment">
                            프로젝트 진행 기간을 선택해주세요.
                        </p>
                        <div class="choice_project_Ling">
                            <ul class="cpLing">
                                <li>
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="상담 후 결정">상담 후 결정
                                    </label>
                                </li>
                                <li class="input_radioB">
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="1주일 이내">1주일 이내
                                    </label>
                                </li>
                                <li class="input_radioB">
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="2주일 이내">2주일 이내
                                    </label>
                                </li>
                                <li class="input_radioB">
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="3주일 이내">3주일 이내
                                    </label>
                                </li>
                                <li class="input_radioB">
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="1개월 이내">1개월 이내
                                    </label>
                                </li>
                            </ul>
                        </div>

                        <div class="choice_project_Ring">
                            <ul class="cpLing"> 
                                <li>
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="2개월 이내">2개월 이내
                                    </label>
                                </li>
                                <li class="input_radioB">
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="3개월 이내">3개월 이내
                                    </label>
                                </li>
                                <li class="input_radioB">
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="4개월 이내">4개월 이내
                                    </label>
                                </li>
                                <li class="input_radioB">
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="5개월 이내">5개월 이내
                                    </label>
                                </li>
                                <li class="input_radioB">
                                    <label class="input_ing">
                                        <input type="radio" name="ra_bu" value="6개월 이상">6개월 이상
                                    </label>
                                </li>
                                <li class="input_radioB">

                                </li>
                            </ul>
                        </div>
                    </div>

                    

                    <div class="project_notice_deadline">
                        <label class="project_deadline">공고 마감일<span class="star">*<span></span></label>
                        <p class="date_deadline_ment">
                            지원자 모집 기간 중에도 파트너 선정과 계약 진행이 가능합니다.
                            공고 기간 중에도 취소요청이 가능합니다.
                        </p>
                        <div class="deadline_form">
                            <input class="date_deadine" name="deadline" data-toggle="datepicker" placeholder="가능 일자 선택" readonly="readonly" type="text" id="text-calendar2">
                        </div>
                    </div>









                </div>
            </div>

            <div class="button">
                <button type="submit" class="button_style">이용등록</button>
            </div>


            <script>
                // 공고마감 , 예상 시작일 캘린더 
                $(document).ready(function() {
                    $('#text-calendar1').pignoseCalendar({
                        theme: 'blue',
                        format: 'YYYY-MM-DD',
                        // disabledWeekdays: [0, 6], // SUN (0), SAT (6)
                        minDate: moment().format("YYYY-MM-DD") 
                    });
                });

                $(document).ready(function() {
                    $('#text-calendar2').pignoseCalendar({
                        theme: 'blue',
                        format: 'YYYY-MM-DD',
                        minDate: moment().format("YYYY-MM-DD") 
                    });
                });
            </script>





        </div>      
    </form>




    <section class="last">
        <div class="last_container">
            <small>Copyright &copy; Your Website 2020</small>
        </div>
    </section>
</body>
</html>
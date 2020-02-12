<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>found_id</title>
    <link rel="stylesheet" href="/win/css/found_id.css">
</head>
<body>
    <div class="full_sc">
    <form method="POST">
        <div class="logo"><img src="/win/images/winwin_logo.PNG"></div>
        <div class="foundid">
            <div class="div_phone">
            <input class="id_phone" name="radioB" type="radio" value="id"><label class="id_phone">회원정보에 등록한 휴대전화로 인증</label>
            <p class="foundid_ment">회원정보에 등록된 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 인증번호를 받을 수 있습니다.</p>
            </div>
            <div class="div_phone_info">
                <dt class="info_name"><label class="label_txt">이름</label></dt>
                <dd class="info_name1"><input type="text" id="user_name" name="user_id" class="found_userid" required></dd><br><br>
                <dt class="info_phone"><label class="label_txt">휴대전화</label></dt>
                <dd class="info_phone1">
                    <span class="list">
                        <select class="phone_list">
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="019">019</option>
                        </select>
                    </span>
                    <input type="text" id="phone" name="user_phone" class="found_userid" required> 
                    <input type="button" id="identify" name="user_identify" class="found_userid" value="인증번호 받기">
                <div class="div_phone_info">
                    <dd class="info_identify"><input type="text" id="number" name="iden_num" class="found_userid" placeholder="인증번호 6자리 숫자 입력"></dd>
                </div>
            </div>
        </div>
            <hr class="hrline">
        <div class="foundid">
        <div class="div_email">
            <input class="id_email" name="radioB" type="radio" value="email"><label class="id_email">본인확인 이메일로 인증</label>
            <p class="foundid_ment">본인확인 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.</p>
            <div class="div_phone_info">
                <dt class="info_name"><label class="label_txt">이름</label></dt>
                <dd class="info_name1"><input type="text" id="user_name" name="user_id" class="found_userid" required></dd><br><br>
                <dt class="info_phone"><label class="label_txt">이메일</label></dt>
                <dd class="info_phone1">
                    <input type="email" id="phone" name="user_phone" class="found_userid" required> 
                    <input type="button" id="identify" name="user_identify" class="found_userid" value="인증번호 받기">
                <div class="div_phone_info">
                    <dd class="info_identify"><input type="text" id="number" name="iden_num" class="found_userid" placeholder="인증번호 6자리 숫자 입력"></dd>
                </div>
        </div>
        </div>
    </div>
    <input type="submit" value="확인" class="sub_btn">
    </form>
</div>
</body>
</html>
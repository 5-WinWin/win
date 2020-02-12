package win.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable {
	
	private String memberType;
	private String email; // 이메일
	private String name; // 이름
	private String userId; // 아이디
	private String userPwd; // 비밀번호
	private String companyId; // 사업자 번호
	private Date enrollDate; // 가입날짜
	
	public Member() {}
	
	// 로그인용 생성자

	public Member(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}

	// 회원가입용 생성자

	public Member(String memberType, String email, String name, String userId, String userPwd,
			String companyId) {
		super();
		this.memberType = memberType;
		this.email = email;
		this.name = name;
		this.userId = userId;
		this.userPwd = userPwd;
		this.companyId = companyId;
	}

	// 회원의 전체 데이터를 가져오는 생성자
	
	public Member(String memberType, String email, String name, String userId, String userPwd,
			String companyId, Date enrollDate) {
		super();
		this.memberType = memberType;
		this.email = email;
		this.name = name;
		this.userId = userId;
		this.userPwd = userPwd;
		this.companyId = companyId;
		this.enrollDate = enrollDate;
	}

	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Member [memberType=" + memberType + ", email=" + email + ", name=" + name + ", userId=" + userId
				+ ", userPwd=" + userPwd + ", companyId=" + companyId + ", enrollDate=" + enrollDate + "]";
	}

	

	

	
}

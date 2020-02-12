package win.model.dao;

import static com.winwin.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import win.exception.MemberException;
import win.model.vo.Member;

public class MemberDao {

private Properties prop;
	
	public MemberDao() {
		prop = new Properties();
		
		String filePath = MemberDao.class.getResource("/config/member-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 가입정보확인
	 * @param con
	 * @param m
	 * @return
	 * @throws MemberException
	 */
	public Member selectMember(Connection con, Member m) throws MemberException {
		Member result = null; // 결과를 담을 객체
		PreparedStatement pstmt = null;
		ResultSet rset = null;	// Select의 결과를 담은 객체
		
		try {
			String sql = prop.getProperty("selectMember");
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			
			rset = pstmt.executeQuery();
			
			// if while
			if(rset.next()) {
				result = new Member();
				
				
				result.setEmail(rset.getString("C_EMAIL"));
				result.setName(rset.getString("CNAME"));
				result.setUserId(rset.getString("C_PWD"));
				result.setCompanyId(rset.getString("C_ID"));
				result.setUserPwd(rset.getString("C_PWD"));
			}
		}catch(Exception e) {
//			e.printStackTrace();
			// --> 
			throw new MemberException(e.getMessage());
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}

	
	/**
	 * 회원 가입 메소드 
	 * @param con
	 * @param m
	 * @return
	 * @throws MemberException 
	 */
	public int insertMember(Connection con, win.model.vo.Member m) throws MemberException {
		// 결과 확인을 위한 변수 result 생성
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql ="";
			
			System.out.println(m.getMemberType());
			
			if(m.getMemberType().equals("D")) {
				
				sql = prop.getProperty("insertMember");
				System.out.println("D");
				
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, m.getName());
				pstmt.setString(2, m.getUserId());
				pstmt.setString(3,m.getUserPwd());
				pstmt.setString(4,m.getEmail());
				
				result = pstmt.executeUpdate();
				
			} else if(m.getMemberType().equals("C")) {
				sql = prop.getProperty("insertCompany");
				
				System.out.println("C");
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, m.getName());
				pstmt.setString(2, m.getUserId());
				pstmt.setString(3,m.getUserPwd());
				pstmt.setString(4,m.getEmail());
				pstmt.setString(5,m.getCompanyId());
				
				result = pstmt.executeUpdate();
				
				System.out.println(result);
			}
		}catch(SQLException e) {
			throw new MemberException(e.getMessage());
		}finally {
			close(pstmt);
		}
		
		return result;
	}
}



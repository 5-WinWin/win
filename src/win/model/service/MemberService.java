package win.model.service;

import static com.winwin.jsp.common.JDBCTemplate.*;


import java.sql.Connection;

import win.exception.MemberException;
import win.model.vo.Member;

import win.model.dao.MemberDao;

public class MemberService {
	
	private Connection con;
	private MemberDao mDao = new MemberDao();
	
	/**
	 * 가입 정보 확인
	 * @param m
	 * @return
	 * @throws MemberException
	 */
	
	public Member selectMember(Member m) throws MemberException {
		con = getConnection();
		
		Member result = mDao.selectMember(con,m);
		
		close(con);
		
		if(result == null) {
			throw new MemberException("회원 아이디나 비밀번호가 올바르지 않습니다.");
		}
		return result;
	}
	
	/**
	 * 회원 가입
	 * @param m
	 * @return
	 * @throws MemberException 
	 */
	public int insertMember(Member m) throws MemberException {
		con = getConnection();
		int result = mDao.insertMember(con,m);
		
		if(result >0 ) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
}

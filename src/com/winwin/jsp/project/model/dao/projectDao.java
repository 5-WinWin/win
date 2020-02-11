package com.winwin.jsp.project.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import static com.winwin.jsp.common.JDBCTemplate.*;

import com.winwin.jsp.project.model.exception.projectException;
import com.winwin.jsp.project.model.vo.Project;

public class projectDao {
	private Properties prop;
	
	public projectDao() {
		prop = new Properties();
		
		String filePath = projectDao.class.getResource("/config/project-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 프로젝트 등록 메소드
	 * @param con
	 * @param p
	 * @return
	 */
	public int insertProject(Connection con, Project p) throws projectException {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = prop.getProperty("insertProject");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, p.getPtitle());
			pstmt.setString(2, p.getPbang());
			pstmt.setString(3, p.getPtype());
			pstmt.setString(4, p.getPdetail());
			pstmt.setString(5, p.getPcotx());
			pstmt.setInt(6, 1);
			pstmt.setDate(7, p.getPstart());
			pstmt.setDate(8, p.getPend());
			pstmt.setString(9, p.getPgo());
			pstmt.setString(10, p.getPmodwtr());
			pstmt.setInt(11, 1);
			
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
}

package com.winwin.jsp.developer.model.dao;

import static com.winwin.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.winwin.jsp.developer.model.vo.developer;
import com.winwin.jsp.project.model.dao.projectDao;
import com.winwin.jsp.project.model.vo.Project;

public class developerDao {
private Properties prop;
	
	public developerDao() {
		prop = new Properties();
		
		String filePath = developerDao.class.getResource("/config/developer-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public int getListCount(Connection con) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}


	public ArrayList<developer> selectList(Connection con, int currentPage, int limit) {
		ArrayList<developer> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit + 1; 
			int endRow = startRow + limit -1;
			
			pstmt.setInt(1,  endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<developer>();
			
			while(rset.next()) {
				developer d = new developer();
				
				d.setuId(rset.getString("U_ID"));
				d.setuPhoto(rset.getString("U_PROFILE"));
				d.setuIntro(rset.getString("U_INTRO"));
				d.setPort(rset.getString("PORT"));
//				d.setSkill(rset.getString("S_NAME"));
								
							
				
				list.add(d);
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}

package com.winwin.jsp.project.model.service;

import static com.winwin.jsp.common.JDBCTemplate.close;
import static com.winwin.jsp.common.JDBCTemplate.commit;
import static com.winwin.jsp.common.JDBCTemplate.getConnection;
import static com.winwin.jsp.common.JDBCTemplate.rollback;
import com.winwin.jsp.project.model.exception.projectException;
import java.sql.Connection;

import com.winwin.jsp.project.model.dao.projectDao;
import com.winwin.jsp.project.model.vo.Project;

public class projectService {
	
		
		private Connection con;
		private projectDao pDao = new projectDao();
		
		/**
		 * 프로젝트 등록
		 * @param p
		 * @return
		 * @throws projectExcepiton
		 */
		public int insertProject(Project p) throws projectException{
			con = getConnection();
			int result = pDao.insertProject(con,p);
			
			if(result > 0) commit(con);
			else rollback(con);
			
			close(con);
			
			return result;
		}
}

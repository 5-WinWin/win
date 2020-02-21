package com.winwin.jsp.projectComment.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.winwin.jsp.projectComment.model.service.ProjectCommentService;
import com.winwin.jsp.projectComment.model.vo.ProjectComment;

/**
 * Servlet implementation class CommentInsertServlet
 */
@WebServlet("/cinsert.bo")
public class CommentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String writer = request.getParameter("writer");
		int pno = Integer.parseInt(request.getParameter("pno"));
		String content = request.getParameter("replyContent");
		
		ProjectComment pco = new ProjectComment();
		pco.setEwriter1(writer);
		pco.setPno(pno);
		pco.setEcontent(content);
		
		int result = new ProjectCommentService().insertComment(pco);
		
		if(result> 0) {
			response.sendRedirect("selectOne.bo?pno="+pno);
		}else {
			request.setAttribute("msg", "댓글 작성 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

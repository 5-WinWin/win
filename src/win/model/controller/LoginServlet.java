package win.model.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import win.exception.MemberException;
import win.model.service.MemberService;
import win.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		

		
		
		Member m = new Member(userId, userPwd);
		
		MemberService ms = new MemberService();
		
		try { // 로그인 성공했을 때
			m = ms.selectMember(m);
			
			System.out.println("회원 로그인 성공!");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("member", m);
			
			response.sendRedirect("mainpage.jsp");
			
		}catch(MemberException e) { // 에러 났을 떄
			request.setAttribute("msg", "회원 로그인 실패!");
			request.setAttribute("exception", e);
			
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

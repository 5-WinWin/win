package com.winwin.jsp.project.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.winwin.jsp.project.model.exception.projectException;
import com.winwin.jsp.project.model.service.ProjectService;
import com.winwin.jsp.project.model.vo.Project;

/**
 * Servlet implementation class insertProjectServlet
 */
@WebServlet("/pinsert.do")
public class insertProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertProjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title"); // 프로젝트 제목
		String type = request.getParameter("project_type"); // 프로젝트 진행방식
		String category = String.join(", ",request.getParameterValues("category")); // 프로젝트 카테고리
		String subcategory_ch = String.join(", ", request.getParameterValues("subcategory_ch")); // 프로젝트 상세 카테고리
		String description = request.getParameter("description"); // 상세 업무 내용
		String start = request.getParameter("launch_date"); // 예상 시작일
		String end = request.getParameter("deadline"); // 공고 마감일
		String go = request.getParameter("ra_bu"); // 예상 진행 기간
		String conf1 = request.getParameter("conf1"); // 예산 협의1
		String conf2 = request.getParameter("conf2"); // 예산 협의2
		
		String devel = request.getParameter("count_number"); // 개발자 수 
		String indiv_cost = request.getParameter("cost"); // 프로젝트 예산
		
		int pdevel = Integer.parseInt(devel);
		int pindiv_cost = Integer.parseInt(indiv_cost);
		int cost = pdevel*pindiv_cost;
		System.out.println("날짜 전달 확인 : " + start);
		
//		if(conf1 !="" && conf1!=null) {
//			
//		}
		 
		Date writeDate1 = null;
		
		if(start !="" && start!= null) {
			// 날짜가 들어 왔을 때
			//2020-01-30 --> 2020, 1, 30
			String[] dateArr1 = start.split("-");
			int[] intArr1 = new int[dateArr1.length];
			System.out.println(dateArr1.length);
			// String --> int
			for(int i=0; i<dateArr1.length;i++) {
				intArr1[i] = Integer.parseInt(dateArr1[i]);
				System.out.println(intArr1[i]);
			}
			
			writeDate1 = new Date(new GregorianCalendar(
					intArr1[0],intArr1[1]-1,intArr1[2]).getTimeInMillis());
				
		}else {
			// 날짜가 들어오지 않으면 
			writeDate1 = new Date(new GregorianCalendar().getTimeInMillis());
		}
		
		System.out.println("날짜 전달 확인 : " + end);
		System.out.println("프로젝트 카테고리 : " + category);
		Date writeDate2 = null;
		
		if(end !="" && end!= null) {
			// 날짜가 들어 왔을 때
			//2020-01-30 --> 2020, 1, 30
			String[] dateArr2 = end.split("-");
			int[] intArr2 = new int[dateArr2.length];
			
			// String --> int
			for(int i=0; i<dateArr2.length;i++) {
				intArr2[i] = Integer.parseInt(dateArr2[i]);
			}
			
			writeDate2 = new Date(new GregorianCalendar(
					intArr2[0],intArr2[1]-1,intArr2[2]).getTimeInMillis());
			
		}else {
			// 날짜가 들어오지 않으면 
			writeDate2 = new Date(new GregorianCalendar().getTimeInMillis());
		}
		
		// 예산 추가 필요
		Project p = new Project(title,type,category,subcategory_ch,description,cost,writeDate1,writeDate2,go,conf1,conf2);
		System.out.println("프로젝트 확인 : " + p);
		
		ProjectService ps = new ProjectService();
		
		try {
			ps.insertProject(p);
			System.out.println("프로젝트 등록 완료!");
			
			response.sendRedirect("/semi/index.jsp");
		} catch (projectException e) {
			request.setAttribute("msg", "프로젝트 등록 중 에러 발생!!");
			request.setAttribute("exception",e);
			
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			//e.printStackTrace();
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

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
import com.winwin.jsp.project.model.service.projectService;
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
		String title = request.getParameter("title"); // ������Ʈ ����
		String type = request.getParameter("project_type"); // ������Ʈ ������
		String category = String.join(", ",request.getParameter("category")); // ������Ʈ ī�װ�
		String subcategory_ch = String.join(", ", request.getParameterValues("subcategory_ch")); // ������Ʈ �� ī�װ�
		String description = request.getParameter("description"); // �� ���� ����
//		String cost = request.getParameter("cost"); // ������Ʈ ����
		String start = request.getParameter("launch_date"); // ���� ������
		String end = request.getParameter("deadline"); // ���� ������
		String go = request.getParameter("ra_bu"); // ���� ���� �Ⱓ
		String conf1 = request.getParameter("conf1"); // ���� ����1
		String conf2 = request.getParameter("conf2"); // ���� ����2
		
		System.out.println("��¥ ���� Ȯ�� : " + start);
		
		if(conf1 !="" && conf1!=null) {
			
		}
		
		Date writeDate1 = null;
		
		if(start !="" && start!= null) {
			// ��¥�� ��� ���� ��
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
			// ��¥�� ������ ������ 
			writeDate1 = new Date(new GregorianCalendar().getTimeInMillis());
		}
		
System.out.println("��¥ ���� Ȯ�� : " + end);
		
		Date writeDate2 = null;
		
		if(end !="" && end!= null) {
			// ��¥�� ��� ���� ��
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
			// ��¥�� ������ ������ 
			writeDate2 = new Date(new GregorianCalendar().getTimeInMillis());
		}
		
		// ���� �߰� �ʿ�
		Project p = new Project(title,type,category,subcategory_ch,description,writeDate1,writeDate2,go,conf1,conf2);
		System.out.println("������Ʈ Ȯ�� : " + p);
		
		projectService ps = new projectService();
		
		try {
			ps.insertProject(p);
			System.out.println("������Ʈ ��� �Ϸ�!");
			
			response.sendRedirect("/semi/index.jsp");
		} catch (projectException e) {
			request.setAttribute("msg", "������Ʈ ��� �� ���� �߻�!!");
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

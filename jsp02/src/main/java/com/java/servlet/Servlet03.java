package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet03")
public class Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String name= request.getParameter("name");
		String id= request.getParameter("id");
		String pw= request.getParameter("pw");
		
		String[] hobbys= request.getParameterValues("hobby");
		
		
		String major= request.getParameter("major");
		String area= request.getParameter("area");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name= request.getParameter("name");
		String id= request.getParameter("id");
		String pw= request.getParameter("pw");
		
		String[] hobbys=request.getParameterValues("hobby");
		
		String major= request.getParameter("major");
		String area= request.getParameter("area");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("test/html; charset=UTF-8");
		
		PrintWriter out=response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>form 태그 알아보기</title>");
		out.print("<body>");
		out.print("<h2>form태그에서 넘어온 데이터</h2>");
		out.print("이름:"+ name +"<br>");
		out.print("아이디:"+ id +"<br>");
		out.print("비밀번호:"+ pw +"<br>");
		out.print("취미:"+ Arrays.toString(hobbys)+"<br>");
		out.print("전공:"+major+"<br>");
		out.print("사는 지역:"+area+"<br>");
		out.print("</body>");
		out.print("</html>");
		
	}

}

package com.java.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/Servlet06")
public class Servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ServletConfig config=this.getServletConfig();
		//ServletConfig 객체는 서블릿이 초기화되는동안 참ㅈ해야 할 정보를 전달해주는 역할을 한다.
		//서블릿이 초기화될때 참조해야 하는 정보를 가지고 있다가 전달해준다.
		
		
		String id=config.getInitParameter("id");
		String pw=config.getInitParameter("pw");
		
		System.out.println("id:"+id);
		System.out.println("pw:"+pw);
		
		
	}

}

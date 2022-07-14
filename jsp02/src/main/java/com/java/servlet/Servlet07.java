package com.java.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet07")
public class Servlet07 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application=this.getServletContext();
		//getServletContext 메소드 호출시 ServletContext객체를 반환해준다.
		//컨텍스트마다 하나의 ServletContext가 생성된다. 
		//서블릿끼리 자원(데이터)을 공유하는데 사용된다.
		String name=application.getInitParameter("name");
		String age=application.getInitParameter("age");
		
		System.out.println( );
		
	}

}

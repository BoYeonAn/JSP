package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servelet02")
public class Servelet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Servelet02() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out=response.getWriter();
		out.print("doGet 메소드입니다.");
		String id=request.getParameter("id");
		out.print(id+"님 안녕하세요");
		
		out.close();
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out=response.getWriter();
		out.print("doGet 메소드입니다.");
		String id=request.getParameter("id");
		out.print(id+"님 안녕하세요");
		
		out.close();
	}

}

package com.java.servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet05")
public class Servlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Enumeration<String> e=request.getParameterNames();
		//request의  getParameterNames()메소드는 반환타입이 Enumeration 유형으로 요청페이지의 모든 파라미터 이름이 저장된 목록을 반환한다.
		while(e.hasMoreElements()) {
			
			//읽어올 요소가 있는지 확인후 있으면 트루 없으면 폴스
			String name=e.nextElement();
			
			//다음요소를 읽어온다
			String[] values= request.getParameterValues(name);
			for(String value : values) {
				System.out.println("name:"+name+"value:"+value);
			}
			
	}
	}

}

package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//메타데이터란 데이터에 대한 속성정보이다.
//데이터에 대한 데이터로서 하위 레벨 데이터를 설명 및 기술하는 데이터이다.

//어노테이션이란 메타데이터라고 볼 수 있다.
//프로그램 실행관점에서 보면 프로그램이 처리할 메인데이터가 아닌 실행과정에서 데이터를 어떻게 처리할 것인지 알려주는 서브데이터
//자바코드에 @를 이용해서 주석처럼 달아 특수한 의미를 부여해준다.

//URL 맵핑은 어노테이션으로 달거나 또는 web.xml에 직접 작성하는 방법이 있다. 
@WebServlet("/HS")
public class Servelet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//HttpServlet 기본적으로 Serializable을 상속받고 있다.
	//직렬화란 자바의 객체를 바이트의 배열로 변환해서 파일, 메모리, 데이터베이스 등이 저장하는 과정을 말한다.
	//저장된 것을 다시 객체로 변환하는 과정을 역직렬화
	//직렬화를 할 때에는 serialVersionUID >>직렬화키로 저장을 한다.
    //객체로 다시 불러들일때 그 값을 체크하는 용도로 사용을 하게 된다.   
  
    public Servelet01() {//생성자
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request:클라이언트로부터의 요청처리 객체
		//예(로그인시):아이디와 비밀번호의 정보는 request 객체에 담겨져 온다.
		//response:클라이언트로의 응답처리 객체
		//예(로그인시):회원인지 아닌지 정보를 클라이언트한테 보낸다.
		response.setCharacterEncoding("UTF-8");
		//이 파일의 text를 UTF-8로 웹브라우저에 보낸다 
		response.setContentType("text/html; charset=UTF-8");
		//웹 브라우저에게 html 문저를 UTF-8로 해석하라는 뜻.
		PrintWriter out=response.getWriter();//<-------------------컨트로쉬프트????????
		//웹브라우저에게 출력하기위한 출력스트림 연기
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet 시작!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>서블릿 시작합니다.</h1>");
		out.println("</body>");
		out.println("</html>");
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

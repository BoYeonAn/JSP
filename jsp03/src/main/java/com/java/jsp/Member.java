package com.java.jsp;

public class Member {
	//아이디 비밀번호 이름 나이의 프로퍼티(필드)를 만들자
	//기본생성자와 프로퍼티를 접근하는 getter/setter 메소드를 만들자
	private String id;
	private String name;
	private int pw;
	private int age;
	
	public Member() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPw() {
		return pw;
	}

	public void setPw(int pw) {
		this.pw = pw;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	
	
	
	
}
	

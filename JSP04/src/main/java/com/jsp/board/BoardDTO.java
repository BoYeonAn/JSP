package com.jsp.board;

import java.sql.Timestamp;

public class BoardDTO {
	private int bId;
	private String bName;
	private String bTitle;
	private Timestamp bDate;
	private int bHit;
	
	public BoardDTO() {}

	public BoardDTO(int bId, String bName, String bTitle, Timestamp bDate, int bHit) {
		super();
		this.bId = bId;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bDate = bDate;
		this.bHit = bHit;
	}
	
}

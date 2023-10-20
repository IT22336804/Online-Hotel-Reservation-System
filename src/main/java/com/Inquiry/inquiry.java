package com.Inquiry;

public class inquiry {
	
	private int inqID;
	private String subject;
	private String message;
	
	
	public inquiry(int inqID,String subject, String message) {
		this.inqID = inqID;
		this.subject = subject;
		this.message = message;
	}
	
	public int getinqID() {
		return inqID;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public String getMessage() {
		return message;
	}
	

}

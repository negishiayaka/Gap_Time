package com.internousdev.gap_time.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.gap_time.dao.SignupDAO;
import com.internousdev.gap_time.dto.SignupDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SignupCompleteAction extends ActionSupport implements SessionAware{

	private Map<String, Object> session;

	public String execute(){

		SignupDAO dao = new SignupDAO();
		SignupDTO dto = (SignupDTO)session.get("signupDto");

		if (dao.insert(dto)){

		}


		session.remove("signupDto");

		return "success";
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
}

package com.internousdev.gap_time.action;

import com.internousdev.gap_time.dao.UserDAO;
import com.internousdev.gap_time.dto.UserDTO;

public class LogoutAction extends BaseAction {

	public String execute(){

		UserDTO user = (UserDTO)session.get("user");

		UserDAO dao = new UserDAO();
		dao.logout(user.getLoginId());

		session.clear();

		return "success";
	}
}

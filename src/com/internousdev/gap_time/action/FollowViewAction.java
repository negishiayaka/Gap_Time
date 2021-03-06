package com.internousdev.gap_time.action;

import java.util.List;

import com.internousdev.gap_time.dao.FollowDAO;
import com.internousdev.gap_time.dto.UserDTO;

public class FollowViewAction extends BaseAction {

	public String execute(){

		UserDTO user = (UserDTO)session.get("user");

		FollowDAO dao = new FollowDAO();
		List<UserDTO> follows = dao.selectUser(user.getId());

		session.put("follows", follows);

		return "success";
	}
}

package com.internousdev.gap_time.action;

import com.internousdev.gap_time.dto.UserDTO;
import com.internousdev.gap_time.util.TweetUtil;

public class HomeAction extends BaseAction {


	public String execute(){

		UserDTO user = (UserDTO)session.get("user");

		session.put("profile", user);

		TweetUtil.select(user.getId(), session);

		return "success";
	}
}

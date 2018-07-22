package com.internousdev.gap_time.action;

import com.internousdev.gap_time.dto.UserDTO;

public class IndexAction extends BaseAction {


	public String execute(){

		if (session.containsKey("user")){
			UserDTO user = (UserDTO)session.get("user");
			if (user.getLogined() == 1){
				return "success";
			}
		}

		return "login";
	}
}

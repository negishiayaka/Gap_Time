package com.internousdev.gap_time.action;

import com.internousdev.gap_time.dao.TweetDAO;
import com.internousdev.gap_time.dto.UserDTO;
import com.internousdev.gap_time.util.InputChecker;
import com.internousdev.gap_time.util.TweetUtil;

public class TweetAction extends BaseAction {

	private String message;

	public String execute() throws Exception{

		clearError();

		UserDTO user = (UserDTO)session.get("user");

		TweetDAO dao = new TweetDAO();

		if (!InputChecker.length(message, 1, 200)){
			putError("tweet", "1文字から200文字で入力してください。");
		}

		message = InputChecker.htmlEscape(message);

		if (isError()){
			return "error";
		}else{
			if (dao.insert(user.getId(), message)){

				TweetUtil.select(user.getId(), session);

				return "success";
			}else{
				throw new Exception();
			}
		}
	}

	public void setMessage(String message) {
		this.message = message;
	}
}

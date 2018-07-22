package com.internousdev.gap_time.action;

import com.internousdev.gap_time.dao.TweetDAO;
import com.internousdev.gap_time.dto.UserDTO;
import com.internousdev.gap_time.util.TweetUtil;

public class LikeAction extends BaseAction {

	private int tweetId;

	public String execute(){

		UserDTO user = (UserDTO)session.get("user");

		TweetDAO dao = new TweetDAO();

		if (dao.like(tweetId)){
			TweetUtil.select(user.getId(), session);
		}
		System.out.println(tweetId);

		return "success";
	}

	public void setTweetId(int tweetId) {
		this.tweetId = tweetId;
	}
}

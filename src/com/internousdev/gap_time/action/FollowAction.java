package com.internousdev.gap_time.action;

import com.internousdev.gap_time.dao.FollowDAO;

public class FollowAction extends BaseAction {

	private int userId;
	private int targetUserId;

	public String execute() throws Exception {

		if (userId == targetUserId){
			// 同じIDは拒否
			throw new Exception();
		}

		FollowDAO dao = new FollowDAO();
		dao.insert(userId, targetUserId);

		return "success";
	}
}

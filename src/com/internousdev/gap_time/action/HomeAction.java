package com.internousdev.gap_time.action;

import java.util.List;

import com.internousdev.gap_time.dao.FollowDAO;
import com.internousdev.gap_time.dao.UserDAO;
import com.internousdev.gap_time.dto.UserDTO;
import com.internousdev.gap_time.util.TweetUtil;

public class HomeAction extends BaseAction {

	private String userId;

	public String execute() throws Exception {

		clearError();

		UserDTO user = (UserDTO)session.get("user");
		UserDTO profile = null;
		boolean isFollowing = false;

		if (userId != null){
			UserDAO userDao = new UserDAO();
			profile = userDao.select(Integer.parseInt(userId));

			if (profile != null) {
				FollowDAO followDao = new FollowDAO();
				isFollowing = followDao.isFollowing(user.getId(), profile.getId());
			}else{
				throw new Exception();
			}

			TweetUtil.select(profile.getId(), session);

		}else{
			profile = user;
			FollowDAO followDao = new FollowDAO();
			List<Integer> list = followDao.select(user.getId());	// フォローしている人のIDを取得
			list.add(user.getId());		// 自身のIDを追加
			TweetUtil.select(list, session);
		}

		boolean isUser = user.getId() == profile.getId();

		session.put("profile", profile);
		session.put("isUser", isUser);
		session.put("isFollowing", isFollowing);

		System.out.println(user.getName());
		System.out.println(profile.getName());
		System.out.println(isFollowing);

		return "success";
	}

	public void setUserId(String userId){
		this.userId = userId;
	}
}

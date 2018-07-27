package com.internousdev.gap_time.action;

import com.internousdev.gap_time.dao.UserDAO;
import com.internousdev.gap_time.dto.UserDTO;

public class LoginAction extends BaseAction {

	private String loginId;
	private String password;

	public String execute(){

		clearError();

		if (loginId.equals("")){
			putError("loginId", "IDを入力してください");
		}

		if (password.equals("")){
			putError("password", "パスワードを入力してください");
		}

		UserDAO dao = new UserDAO();

		if (dao.exists(loginId, password)){

			if (dao.login(loginId, password)){
				UserDTO user = dao.select(loginId, password);
				session.put("user", user);

			}else{
				putError("login", "ログインに失敗しました");
			}

		}else{
			putError("login", "IDかパスワードが間違えています");
		}

		if (isError()){
			return "error";
		}else{
			return "success";
		}
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}

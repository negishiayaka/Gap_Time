package com.internousdev.gap_time.action;

import java.io.File;

import com.internousdev.gap_time.dao.UserDAO;
import com.internousdev.gap_time.dto.UserDTO;

public class ProfileEditAction extends BaseAction {


	private File photo;
	private String photoContentType;
	private String photoFileName;

	private String name;
	private String introductions;


	public String execute(){

		UserDTO user = (UserDTO)session.get("user");

		UserDAO dao = new UserDAO();

		/*if (photoFileName != null && photoContentType.equals("image/png")) {
			String filePath = ServletActionContext.getServletContext().getRealPath("/").concat("images");
			System.out.println("Image Location:" + filePath);
			File fileToCreate = new File(filePath, "profile.png");

			try {
				FileUtils.copyFile(photo, fileToCreate);
				session.put("image_file_name", photoFileName);
				session.put("image_file_path", "images/");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}*/



		if (dao.update(user.getId(), name, introductions)) {

			System.out.println("success");

			user = dao.select(user.getLoginId(), user.getPassword());
			session.put("user", user);

			return "success";
		} else {
			System.out.println("error");
			return "error";
		}

	}


	public void setPhoto(File photo) {
		this.photo = photo;
	}

	public void setPhotoContentType(String photoContentType) {
		this.photoContentType = photoContentType;
	}

	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setIntroductions(String introductions) {
		this.introductions = introductions;
	}
}

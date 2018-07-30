<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/profileEdit.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gap_Time</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="box_all">
		<h1 class="edit_title">Profile Edit</h1>
		<div class="box">
			<s:form action="ProfileEditAction" method="post" enctype="multipart/form-data">
				<ul>
					<li class="edit_subtitle">Name
						<s:textfield class="name_field" name="name" value="%{#session.user.name}" />
					</li>

					<li class="edit_subtitle2">Image</li>

					<li class="image">
						<div class="image_box">
						<img src="<s:property value='%{#session.user.photoPath}' />" />
						</div>
					</li>


					<li class="image_btn">
						<s:file name="photo" />
					</li>

					<li class="edit_subtitle3">About Me
					</li>

					<li >
					<s:textarea class="text_field_box" name="introductions"
							value="%{#session.user.introductions}" />
					</li>

					<li>
						<s:submit  class="update_btn" value="Update" />
					</li>
				</ul>

			</s:form>
		</div>
	</div>
</body>
</html>
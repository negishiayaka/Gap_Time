<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/signupConfirm.css">
<title>Gap_Time</title>
</head>
<body>
	<div class="confirmbox">
		<div class="confirmboxtext">Is this fine with you？</div>
		<ul class="confirmbox2">

			<li>
				<div class="confirmtitle"><p>Login ID</p></div>
			</li>
			<li><div class="confirmname">
					<s:property value="%{#session.signupDto.loginId}" />
				</div></li>

			<li><div class="confirmtitle"><p>Password</p></div></li>
			<li><div class="confirmname">
					<s:property value="%{#session.signupDto.password}" />
				</div></li>
			<li><div class="confirmtitle"><p>Account Name</p></div></li>
			<li><div class="confirmname">
					<s:property value="%{#session.signupDto.name}" />
				</div></li>
		</ul>

		<s:form action="SignupCompleteAction">
			<div class="btn_all">
				<s:submit value="Confirm" class="submit_btn" />
			</div>
		</s:form>
	</div>
</body>
</html>
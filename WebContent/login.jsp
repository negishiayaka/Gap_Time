<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/login.css">

<title>Gap_Time</title>
</head>
<body>

	<s:form action="LoginAction">
		<ul class="fieldbox">
		<li><div class="fieldboxtext">LOGIN</div></li>
			<!-- ログインID入力フィールド -->
			<li><div class="fieldbox2"><s:textfield class="logintextfield" name="loginId" placeholder="ID" /></div></li>
			<!-- パスワード入力フィールド -->
			<li><div class="fieldbox3"><s:password class="logintextfield" name="password" placeholder="PASSWORD" /></div>
			</li>
			<!-- ログインのエラー -->
			<s:if test="%{#session.error.containsKey('login')}">
				<s:iterator value="%{#session.error.login}">
					<li><s:property /></li>
				</s:iterator>
			</s:if>
			<!-- サブミットボタン -->

			<li><div class="btn_all"><s:submit value="Sign In" class="submit_btn"/></div></li>

		</ul>
	</s:form>
	<!-- 新規登録へのリンク -->
	<p><a href="SignupAction">Create an account</a></p>

</body>
</html>
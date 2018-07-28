<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/signup.css">
<title>Gap_Time</title>
</head>
<body>

	<s:form action="SignupConfirmAction">
		<ul class="fieldbox">
			<li><div class="fieldboxtext">Create an account</div></li>
			<!-- ID -->
			<li><div class="idtextfield">
					<dl>
						<dt>
							<s:textfield class="signuptextfield" name="loginId"
								placeholder="Id" value="%{#session.signupDto.loginId}" />
						</dt>
						<!-- エラー表示 -->
						<s:if test="%{#session.error.containsKey('loginId')}">
							<div class="error-message">
								<s:iterator value="%{#session.error.loginId}">
									<dd>
										<s:property />
									</dd>
								</s:iterator>
							</div>
						</s:if>
					</dl>
				</div></li>
			<!-- パスワード -->
			<li><div class="passwordtextfield">
					<dl>
						<dt>
							<s:textfield class="signuptextfield" name="password"
								placeholder="Password" value="%{#session.signupDto.password}" />
						</dt>
						<!-- エラー表示 -->
						<s:if test="%{#session.error.containsKey('password')}">
							<div class="error-message">
								<s:iterator value="%{#session.error.password}">
									<dd>
										<s:property />
									</dd>
								</s:iterator>
							</div>
						</s:if>
					</dl>
				</div></li>
			<!-- 表示名 -->
			<li><div class="accounttextfield">
					<dl>
						<dt>
							<s:textfield class="signuptextfield" name="name"
								placeholder="Name" value="%{#session.signupDto.name}" />
						</dt>
						<!-- エラー表示 -->
						<s:if test="%{#session.error.containsKey('name')}">
							<div class="error-message">
								<s:iterator value="%{#session.error.name}">
									<dd>
										<s:property />
									</dd>
								</s:iterator>
							</div>
						</s:if>
					</dl>
				</div></li>
			<!-- サブミットボタン -->
			<li><div class="btn_all">
					<s:submit value="Confirm" class="submit_btn" />
				</div></li>
		</ul>
	</s:form>
</body>
</html>
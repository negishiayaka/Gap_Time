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
		<li><div class="fieldboxtext">アカウントを作成</div></li>
			<!-- ID -->
			<li>
				<dl>
					<dt>
						<s:textfield class="idtextfield" name="loginId" placeholder="ID"
							value="%{#session.signupDto.loginId}" />
					</dt>
					<!-- エラー表示 -->
					<s:if test="%{#session.error.containsKey('loginId')}">
						<s:iterator value="%{#session.error.loginId}">
							<dd>
								<s:property />
							</dd>
						</s:iterator>
					</s:if>
				</dl>
			</li>
			<!-- パスワード -->
			<li>
				<dl>
					<dt>
						<s:textfield class="passwordtextfield" name="password" placeholder="パスワード"
							value="%{#session.signupDto.password}" />
					</dt>
					<!-- エラー表示 -->
					<s:if test="%{#session.error.containsKey('password')}">
						<s:iterator value="%{#session.error.password}">
							<dd>
								<s:property />
							</dd>
						</s:iterator>
					</s:if>
				</dl>
			</li>
			<!-- 表示名 -->
			<li>
				<dl>
					<dt>
						<s:textfield class="accounttextfield" name="name" placeholder="表示名（アカウント名）"
							value="%{#session.signupDto.name}" />
					</dt>
					<!-- エラー表示 -->
					<s:if test="%{#session.error.containsKey('name')}">
						<s:iterator value="%{#session.error.name}">
							<dd>
								<s:property />
							</dd>
						</s:iterator>
					</s:if>
				</dl>
			</li>
			<!-- サブミットボタン -->
			<li><s:submit value="確認" /></li>
		</ul>
	</s:form>
</body>
</html>
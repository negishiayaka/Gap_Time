<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/profile.css">
</head>

<body>

	<h1 class="profile_name">Profile</h1>
	<div>
		<ul class="profile_img">
			<li><img
				src="<s:property value='%{#session.profile.photoPath}' />" /></li>
		</ul>
		<ul class="account_all">
			<li class="account_title">Name</li>
			<li class="account_line"></li>
			<li class="account_name"><s:property
					value="%{#session.profile.name}" /></li>
		</ul>
		<ul>
			<s:if test="%{!#session.isUser}">
				<!-- 表示しているプロフィールがログインしているユーザーか -->
				<s:if test="%{#session.isFollowing}">
					<!-- フォローしているか -->
					<li><a
						href='<s:url action="DefollowAction"><s:param name="userId" value="%{#session.profile.id}"/></s:url>'>
							フォロー解除 </a></li>
				</s:if>
				<s:else>
					<li><a
						href='<s:url action="FollowAction"><s:param name="userId" value="%{#session.profile.id}"/></s:url>'>
							フォローする </a></li>
				</s:else>
			</s:if>
		</ul>

		<ul class="introductions_all">
			<li class="introductions"><s:property
					value="%{#session.profile.introductions}" /></li>
		</ul>

		<s:if test="%{#session.isUser}">
            <li>
                <a href="GoProfileEditAction">プロフィール編集</a>
            </li>
        </s:if>

	</div>
</body>
</html>
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
			<li>
				<div class="profile_img_box">
				<img src="<s:property value='%{#session.profile.photoPath}' />" />
				</div>
				</li>

		</ul>
		<ul class="account_all">
			<li class="account_title">Name</li>
			<li class="account_line"></li>
			<li class="account_name">
				<a href='<s:url action="HomeAction"><s:param name="userId" value="%{#session.profile.id}"/></s:url>'>
	<s:property value="%{#session.profile.name}" />
</a></li>
		</ul>
		<ul>
			<s:if test="%{!#session.isUser}">
				<!-- 表示しているプロフィールがログインしているユーザーか -->
				<s:if test="%{#session.isFollowing}">
					<!-- フォローしているか -->
					<li>
						<s:form action="DefollowAction">
							<s:hidden name="userId" value="%{#session.profile.id}" />
							<s:submit value="Unfollow" class="f_btn"/>
						</s:form>
				</s:if>
				<s:else>
					<li>
						<s:form action="FollowAction">
							<s:hidden name="userId" value="%{#session.profile.id}" />
							<s:submit value="Follow" class="f_btn"/>
						</s:form>
				</s:else>
			</s:if>
		</ul>

		<ul class="introductions_all">
			<li class="introductions"><s:property
					value="%{#session.profile.introductions}" /></li>
		</ul>

		<s:if test="%{#session.isUser}">
            <li>
            	<s:form action="GoProfileEditAction">
            		<s:submit value="Edit" class="edit_btn" />
            	</s:form>

            </li>
        </s:if>

	</div>
</body>
</html>
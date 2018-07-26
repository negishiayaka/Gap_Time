<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<h1 class="profile_name">Profile</h1>
<div>
			<ul class="profile_img">
				<li><img src="images/tora.jpg"></li>
			</ul>
			<ul class="account_all">
				<li class="account_title">アカウント名</li>
				<li class="account_line"></li>
				<li  class="account_name"><s:property value="%{#session.profile.name}" /></li>
			</ul>
			<ul class="introductions_all">
				<li class="introductions"><s:property value="%{#session.profile.introductions}" /></li>
			</ul>
			<ul>
				<li><s:property value="%{#session.profile.logined}" /></li>
			</ul>
				<ul>
					<li><s:property value="%{#session.profile.createdAt}" /></li>
				</ul>
				<ul>
					<li><s:property value="%{#session.profile.updatedAt}" /></li>
				</ul>
</div>
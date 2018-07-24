<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<header>

<div class="menu">
	<ul class="left">
		<li>
			<a href="HomeAction">Home</a>
		</li>
		<li>
			<a href="#">Follow</a>
		</li>
	</ul>
	<ul class="right">
		<li>
			<s:form action="SearchUserAction">
				<s:textfield class="searchstyle" name="search" />
				<s:submit value="検索" />
			</s:form>
			<!-- <a href="#">検索</a> -->

		</li>
		<li>
			<a href="LogoutAction">Sign out</a>
		</li>
	</ul>
	</div>
	<div class="clear" ></div>
</header>
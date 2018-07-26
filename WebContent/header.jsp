<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<header>
	<div class="menu_all">
		<div class="menu_line">
		<div class="menu">
			<ul class="left">
				<li><a href="HomeAction">Home</a></li>
				<li><a href="#">Follow</a></li>
			</ul>
			<ul class="right">
				<li><s:textfield class="searchstyle" name="search"
						placeholder="Search" /></li>
				<li><s:form action="SearchUserAction">
						<s:submit class="search_btn" type="image" src="images/search.png" />
					</s:form> <!-- <a href="#">検索</a> --></li>
				<li class="signout"><a href="LogoutAction">Sign out</a></li>
			</ul>
		</div>
		<div class="clear"></div>
		</div>
	</div>
</header>
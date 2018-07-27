<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<header>
	<div class="menu_all">
		<div class="menu_line">
			<div class="menu">
				<ul class="left">
					<li><a href="HomeAction">Home</a></li>
					<li><a href="FollowViewAction">Follow</a></li>
				</ul>
				<s:form action="SearchUserAction">
					<ul class="right">

						<li><s:textfield class="searchstyle" name="keyword"
								placeholder="Search" /></li>
						<li><s:submit class="search_btn" type="image"
								src="images/search.png" /></li>
						<li class="signout"><a href="LogoutAction">Sign out</a></li>
					</ul>
				</s:form>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</header>
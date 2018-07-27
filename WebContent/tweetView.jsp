<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<h1 class="content_name">Tweet Content</h1>
	<div class="content_box">
		<ul class="content_small_box">
			<s:iterator value="%{#session.tweets}">
				<li class="aa"><s:property value="name" /><br>
				<s:property value="content" /><br>
				<a
					href='<s:url action="LikeAction"><s:param name="tweetId" value="%{id}"/></s:url>'>
						いいね </a> <s:property value="likeCount" /></li>
			</s:iterator>
		</ul>
	</div>
</div>
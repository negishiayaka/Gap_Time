<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<ul class="box">
	<li>
		<s:iterator value="%{#session.tweets}">
			<li class="box2">
				<s:property value="name" /><br>
			</li>
			<li class="box3">
				<s:property value="content" /><br>
			</li>
			<li>
				<a href='<s:url action="LikeAction"><s:param name="tweetId" value="%{id}"/></s:url>'>
					いいね
				</a>
				<s:property value="likeCount" />
			</li>
		</s:iterator>
	</ul>
</div>
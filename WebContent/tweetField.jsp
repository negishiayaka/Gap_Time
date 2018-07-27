<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:form action="TweetAction">
		<s:textfield class="tweet_box" name="message"
			placeholder="What's happening？" />
		<s:submit class="tweet_btn" value="G" />
	</s:form>

</div>
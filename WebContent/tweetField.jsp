<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/tweetField.css">
</head>
<body>
	<div>
		<s:form action="TweetAction">
			<s:textfield class="tweet_box" name="message"
				placeholder="What's happening？" />
			<div class="tweet_back">
				<s:submit class="tweet_btn" type="image" src="images/tweet.png" />
			</div>
		</s:form>
		<div class="clear"></div>

	</div>
</body>
</html>
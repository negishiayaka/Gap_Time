<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/tweetView.css">
</head>

<body>
	<div>
		<!-- タイトル -->
		<h1 class="content_name">Tweet Content</h1>
		<!-- 背景ベース -->
		<div class="background">
			<!-- insideベース -->
			<ul class="content_small_box">
				<s:iterator value="%{#session.tweets}">
					<li class="content_field">
						<ul>
							<li class="name_box"><s:property value="name" /></li>
							<li class="content_box"><s:property value="content" escape="false"/></li>
							<!-- いいねボタン -->
							<li class="like_btn"><a
								href='<s:url action="LikeAction"><s:param name="tweetId" value="%{id}"/></s:url>'>
									<img src="images/like_btn.png">
							</a> <s:property value="likeCount" /></li>
						</ul>
					</li>
				</s:iterator>

			</ul>
		</div>
	</div>
</body>
</html>
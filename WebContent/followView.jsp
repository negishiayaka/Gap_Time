<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/followView.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gap_Time</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<div class="background_follow">
		<h1 class="list_name_follow">Follow List</h1>
		<div class="small_box_follow">

			<s:if test="%{#session.follows.isEmpty()}">
			<div class="follow_count">
				フォローはしていません。</div>
			</s:if>

			<s:else>

				<ul>
					<s:iterator value="%{#session.follows}">
						<li class="list_box_follow">
						<a  class="font" href="<s:url action='HomeAction'>
								<s:param name='userId' value='%{id}' />
							</s:url>">
								<s:property value="name" />
						</a>

								<s:form action="DefollowAction">
									<s:hidden name="userId" value="%{id}"/>
									<s:submit value="Unfollow" class="unfollow_btn" />
								</s:form>
							</li>
					</s:iterator>
				</ul>
			</s:else>
		</div>
	</div>
</body>
</html>
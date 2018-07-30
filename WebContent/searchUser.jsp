<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/searchUser.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gap_Time</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<div class="background">
		<h1 class="list_name">ユーザー検索結果</h1>
		<div class="small_box">
			<s:if test="%{#session.search.isEmpty()}">
			<div class="user_search_box">

			検索結果はありません</div>
		</s:if>
			<s:else>


				<ul>
					<s:iterator value="#session.search">
						<li class="list_box"><a
							href="<s:url action='HomeAction'>
							<s:param name='userId' value='id' />
						</s:url>">

								<s:property value="name" />

						</a></li>
					</s:iterator>
				</ul>
			</s:else>
		</div>
	</div>
</body>
</html>
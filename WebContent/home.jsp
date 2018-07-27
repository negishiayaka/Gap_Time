<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/profile.css">
<link rel="stylesheet" href="./css/tweetView.css">
<link rel="stylesheet" href="./css/tweetField.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gap_Time</title>

<style type="text/css">
/*全体*/
	#main {
		width: 800px;
		margin: 0 auto;
		height: 1000px;
	}
	/*profile側*/
	#profile {
		float: left;
		width: 250px;
		height: 530px;
		background-color: #fff;
		margin-top: 20px;
	}
/*ツイート一覧側*/
	#tweet {
		float: left;
		width: 530px;
		height: 1000px;
		background-color: #fff;
		margin-top: 20px;
		margin-left: 20px;
	}

</style>

</head>
<body>
	<jsp:include page="header.jsp" />

	<div id="main">

		<div id="profile">
			<jsp:include page="profile.jsp" />
		</div>

		<div id="tweet">

			<jsp:include page="tweetField.jsp" />
			<jsp:include page="tweetView.jsp" />
		</div>

	</div>

<s:form action="SearchUserAction">
    <s:textfield name="keyword" placeholder="キーワード" />
    <s:submit value="検索" />
</s:form>


</body>
</html>
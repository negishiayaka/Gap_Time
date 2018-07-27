<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>twitter demo</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <s:form action="ProfileEditAction">
            <s:file name="photo" /><br>
            <s:textfield name="name" /><br>
            <s:textarea name="introductions" /><br>
            <s:submit value="更新" /><br>
        </s:form>
    </body>
</html>
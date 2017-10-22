<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%
	String servletPath = request.getRequestURI();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>테스트 코드</title>
</head>
<body>

	<form:form action="/chap07/jsp/article/${article.id}"
		commandName="article" method="delete">
		<input type="submit" value="삭제" />
	</form:form>

	<form:form action="/chap07/jsp/article/${article.id}"
		commandName="article" method="put">
		<input type="submit" value="수정" />
	</form:form>

	<form:form action="/chap07/jsp/article" commandName="article"
		method="post">
		<input type="submit" value="생성" />
	</form:form>

</body>
</html>
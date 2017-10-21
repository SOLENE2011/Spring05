<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><spring:message code="login.form.title" /></title>
</head>
<body>
<form:form commandName="login">
<form:errors />
<p>
	<label for="loginType"><spring:message code="login.form.type" /></label>
	<form:select path="loginType" items="${loginTypes}" />
</p>
<p>
	<label for="id"><spring:message code="login.form.id" /></label>
	<form:input id="id" path="id"/>
	<form:errors path="id" />
</p>
<p>
	<label for="password"><spring:message code="login.form.password" /></label>
		<form:password id="password" path="password" />
		<form:errors path="password" />
</p>
<p>
	<input type="submit" value="<spring:message code="login.form.submit" />">
	</p>
</form:form>
</body>
</html>
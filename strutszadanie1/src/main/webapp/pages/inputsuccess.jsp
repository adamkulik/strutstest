<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<bean:message key="form.name"/><%= session.getAttribute("name") %>
<BR/>
<bean:message key="form.middlename"/><%= session.getAttribute("middleName") %>
<BR/>
<bean:message key="form.lastname"/><%= session.getAttribute("lastName") %>
<BR/>
<bean:message key="form.sex"/><%= session.getAttribute("sex") %>
<BR/>
<bean:message key="form.day"/><%= session.getAttribute("day") %>
<BR/>
<bean:message key="form.month"/><%= session.getAttribute("month") %>
<BR/>
<bean:message key="form.year"/><%= session.getAttribute("year") %>
<BR/>
<bean:message key="form.year"/><%= session.getAttribute("state") %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<logic:iterate name="planeticketslist" id="planeticketslistid">
<bean:write name="planeticketslistid" property="firstName"/>
<bean:write name="planeticketslistid" property="middleName"/>
<bean:write name="planeticketslistid" property="lastName"/>
<bean:write name="planeticketslistid" property="birthDay"/>
<bean:write name="planeticketslistid" property="birthMonth"/>
<bean:write name="planeticketslistid" property="birthYear"/>
<bean:write name="planeticketslistid" property="voivodship"/>
<bean:write name="planeticketslistid" property="extraLuggage"/>
<bean:write name="planeticketslistid" property="meal"/>
<bean:write name="planeticketslistid" property="windowSeat"/>
</logic:iterate>


</body>
</html>
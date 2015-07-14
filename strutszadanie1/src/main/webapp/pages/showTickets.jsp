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
<logic:present name="planeticketslist">
<logic:iterate name="planeticketslist" id="planeticketslistid">
<bean:write name="planeticketslistid" property="firstName"/>
<BR />
<bean:write name="planeticketslistid" property="middleName"/>
<BR />
<bean:write name="planeticketslistid" property="lastName"/>
<BR />
<bean:write name="planeticketslistid" property="birthDay"/>
<BR />
<bean:write name="planeticketslistid" property="birthMonth"/>
<BR />
<bean:write name="planeticketslistid" property="birthYear"/>
<BR />
<bean:write name="planeticketslistid" property="voivodship"/>
<BR />
<bean:write name="planeticketslistid" property="extraLuggage"/>
<BR />
<bean:write name="planeticketslistid" property="meal"/>
<BR />
<bean:write name="planeticketslistid" property="windowSeat"/>
<BR />
<BR />
</logic:iterate>
</logic:present>
<logic:present name="trainticketslist">
<logic:iterate name="trainticketslist" id="trainticketslistid">
<bean:write name="trainticketslistid" property="firstName"/>
<BR />
<bean:write name="trainticketslistid" property="middleName"/>
<BR />
<bean:write name="trainticketslistid" property="lastName"/>
<BR />
<bean:write name="trainticketslistid" property="birthDay"/>
<BR />
<bean:write name="trainticketslistid" property="birthMonth"/>
<BR />
<bean:write name="trainticketslistid" property="birthYear"/>
<BR />
<bean:write name="trainticketslistid" property="voivodship"/>
<BR />
<bean:write name="trainticketslistid" property="ticketClass"/>
<BR />
<bean:write name="trainticketslistid" property="noTransfer"/>
<BR />
<bean:write name="trainticketslistid" property="bikeTransport"/>
<BR /><BR />
</logic:iterate>
</logic:present>


</body>
</html>
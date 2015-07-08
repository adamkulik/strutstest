<%@page import="comarch.zadanie1.serialization.XmlSerializationImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<bean:message key="form.name" /><%=session.getAttribute("name")%>
	<BR />
	<bean:message key="form.middlename" /><%=session.getAttribute("middleName")%>
	<BR />
	<bean:message key="form.lastname" /><%=session.getAttribute("lastName")%>
	<BR />
	<bean:message key="form.sex" /><%=session.getAttribute("sex")%>
	<BR />
	<bean:message key="form.day" /><%=session.getAttribute("day")%>
	<BR />
	<bean:message key="form.month" /><%=session.getAttribute("month")%>
	<BR />
	<bean:message key="form.year" /><%=session.getAttribute("year")%>
	<BR />
	<bean:message key="form.state" /><%=session.getAttribute("state")%>
	<BR />
	<bean:message key="form.tickettype" /><%=session.getAttribute("ticketType")%>
	<BR />
	<logic:equal name="ticketType" value="train">
		<bean:message key="form.ticketclass" /><%=session.getAttribute("ticketClass")%>
		<BR />
		<bean:message key="form.notransfer" />
		<%=session.getAttribute("noTransfer")%>
		<BR />
		<bean:message key="form.bike" /><%=session.getAttribute("bikeTransport")%>
	</logic:equal>
	<logic:equal name="ticketType" value="plane">
		<bean:message key="form.extraluggage" /><%=session.getAttribute("extraLuggage")%>
		<BR />
		<bean:message key="form.windowseat" /><%=session.getAttribute("windowSeat")%>
		<BR />
		<bean:message key="form.meal" /><%=session.getAttribute("meal")%>
	</logic:equal>
	<BR />
	<%
		if (request.getParameter("buttonName") != null) {

			XmlSerializationImpl sg;
			if (session.getAttribute("ticketType").equals("plane")) {

				sg = new XmlSerializationImpl(
						(String) session.getAttribute("name"),
						(String) session.getAttribute("middleName"),
						(String) session.getAttribute("lastName"),
						(String) session.getAttribute("sex"),
						(String) session.getAttribute("day"),
						(String) session.getAttribute("month"),
						(String) session.getAttribute("year"),
						(String) session.getAttribute("ticketType"),
						(Boolean) session.getAttribute("extraLuggage"),
						(Boolean) session.getAttribute("windowSeat"),
						(Boolean) session.getAttribute("meal"),
						(String) session.getAttribute("state"));

			} else {
			
				sg = new XmlSerializationImpl(
						(String) session.getAttribute("name"),
						(String) session.getAttribute("middleName"),
						(String) session.getAttribute("lastName"),
						(String) session.getAttribute("sex"),
						(String) session.getAttribute("day"),
						(String) session.getAttribute("month"),
						(String) session.getAttribute("year"),
						(String) session.getAttribute("ticketType"),
						(String) session.getAttribute("ticketClass"),
						(Boolean) session.getAttribute("noTransfer"),
						(Boolean) session.getAttribute("bikeTransport"),
						(String) session.getAttribute("state"));
			}
			sg.saveMe();

		}
	%>

	<form name="form1" method="POST">
		<input type="HIDDEN" name="buttonName"> <input type="BUTTON"
			value="Save to Xml" onclick="button1()">
	</form>


	<SCRIPT LANGUAGE="JavaScript">
		function button1() {
			document.form1.buttonName.value = "yes";
			form1.submit();
		}
	</SCRIPT>






</body>
</html>
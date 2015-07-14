<%@page import="comarch.zadanie1.serialization.XmlSerializationImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>


<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>

<logic:present name="ticketType">
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-bottom">
			<div class="container">

				<p>Progress:</p>
				<div class="progress">
					<div class="progress-bar progress-bar-striped active"
						role="progressbar" aria-valuenow="100" aria-valuemin="0"
						aria-valuemax="100" style="width: 100%">100%</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="navbar-header"></div>
				<div>
					<ul class="nav navbar-nav navbar-right">
						<li><html:link page="/Register.do">
								<bean:message key="register.page" />
							</html:link></li>
						<li><html:link page="/Login.do">
								<bean:message key="login" />
							</html:link></li>
						<li><html:link page="/Test.do">
								<bean:message key="mainpage" />
							</html:link></li>
						<li><html:link page="/Language.do?method=english">
								<bean:message key="language.en" />
							</html:link></li>
						<li><html:link
								page="/L
    			     anguage.do?method=german">
								<bean:message key="language.pl" />
							</html:link></li>
					</ul>
				</div>
			</div>
		</nav>
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

						sg = new XmlSerializationImpl((String) session.getAttribute("name"),
								(String) session.getAttribute("middleName"), (String) session.getAttribute("lastName"),
								(String) session.getAttribute("sex"), (String) session.getAttribute("day"),
								(String) session.getAttribute("month"), (String) session.getAttribute("year"),
								(String) session.getAttribute("ticketType"),
								(Boolean) session.getAttribute("extraLuggage"),
								(Boolean) session.getAttribute("windowSeat"), (Boolean) session.getAttribute("meal"),
								(String) session.getAttribute("state"));

					} else {

						sg = new XmlSerializationImpl((String) session.getAttribute("name"),
								(String) session.getAttribute("middleName"), (String) session.getAttribute("lastName"),
								(String) session.getAttribute("sex"), (String) session.getAttribute("day"),
								(String) session.getAttribute("month"), (String) session.getAttribute("year"),
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
				class="btn btn-info btn-medium" value="Save to Xml"
				onclick="button1()">


		</form>



		<script type="text/javascript">
			function button1() {
				document.form1.buttonName.value = "yes";
				form1.submit();
			}
		</script>


		&nbsp;
		<button type="button" class="btn btn-info btn-medium" name="back"
			onclick="history.back()">Wstecz</button>
		<html:link page="/Login.do" styleClass="btn btn-info btn-medium">Zaloguj</html:link>
		<logic:present name="userid">
			<html:link page="/AddTicket.do" styleClass="btn btn-info btn-medium">Zapisz do bazy</html:link>
		</logic:present>



	</body>
</logic:present>

</html>
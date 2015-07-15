<%@page import="comarch.zadanie1.serialization.XmlSerializationImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>


<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>

<logic:present name="ticketType">
	<body>

		<div align="center">
			<div class="container">
				<div class="jumbotron">
					<h2>

						<bean:message key="summary.title" />


					</h2>
				</div>
			</div>

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
							<li><html:link page="/Language.do?method=german">
									<bean:message key="language.pl" />
								</html:link></li>
						</ul>
					</div>
				</div>
			</nav>




			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4" style="background-color: #EEEEEE;">
						<div class="bs-example">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Data</th>
										<th>Values</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><bean:message key="form.name" /></td>
										<td><%=session.getAttribute("name")%></td>

									</tr>
									<tr>
										<td><bean:message key="form.middlename" /></td>
										<td><%=session.getAttribute("middleName")%></td>

									</tr>
									<tr>
										<td><bean:message key="form.lastname" /></td>
										<td><%=session.getAttribute("lastName")%></td>

									</tr>
									<tr>
										<td><bean:message key="form.sex" /></td>
										<td><%=session.getAttribute("sex")%></td>

									</tr>
									<tr>
										<td><bean:message key="form.day" /></td>
										<td><%=session.getAttribute("day")%></td>

									</tr>
									<tr>
										<td><bean:message key="form.month" /></td>
										<td><%=session.getAttribute("month")%></td>

									</tr>
									<tr>
										<td><bean:message key="form.year" /></td>
										<td><%=session.getAttribute("year")%></td>
									</tr>
									<tr>
										<td><bean:message key="form.state" /></td>
										<td><%=session.getAttribute("state")%></td>
									</tr>
									<tr>
										<td><bean:message key="form.tickettype" /></td>
										<td><%=session.getAttribute("ticketType")%></td>
									</tr>

									<logic:equal name="ticketType" value="train">
										<tr>
											<td><bean:message key="form.ticketclass" /></td>
											<td><%=session.getAttribute("ticketClass")%></td>
										</tr>
										<tr>
											<td><bean:message key="form.notransfer" /></td>
											<td><%=session.getAttribute("noTransfer")%></td>
										</tr>
									</logic:equal>


									<logic:equal name="ticketType" value="plane">
										<tr>
											<td><bean:message key="form.extraluggage" /></td>
											<td><%=session.getAttribute("extraLuggage")%></td>
										</tr>
										<tr>
											<td><bean:message key="form.windowseat" /></td>
											<td><%=session.getAttribute("windowSeat")%></td>
										</tr>
										<tr>
											<td><bean:message key="form.meal" /></td>
											<td><%=session.getAttribute("meal")%></td>
										</tr>


									</logic:equal>

								</tbody>
							</table>
						</div>


						<div class="btn-group btn-group-justified" role="group"
							aria-label="...">
							<div class="btn-group" role="group">

								<FORM NAME="form1" METHOD="POST">
									<INPUT TYPE="HIDDEN" NAME="buttonName"> <INPUT
										TYPE="BUTTON" VALUE="Save to XMl"
										class="btn btn-info btn-medium" ONCLICK="button1();">
								</FORM>
							</div>
							<div class="btn-group" role="group">

								<FORM NAME="form2" METHOD="POST">
									<INPUT TYPE="HIDDEN" NAME="button1"> <INPUT
										TYPE="BUTTON" VALUE="Wstecz" class="btn btn-info btn-medium"
										ONCLICK="history.back();">
								</FORM>


							</div>
							<div class="btn-group" role="group">
								<FORM NAME="form2" METHOD="POST">
									<input type="button" class="btn btn-info btn-medium"
										value="login"
										onclick="window.location = '/strutszadanie1/Login.do';">
								</FORM>

							</div>
							<div class="btn-group" role="group">

								<logic:present name="userid">
									<FORM NAME="form3" METHOD="POST">
										<INPUT TYPE="HIDDEN" NAME="button2"> <INPUT
											TYPE="BUTTON" VALUE="Zapisz do bazy"
											class="btn btn-info btn-medium"
											onclick="window.location = '/strutszadanie1/AddTicket.do';">
									</FORM>
								</logic:present>
							</div>





						</div>




					</div>

				</div>
			</div>
		</div>


		<%	
			request.getSession().setAttribute("pass", 15);
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





		<script type="text/javascript">
			function button1() {

				document.form1.buttonName.value = "button 1"

				form1.submit();
			}
		</script>


		&nbsp;




	</body>
</logic:present>
</html>


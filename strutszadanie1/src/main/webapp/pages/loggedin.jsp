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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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

<div class="row">
	
		<div class="col-sm-4"></div>
	<div class="col-sm-4" style="background-color: #EEEEEE;">
		<h2>
<BR/><BR/>
			Welcome
			<%=session.getAttribute("userdisplay")%> <BR/><BR/>
			
			<logic:present name="userid">
				<FORM NAME="form3" METHOD="POST">
					<INPUT TYPE="HIDDEN" NAME="button4"> <INPUT TYPE="BUTTON"
						VALUE="Show Tickets" class="btn btn-success btn-medium"
						onclick="window.location = '/strutszadanie1/AddTicket.do';">
				</FORM>
			</logic:present>

		</h2>
</div>

	</div>





</body>
</html>
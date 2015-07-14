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
				  	 <li><html:link page="/Test.do"><bean:message key="mainpage" /></html:link></li>
   	 		 	     <li><html:link page="/Language.do?method=english"><bean:message key="language.en" /></html:link></li>
    			     <li><html:link page="/Language.do?method=german"><bean:message key="language.pl" /></html:link></li>
				   </ul>
				</div>
			</div>
		</nav>
Welcome <%=session.getAttribute("userdisplay")%>
<%-- <jsp:forward page="ShowTickets.do" />  --%>
</body>
</html>
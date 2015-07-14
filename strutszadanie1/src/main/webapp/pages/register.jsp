<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<div align="center">

		<div class="container">

			<div class="jumbotron">
				<h2>
					<bean:message key="exercise01.formpage.title" />
				</h2>

			</div>
			<html:errors />

		</div>
	</div>

	<nav class="navbar navbar-inverse navbar-fixed-bottom">
	<div class="container-fluid">
		<div class="navbar-header"></div>
		<div>
			<ul class="nav navbar-nav navbar-right">
				<li><html:link page="/Language4.do?method=english">
						<bean:message key="language.en" />
					</html:link></li>
				<li><html:link page="/Language4.do?method=german">
						<bean:message key="language.pl" />
					</html:link></li>
			</ul>
		</div>
	</div>
	</nav>



	<div class="container-fluid">

		<div class="col-sm-4"></div>


		<div class="col-sm-4" style="background-color: #EEEEEE;">
			<html:form action="/Registered" method="POST">
				<bean:message key="register.newusername" />:
 <html:text styleId="newusername" property="newusername" maxlength="32"/>
				<BR />

				<bean:message key="register.newpassword" />:
 
<html:password styleId="newpassword" property="newpassword" maxlength="32" />
				<BR />

				<bean:message key="register.passwordcheck" />:

<html:password styleId="passwordcheck" property="passwordcheck"
					maxlength="32" />
				<BR />

				<bean:message key="register.visiblename" />:

<html:text styleId="visiblename" property="visiblename" maxlength="32" />
				<BR />

				<html:submit styleClass="btn btn-info btn-medium" property="step"
					onclick="validate()">
					<bean:message key="button.submit" />
				</html:submit>
			</html:form>
		</div>
		<div class="col-sm-4"></div>
	</div>

	<SCRIPT type="text/javascript">
		function validateStrings(param) {
			var element = document.getElementById(param).value;

			if (element == null || element.length === 0) {
				window.alert(param + ' cannot be empty');
				return false;
			}
			if (element.length > 32) {
				window.alert(param + ' contains more than 32 characters!');
				return false;
			}
			return true;
		}

		function validatePassword(param, param2) {
			var password1 = document.getElementById(param).value;
			var password2 = document.getElementById(param2).value;

			if (password1 != password2) {
				window.alert('Password must be the same!');
				return false;
			}
			return true;
		}

		function validate() {
			validateStrings("newusername");
			validateStrings("newpassword");
			validateStrings("passwordcheck");
			validateStrings("visiblename");
			validatePassword("newpassword", "passwordcheck")

		}
	</SCRIPT>



















</body>
</html>
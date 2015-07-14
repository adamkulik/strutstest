<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="jumbotron">
	<h2>
		<bean:message key="exercise01.formpage.title" />
	</h2>
</div>
</div>
<nav class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <div>
      <ul class="nav navbar-nav navbar-right">
	       <li><html:link page="/Register.do"><bean:message key="register.page" /></html:link></li>
   	   	   <li><html:link page="/Test.do"><bean:message key="mainpage" /></html:link></li>
   	       <li><html:link page="/Language.do?method=english"><bean:message key="language.en" /></html:link></li>
    	   <li><html:link page="/Language.do?method=german"><bean:message key="language.pl" /></html:link></li>
      </ul>
    </div>
  </div>
</nav>
 <div class="container-fluid">
  <div class="row">
    <div class="col-sm-4">
    </div>
    <div class="col-sm-4" style="background-color:#EEEEEE;">
 <html:form action="/Logged" method="POST">
<html:text styleId="username" property="username"/>
<html:password styleId="password" property="password" />
<html:submit styleClass="btn btn-info btn-medium" property="step">
		<bean:message key="button.submit" />
        </html:submit>
</html:form>
    </div>
   	<div class="col-sm-4"></div>
  </div>
</div>


</body>
</html>
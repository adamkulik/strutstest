<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>


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
       				 <li><html:link page="/Login.do"><bean:message key="login" /></html:link></li>
   	   			  	 <li><html:link page="/Test.do"><bean:message key="mainpage" /></html:link></li>
   	 		 	     <li><html:link page="/Language.do?method=english"><bean:message key="language.en" /></html:link></li>
    			     <li><html:link page="/Language.do?method=german"><bean:message key="language.pl" /></html:link></li>
			</ul>
		</div>
	</div>
	</nav>



	<div class="container-fluid">

		<div class="col-sm-4"></div>
		
		
		<div class="col-sm-4" style="background-color: #EEEEEE;">
			<html:form action="/Registered" method="POST">
				<bean:message key="register.newusername" />:
 <html:text styleId="newusername" property="newusername" />
				<BR />

				<bean:message key="register.newpassword" />:
 
<html:password styleId="newpassword" property="newpassword" />
				<BR />

				<bean:message key="register.passwordcheck" />:

<html:password styleId="passwordcheck" property="passwordcheck" />
				<BR />

				<bean:message key="register.visiblename" />:

<html:text styleId="visiblename" property="visiblename" />
				<BR />

				<html:submit styleClass="btn btn-info btn-medium" property="step" onclick="validate()">
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
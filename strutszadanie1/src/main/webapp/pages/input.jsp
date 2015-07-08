
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>

<html:html xhtml="true">

<head>
<title></title>
<html:base />
</head>

<div align="center">
	<h2>
		<bean:message key="exercise01.formpage.title" />
		

	</h2>


	<html:link page="/Language.do?method=english">English</html:link>
	<html:link page="/Language.do?method=german">Polski</html:link>
		
	<html:errors />	
   
    
	<html:form action="/Input" method="GET">

		<bean:message key="prompt.customer.firstname" />:
		<html:text property="name" size="16" maxlength="16"/>
		<BR />
		<bean:message key="prompt.customer.middlename" />:
		<html:text property="middleName" size="16" maxlength="16" />
		<BR />
		<bean:message key="prompt.customer.lastname" />:
		<html:text property="lastName" size="16" maxlength="16" />
		<BR />
		<P />

		<div>

			<bean:message key="radio.name" />
			:

			<html:radio property="sex" value="male" />
			<bean:message key="radio.sex.male" />

			<html:radio property="sex" value="female" />
			<bean:message key="radio.sex.female" />

		</div>


		<BR />

		<html:reset value="Reset" />

    	&nbsp;
    	
		<html:submit property="step" />

		<!-- <html:cancel>
 
    	</html:cancel> -->

	</html:form>
</div>
</body>

</html:html>


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

	<html:errors />	
   
    
	<html:form action="/Input2" method="GET">

		<bean:message key="prompt.customer.day" />:
		<html:text property="day" size="2" maxlength="2" />
		<BR />
		<bean:message key="prompt.customer.month" />:
		<html:text property="month" size="2" maxlength="2" />
		<BR />
		<bean:message key="prompt.customer.year" />:
		<html:text property="year" size="4" maxlength="4" />
		<BR />
		<P />



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

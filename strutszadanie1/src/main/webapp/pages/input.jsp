<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>

<html:html xhtml="true">

<head>
	<title></title>
	<html:base/>
</head>

<div align="center">
	<h2></h2>

	<html:errors/>

	<html:form action="/Input" method="GET">


		<html:text property="name" size="16" maxlength="16"/>
		<BR/>


		<html:text property="lastName" size="16" maxlength="16"/>
		<BR/>
		<P/>
		<html:radio property="sex" value="male" />
		<BR/>
		<html:radio property="sex" value="female" />
		<BR/>
		<html:reset value="Reset" />
		<BR/>  
		<html:submit property="step">

    	</html:submit>

    	&nbsp;

    	<html:cancel>
 
    	</html:cancel>

  	</html:form>
</div>
</body>

</html:html>
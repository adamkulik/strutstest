
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>

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

	<%boolean radio = false; %>
	<html:form action="/Input3" method="GET">
		<html:radio property="ticketType" value="true" onchange="<% radio = true; %>"/>
			<html:checkbox property="extraLuggage" disabled="<%=radio %>"/>
		<html:radio property="ticketType" value="false" onchange="<% radio = false; %>"/>
			<html:checkbox property="noTransfer" disabled="<%=!radio %>"/>\
			<% out.println(radio); %>
			
		



		<BR />


    	&nbsp;
    	<button type="button" name="back" onclick="history.back()">Wstecz</button>
		<html:submit property="step" />

		<!-- <html:cancel>
 
    	</html:cancel> -->

	</html:form>
</div>
</body>

</html:html>
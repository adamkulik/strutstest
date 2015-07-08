
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
	
	<html:link page="/Language2.do?method=english">English</html:link>
	<html:link page="/Language2.do?method=german">Polski</html:link>

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
		
		<html:select property="state">
			<html:option value="">-- None --</html:option>
			<logic:iterate name="list" id="listid" type="java.lang.String">
				<html:option value="<%=listid%>">
					<bean:write name="listid" />
				</html:option>
			</logic:iterate>
		</html:select>



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

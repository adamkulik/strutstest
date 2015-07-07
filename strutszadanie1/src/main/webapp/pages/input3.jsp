
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

	<html:form action="/Input3" method="GET">
		<bean:message key="prompt.customer.planeticket" />
		<html:radio property="ticketType" value="plane" onchange="disable()"/>
		<BR/>
		<bean:message key="prompt.customer.extraluggage" />
		<html:checkbox styleId="plane1" property="extraLuggage" disabled="false"/>
		<BR/>
		<bean:message key="prompt.customer.windowseat" />
		<html:checkbox styleId="plane2" property="windowSeat" disabled="false"/>
		<BR/>
		<bean:message key="prompt.customer.meal" />
		<html:checkbox styleId="plane3" property="meal" disabled="false"/>
		
		<BR/>
		<BR/>
		<BR/>
		<BR/>
		<bean:message key="prompt.customer.trainticket" />
		<html:radio property="ticketType" value="train" onchange="enable()"/>
		<BR/>
		<bean:message key="prompt.customer.notransfer" />
		<html:checkbox styleId="train1" property="noTransfer" disabled="false"/>
		<BR/>
		<bean:message key="prompt.customer.bike" />
		<html:checkbox styleId="train2" property="bike" disabled="false"/>
		<BR/>
		<bean:message key="prompt.customer.ticketclass" />
		<html:select styleId="train3" property="ticketClass" disabled="false">
			<html:option value="">-- None --</html:option>
			<html:option value="I"> I </html:option>
			<html:option value="II"> II </html:option>
			<html:option value="III"> III </html:option>				
		</html:select>
		
			
		

		<script language = "javascript" type = "text/javascript">
	function disable()
	{
	document.getElementById("plane1").disabled = false;
	document.getElementById("plane2").disabled = false;
	document.getElementById("plane3").disabled = false;
	document.getElementById("train1").disabled = true;
	document.getElementById("train2").disabled = true;
	document.getElementById("train3").disabled = true;
	}
	function enable()
	{
		document.getElementById("plane1").disabled = true;
		document.getElementById("plane2").disabled = true;
		document.getElementById("plane3").disabled = true;
		document.getElementById("train1").disabled = false;
		document.getElementById("train2").disabled = false;
		document.getElementById("train3").disabled = false;
	}
	</script>

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
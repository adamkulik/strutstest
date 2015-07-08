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
		<html:text styleId="day" property="day" size="2" maxlength="2" />
		<BR />
		<bean:message key="prompt.customer.month" />:
		<html:text styleId="month" property="month" size="2" maxlength="2" />
		<BR />
		<bean:message key="prompt.customer.year" />:
		<html:text styleId="year" property="year" size="4" maxlength="4" />
		<BR />
		<P />

		<html:select styleId="state" property="state">
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
		<html:submit property="step" onclick="validate()" />

		<!-- <html:cancel>
 
    	</html:cancel> -->

	</html:form>

	<SCRIPT type="text/javascript">
		function validate() {

			validateDate(1, 31, "day");
			validateDate(1, 12, "month");
			validateDate(1900, 2015, "year");
			validateState();
		}

		function validateState() {

			var value = document.getElementById("state").value;

			if (!value || 0 === value.length)
				window.alert("Please specify your voivodeship");

		}
		function validateDate(minRange, maxRange, tag) {

			var textInput = document.getElementById(tag);
			var value = parseInt(textInput.value, 10);
			var minRange_ = parseInt(minRange, 10);
			var maxRange_ = parseInt(maxRange, 10);

			if (!value || 0 === value.length)
				window.alert('Invalid ' + tag);
			
			if (!isNaN(value) && value > maxRange_ || value < minRange_)
				window.alert('Invalid ' + tag);

		}
	</SCRIPT>
</div>
</body>

</html:html>
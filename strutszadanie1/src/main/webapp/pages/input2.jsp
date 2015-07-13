<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>

<html:html xhtml="true">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<head>
<title></title>
<html:base />
</head>

<div align="center">
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
        <li><html:link page="/Language2.do?method=english"><bean:message key="language.en" /></html:link></li>
        <li><html:link page="/Language2.do?method=german"><bean:message key="language.pl" /></html:link></li>
        <li><html:link page="/Login.do"><bean:message key="login" /></html:link></li>
        <li><html:link page="/Test.do"><bean:message key="mainpage" /></html:link></li>
      </ul>
    </div>
  </div>
</nav>


	<html:errors />

<logic:present name="name">



 <div class="container-fluid">
  <div class="row">
    <div class="col-sm-4">
    </div>
    <div class="col-sm-4" style="background-color:#EEEEEE;">
    	<html:form action="/Input2" method="POST">
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
    	<button class="btn btn-info btn-medium" type="button" name="back" onclick="history.back()"><bean:message key="button.back" /></button>
		<html:submit styleClass="btn btn-info btn-medium" property="step" onclick="validate()">
		<bean:message key="button.submit" />
        </html:submit>

		<!-- <html:cancel>
 
    	</html:cancel> -->

	</html:form>
    </div>
   	<div class="col-sm-4"></div>
  </div>
</div>

</logic:present>
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
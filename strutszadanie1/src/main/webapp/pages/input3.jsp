<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>

<html:html xhtml="true">

<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  
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

<nav class="navbar navbar-inverse navbar-fixed-bottom" >
<div class="container">

  <p>Progress:</p> 
  <div class="progress">
    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:66.6%">
     66.6%
    </div>
  </div>
</div>
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <div>
      <ul class="nav navbar-nav navbar-right" >
        <li><html:link page="/Register.do"><bean:message key="register.page" /></html:link></li>
        <li><html:link page="/Login.do"><bean:message key="login" /></html:link></li>
       	<li><html:link page="/Test.do"><bean:message key="mainpage" /></html:link></li>
        <li><html:link page="/Language.do?method=english"><bean:message key="language.en" /></html:link></li>
        <li><html:link page="/Language.do?method=german"><bean:message key="language.pl" /></html:link></li>
      </ul>
    </div>
  </div>
</nav>
 
 

	<html:errors />


<logic:present name="month">

	<html:form action="/Input3" method="GET">

		 <div class="container-fluid">
  <div class="row">
    <div class="col-sm-4">
    </div>
    <div class="col-sm-4" style="background-color:#EEEEEE;">
    		<bean:message key="prompt.customer.planeticket" />
		<html:radio styleId="planeTicket" property="ticketType" value="plane"
			onchange="disable()" />
		<BR />
		<bean:message key="prompt.customer.extraluggage" />
		<html:checkbox styleId="plane1" property="extraLuggage"
			disabled="true" />
		<BR />
		<bean:message key="prompt.customer.windowseat" />
		<html:checkbox styleId="plane2" property="windowSeat" disabled="true" />
		<BR />
		<bean:message key="prompt.customer.meal" />
		<html:checkbox styleId="plane3" property="meal" disabled="true" />

		<BR />
		<BR />
		<BR />
		<BR />
		<hr />
		<bean:message key="prompt.customer.trainticket" />
		<html:radio styleId="trainTicket" property="ticketType" value="train"
			onchange="enable()" />
		<BR />
		<bean:message key="prompt.customer.notransfer" />
		<html:checkbox styleId="train1" property="noTransfer" disabled="true" />
		<BR />
		<bean:message key="prompt.customer.bike" />
		<html:checkbox styleId="train2" property="bike" disabled="true" />
		<BR />
		<bean:message key="prompt.customer.ticketclass" />
		<html:select styleId="train3" property="ticketClass" disabled="true">
			<html:option value="">-- None --</html:option>
			<html:option value="I"> I </html:option>
			<html:option value="II"> II </html:option>
			<html:option value="III"> III </html:option>
		</html:select>
		<BR />
		<button class="btn btn-info btn-medium" type="button" name="back" onclick="history.back()"><bean:message key="button.back" /></button>
		<html:submit styleClass="btn btn-info btn-medium" property="step" onclick="validate()">
		<bean:message key="button.submit" />
        </html:submit>

    </div>
   	<div class="col-sm-4"></div>
  </div>
</div>






		<script type="text/javascript">
			function disable() {
				document.getElementById("plane1").disabled = false;
				document.getElementById("plane2").disabled = false;
				document.getElementById("plane3").disabled = false;
				document.getElementById("train1").disabled = true;
				document.getElementById("train2").disabled = true;
				document.getElementById("train3").disabled = true;
				radio = false;
			}
			function enable() {
				document.getElementById("plane1").disabled = true;
				document.getElementById("plane2").disabled = true;
				document.getElementById("plane3").disabled = true;
				document.getElementById("train1").disabled = false;
				document.getElementById("train2").disabled = false;
				document.getElementById("train3").disabled = false;
				radio = false;
			}

			function validate() {
				validateTicket();

			}
			function checkTicketClass(){
				
				var ticketClass = document.getElementById("train3").value
				if (!ticketClass || 0 === ticketClass.length)
					
					window.alert("Please specify your ticket class");					
			}
				
			function validateTicket() {

				var plane = document.getElementById("planeTicket").checked
				var train = document.getElementById("trainTicket").checked
				if(train) checkTicketClass()
				
				if (!plane && !train )
					window.alert("Please specify yout ticket type");

			}
		</script>

		<BR />


    	&nbsp;



	</html:form>
	</logic:present>
</div>
</body>

</html:html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<logic:present name="planeticketslist">
	<div class="jumbotron">
	<h2>
		<bean:message key="plane.ticket.title" />
	</h2>
</div>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>first Name</th>
					<th>middle Name</th>
					<th>last Name</th>
					<th>birthDay</th>
					<th>birthMonth</th>
					<th>birthYear</th>
					<th>voivodship</th>
					<th>extra Luggage</th>
					<th>meal</th>
					<th>window Seat</th>
				</tr>
			</thead>
			<tbody>
				<logic:iterate name="planeticketslist" id="planeticketslistid">
					<tr>
						<td><bean:write name="planeticketslistid"
								property="firstName" /></td>
						<td><bean:write name="planeticketslistid"
								property="middleName" /></td>
						<td><bean:write name="planeticketslistid" property="lastName" />
						</td>
						<td><bean:write name="planeticketslistid" property="birthDay" />
						</td>

						<td><bean:write name="planeticketslistid"
								property="birthMonth" /></td>

						<td><bean:write name="planeticketslistid"
								property="birthYear" /></td>

						<td><bean:write name="planeticketslistid"
								property="voivodship" /></td>

						<td><bean:write name="planeticketslistid"
								property="extraLuggage" /></td>

						<td><bean:write name="planeticketslistid" property="meal" /></td>



						<td><bean:write name="planeticketslistid"
								property="windowSeat" /></td>

					</tr>
				</logic:iterate>
			</tbody>
		</table>
		<BR />
		<BR />
	</logic:present>

	<logic:present name="trainticketslist">
	<div class="jumbotron">
	<h2>
		<bean:message key="train.ticket.title" />
	</h2>
</div>
<BR/>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>first Name</th>
				<th>middle Name</th>
				<th>last Name</th>
				<th>birthDay</th>
				<th>birthMonth</th>
				<th>birthYear</th>
				<th>voivodship</th>
				<th>ticketClass</th>
				<th>noTransfer</th>
				<th>bikeTransport</th>
			</tr>
		</thead>
		<tbody>
			<logic:iterate name="trainticketslist" id="trainticketslistid">
				<tr>
					<td><bean:write name="trainticketslistid" property="firstName" /></td>
					<td><bean:write name="trainticketslistid" property="middleName" /></td>
					<td><bean:write name="trainticketslistid" property="lastName" /></td>
					<td><bean:write name="trainticketslistid" property="birthDay" /></td>
					<td><bean:write name="trainticketslistid" property="birthMonth" /></td>
					<td><bean:write name="trainticketslistid" property="birthYear" /></td>
					<td><bean:write name="trainticketslistid" property="voivodship" /></td>
					<td><bean:write name="trainticketslistid" property="ticketClass" /></td>
					<td><bean:write name="trainticketslistid" property="noTransfer" /></td>
					<td><bean:write name="trainticketslistid" property="bikeTransport" /></td>
				</tr>
			</logic:iterate>
		</tbody>
	</table>
</logic:present>





</body>
</html>
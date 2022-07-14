<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.List,com.collegefest.event.debate.entity.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRM</title>
<style>
a:link, a:visited {
	background-color: grey;
	border-radius: 10px;
	color: black;
	padding: 14px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin-bottom: 15px
}

a:hover, a:active {
	background-color: #D3D3D3;
}

#customers {
	border-collapse: collapse;
	width: 100%;
}

#customers  td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #58adbe;
	color: white;
}
</style>
</head>
<body>
	<div>
		<h1
			style="width: 100%; background: #58adbe; padding: 30px; text-align: center">Debate Event</h1>
		<a href="/StudentResource/Student/show-form">Add More Students</a>
		<div style="background-color: mauve; colour: blue;">
			<table id="customers">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Country</th>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.List,com.collegefest.event.debate.entity.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRM</title>
<style>
a:hover#addLink, a:active#addLink {
	background-color: #D3D3D3;
}

a:link#addLink {
	background-color: #c1c1c1;
	border-radius: 10px;
	color: black;
	padding: 14px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin-bottom: 15px
}

a:visited#addLink {
	color: black;
}

#students {
	border-collapse: collapse;
	width: 100%;
}

#students td, #students th {
	border: 1px solid #ddd;
	padding: 8px;
}

#students tr:nth-child(even) {
	background-color: #f2f2f2;
}

#students tr:hover {
	background-color: #ddd;
}

#students th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #58adbe;
	color: white;
}

button {
	background: none !important;
	border: none;
	padding: 0 !important;
	color: #069;
	text-decoration: underline;
	cursor: pointer;
	font-size: 15px;
}
</style>
</head>
<body>
	<script type="text/javascript">
		function myFunction(id) {
			if (confirm("Are you sure you want to delete?")) {
				window.location.href = '/StudentResource/Student/delete-student?id='
						+ id
			}
		}
	</script>
	<div>
		<h1
			style="width: 100%; background: #58adbe; padding: 30px; text-align: center">Debate Event</h1>

		<a id="addLink" href="/StudentResource/Student/show-form">Add
			More Students</a>
		<div>
			<%
			List<Student> students = (List<Student>) request.getAttribute("studentInfo");
			out.println("<table id='students'><tr><th>First Name</th><th>Last Name</th><th>Course</th><th>Country</th><th>Action</th></tr>");
			for (Student stu : students) {
				int id = stu.getId();
				out.println("<tr><td>" + stu.getFirstName() + "</td><td>" + stu.getLastName() + "</td><td>" + stu.getCourse()+ "</td><td>" + stu.getCountry()
				+ "</td><td><button id='deleteUser' onclick='myFunction(\"" + id
				+ "\")'>Delete</button> | <a style='color:#069!important; font-size: 15px!important; font-family: system-ui;' href='/StudentResource/Student/open-update-form?id="
				+ stu.getId() + "'>Update</a></td></tr>");
			}

			out.println("</table>");
			%>
		</div>
	</div>
</body>
</html>
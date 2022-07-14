<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Fest</title>
<style type="text/css">
input[type=text] {
	width: 50%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 150px;
	background-color: #58adbe;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.labels {
	width: 100px;
	display: inline-block
}

.submit {
	margin-left: 104px!important;
}

.form {
	width: 50%;
	margin-left: 200px;
}

.backToList {
	margin-top: 40px;
	display: block;
}

.h3 {
	padding: 0;
	margin: 0;
}
</style>
</head>
<body>
	<div>
		<h1
			style="width: 100%; background: #58adbe; padding: 30px; text-align: center">Debate Event</h1>
		<form class="form" action="/StudentResource/Student/add-student"
			method="post">
			<h3 class="h3">Save Student</h3>
			<input type="hidden" name="id" placeholder="StudentId" /> <br>
			<br> <label class="labels">First Name:</label> <input
				type="text" name="firstName" placeholder="First Name" /> <br>
			<label class="labels">Last Name:</label> <input type="text"
				name="lastName" placeholder="Last Name" /> <br> <label
				class="labels">Course:</label> <input type="text" name="course"
				placeholder="Course" /> <br><label
				class="labels">Country:</label> <input type="text" name="country"
				placeholder="Country" /><br>
			<div class="submit">
				<input type="submit" name="s" value="Save" />
			</div>
			<a class="backToList"
				href="/StudentResource/Student/show-students">Back To List</a>
		</form>
	</div>
</body>
</html>
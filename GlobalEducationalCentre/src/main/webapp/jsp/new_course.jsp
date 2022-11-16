<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD NEW COURSE</title>
</head>
<body>
	<div align="center">
		<h1>add new course</h1>

		<h3>* marked items enter is compulsory</h3>
		<form:form action="/save" method="post" modelAttribute="courses">
			<table border="0" cellpadding="5">

				<tr>
					<td>* The course number :</td>
					<td><form:input path="courseId" /></td>
				</tr>

				<tr>
					<td>* Enter Course Name :</td>
					<td><form:input path="courseName" /></td>
				</tr>

				<tr>
					<td>* Enter Course Fees :</td>
					<td><form:input path="fees" /></td>
				</tr>

				<tr>
					<td>* Enter Course Duration :</td>
					<td><form:input path="duration" /></td>
				</tr>

				<tr>
					<td><form:button>Save</form:button></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>
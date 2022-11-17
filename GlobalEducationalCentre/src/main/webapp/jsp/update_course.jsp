<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE COURSE</title>
<style type="text/css">
span {
	color: red;
}
</style>
</head>
<body>
	<div align="center">
		<h1 style="color: gold">Edit Course Fees And Duration</h1>

		<h3><span>* marked items enter is compulsory</span></h3>
		
		<form:form action="/save?action=edit" method="post" modelAttribute="courses">
		
			<table border="0">

				<tr>
					<td> Enter course number :</td>
					<td><form:input path="courseId" readonly="true" value = "${courses.courseId}"/></td>
				</tr>

				<tr>
					<td> Enter Course Name :</td>
					<td><form:input path="courseName" readonly="true" value = "${courses.courseName}" /></td>
				</tr>

				<tr>
					<td><span>*</span> Enter Course Fees :</td>
					<td><form:input path="fees" value = "${courses.fees}"/></td>
					<td><form:errors path="fees"/></td>
				</tr>

				<tr>
					<td><span>*</span> Enter Course Duration :</td>
					<td><form:input path="duration" value = "${courses.duration}"/></td>
					<td><form:errors path="duration"/></td>
				</tr>

				<tr>
					<td><form:button>Update</form:button></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD NEW COURSE</title>

<style type="text/css">
span {
	color: red;
}
</style>

</head>
<body>
	<div align="center">
		<h1 style="color:gold">Add New Course</h1>

		<h3><span>* marked items enter is compulsory</span></h3>

		<form:form action="/save?action=new" method="post" modelAttribute="courses">

			<table border="0">

				<tr>
					<td> Enter course number :</td>
					<td><form:input path="courseId" value="${courses.courseId}" readonly="true"/></td>
					
				</tr>

				<tr>
					<td><span>*</span> Enter Course Name :</td>
					<td><form:input path="courseName" /></td>
					<td><form:errors path="courseName"/></td>
				</tr>

				<tr>
					<td><span>*</span> Enter Course Fees :</td>
					<td><form:input path="fees" /></td>
					<td><form:errors path="fees"/></td>
				</tr>

				<tr>
					<td><span>*</span> Enter Course Duration :</td>
					<td><form:input path="duration" /></td>
					<td><form:errors path="duration"/></td>
				</tr>

				<tr>
					<td><form:button>Save</form:button></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>
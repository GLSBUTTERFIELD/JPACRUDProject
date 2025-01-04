<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirm Class Deletion</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<h2>Are you sure you want to delete this class?</h2>
	<table class="table table-bordered table-striped table-hover">
		<thead class="table-dark">
			<tr>
				<th scope="col">Class #</th>
				<th scope="col">Type</th>
				<th scope="col">Date</th>
				<th scope="col">Start Time</th>
				<th scope="col">Instructor</th>
				<th scope="col">Intervals</th>
				<th scope="col">Last Updated</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${classToDelete.id}</td>
				<td>${classToDelete.type }</td>
				<td><fmt:parseDate value="${classToDelete.date}"
						pattern="yyyy-MM-dd" var="parsedDate" type="date" /> <fmt:formatDate
						value="${parsedDate}" var="newParsedDate" type="date"
						pattern="MMMM d, yyyy" />${newParsedDate}</td>

				<td><fmt:parseDate var="parsedTime" type="time"
						value="${classToDelete.startTime}" pattern="HH:mm" /> <fmt:formatDate
						type="time" value="${parsedTime}" pattern="h:mm a"
						var="formattedTime" />${formattedTime}</td>

				<td>${classToDelete.instructor}</td>
				<td>${classToDelete.interval1}, ${classToDelete.interval2}</td>
				<td><fmt:parseDate value="${classToDelete.lastUpdate}"
						pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" /> <fmt:formatDate
						value="${parsedDate}" var="newParsedDate" pattern="MMMM d, yyyy" />${newParsedDate}
					@ <fmt:formatDate value="${parsedDate}" var="formattedTime"
						type="time" pattern="h:mm a" />${formattedTime}</td>
			</tr>
		</tbody>
	</table>

	<form action="/deleteClass.do" method="POST">
		<input type="hidden" name="classId" value="${classToDelete.id}">
		<button type="submit" class="btn btn-danger">Yes, Delete
			Class</button>
	</form>
	<a href="/home.do" class="btn btn-secondary">Cancel</a>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class Added</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<a href="home.do" class="btn btn-outline-dark btn-small">Home</a>
	<form action="/confirmDeleteClass.do?classId=${newClass.id}"
		method="GET">
		<input type="hidden" name="classId" value="${newClass.id}">
		<button type="submit" class="btn btn-outline-dark btn-small">
			Delete Class ${newClass.id}</button>
	</form>
	<a href="updateClass.do?classId=${newClass.id }"
		class="btn btn-outline-dark btn-small" role="button">Update Class
		${newClass.id }</a>

	<h1>${message}</h1>
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
				<td>${newClass.id}</td>
				<td>${newClass.type }</td>
				<td><fmt:parseDate value="${newClass.date}"
						pattern="yyyy-MM-dd" var="parsedDate" type="date" /> <fmt:formatDate
						value="${parsedDate}" var="newParsedDate" type="date"
						pattern="MMMM d, yyyy" />${newParsedDate}</td>

				<td><fmt:parseDate var="parsedTime" type="time"
						value="${newClass.startTime}" pattern="HH:mm" /> <fmt:formatDate
						type="time" value="${parsedTime}" pattern="h:mm a"
						var="formattedTime" />${formattedTime}</td>

				<td>${newClass.instructor}</td>
				<td>${newClass.interval1},${newClass.interval2}</td>
				<td><fmt:parseDate value="${newClass.lastUpdate}"
						pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" /> <fmt:formatDate
						value="${parsedDate}" var="newParsedDate" pattern="MMMM d, yyyy" />${newParsedDate}
					@ <fmt:formatDate value="${parsedDate}" var="formattedTime"
						type="time" pattern="h:mm a" />${formattedTime}</td>
			</tr>
		</tbody>
	</table>
	<img alt="${newClass.instructor} image"
		src="${newClass.instructorImageUrl}">

	<jsp:include page="bootstrapFooter.jsp"></jsp:include>

</body>
</html>
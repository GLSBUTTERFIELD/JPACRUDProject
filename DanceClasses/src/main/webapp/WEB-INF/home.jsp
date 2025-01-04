<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gabby's B21 Dance Classes</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<h1>Get it girl! </h1>
		<a href="addClass.do" class = "btn btn-outline-dark btn-small" role = "button">Add a New Class</a>
		<div class="container">
			
			<form action="showClass.do" method="GET">
				<div class="row">
					<label class="form-label col-auto" for="classId">Class ID:</label>
					<input class="form-control col" type="number" name="classId" /> <input
						class="btn btn-dark col-auto" type="submit" value="Show Class" />
				</div>
			</form>
		</div>
		<h1></h1>
		<h2>Dance Class Log</h2>
		<table class="table table-bordered table-striped table-hover">
			<thead class="table-dark">
				<tr>
					<th scope="col">Class #</th>
					<th scope="col">Date</th>
					<th scope="col">Start Time</th>
					<th scope="col">Instructor</th>
					<th scope="col">Details</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="danceClass" items="${classList}">
					<tr>
						<td>${danceClass.id}</td>
						<td>${danceClass.weekday}<fmt:parseDate
								value="${danceClass.date}" pattern="yyyy-MM-dd" var="parsedDate"
								type="date" /> <fmt:formatDate value="${parsedDate}"
								var="newParsedDate" type="date" pattern="MMMM d, yyyy" />${newParsedDate}</td>

						<td><fmt:parseDate var="parsedTime" type="time"
								value="${danceClass.startTime}" pattern="HH:mm" /> <fmt:formatDate
								type="time" value="${parsedTime}" pattern="h:mm a"
								var="formattedTime" />${formattedTime}</td>

						<td>${danceClass.instructor}</td>
						<td>
							<a href="showClass.do?classId=${danceClass.id }" class = "btn btn-outline-dark btn-small" role = "button">View Class Details</a>
							<a href="updateClass.do?classId=${danceClass.id }" class = "btn btn-outline-dark btn-small" role = "button">Update or Delete Class</a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
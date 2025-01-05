<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gabby's B21 Dance Classes</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid home-page">
	<div class="d-flex align-items-center justify-content-center"> 
		<h1 id="site-heading">Gabby's B21 Dance Class Log</h1></div>
	<table class="table text-center table-background">
	<tr>
	<td colspan="5">
		<div class="d-flex align-items-center justify-content-center">
			<a href="addClass.do" class="btn btn-outline-dark btn-lg me-3"
				role="button">Add a New Class</a>
			<form action="showClass.do" method="GET"
				class="d-flex align-items-center">
				<div class="me-3">
					<label class="form-label mb-0" for="classId">Class ID:</label>
				</div>
				<div class="me-2">
					<input class="form-control form-control-extra-small" type="number" id="classId"
						name="classId" min="1" required />
				</div>
				<div>
					<input class="btn btn-outline-dark btn-lg " type="submit"
						value="Show Class" />
				</div>
			</form>
		</div>
		</td>
		</tr>
		</table>
		<div class="container text-center">
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
									value="${danceClass.date}" pattern="yyyy-MM-dd"
									var="parsedDate" type="date" /> <fmt:formatDate
									value="${parsedDate}" var="newParsedDate" type="date"
									pattern="MMMM d, yyyy" />${newParsedDate}</td>

							<td><fmt:parseDate var="parsedTime" type="time"
									value="${danceClass.startTime}" pattern="HH:mm" /> <fmt:formatDate
									type="time" value="${parsedTime}" pattern="h:mm a"
									var="formattedTime" />${formattedTime}</td>

							<td>${danceClass.instructor}</td>
							<td><a href="showClass.do?classId=${danceClass.id }"
								class="btn btn-outline-dark btn-small" role="button">View
									Class Details</a> <a
								href="updateClass.do?classId=${danceClass.id }"
								class="btn btn-outline-dark btn-small" role="button">Update
									or Delete Class</a>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
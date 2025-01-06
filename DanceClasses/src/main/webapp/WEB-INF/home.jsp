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
			<h1 class="display-2 home-heading">Gabby's B21 Dance Class Log</h1>
		</div>
		<div class="content">
			<table class="table text-center mx-auto">
				<tr>
					<td class="text-center">
						<div class="d-flex justify-content-center">
							<a href="addClass.do" class="btn btn-outline-dark btn-lg me-3"
								role="button">Add New Class</a>
						</div>
					</td>
					<td class="text-center">
						<form action="showClass.do" method="GET"
							class="d-flex justify-content-center">
							<label class="form-label" for="classId">Class ID:</label>
							<div class="me-3">
								<input class="form-control" type="number" id="classId"
									name="classId" min="1" required />
							</div>
							<div>
								<input class="btn btn-outline-dark btn-lg me-3" type="submit"
									value="Find Class By #" />
							</div>
						</form>
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
	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
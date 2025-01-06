<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class Details</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-home-tab" href="home.do" type="button" role="tab"
				aria-controls="pills-home" aria-selected="false">Home</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-update-tab" href="updateClass.do?classId=${danceClass.id}"
				type="button" role="tab" aria-controls="pills-update"
				aria-selected="false">Update This Class</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-delete-tab"
				href="confirmDeleteClass.do?classId=${danceClass.id}" type="button"
				role="tab" aria-controls="pills-delete" aria-selected="false">Delete
					This Class</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-create-tab" href="addClass.do" type="button" role="tab"
				aria-controls="pills-create" aria-selected="false">Add A New
					Class</a></li>
		</ul>

		<div class="container text-center">
			<h1 class="display-4"> Class #${danceClass.id}: ${danceClass.type }
			with ${danceClass.instructor}</h1>
			<table class="table table-borderless">
				<thead class="table-dark">
					<tr>
						<th scope="col">Date</th>
						<th scope="col">Start Time</th>
						<th scope="col">Interval 1</th>
						<th scope="col">Interval 2</th>
						<th scope="col">Last Updated</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${danceClass.weekday}<fmt:parseDate
								value="${danceClass.date}" pattern="yyyy-MM-dd" var="parsedDate"
								type="date" /> <fmt:formatDate value="${parsedDate}"
								var="newParsedDate" type="date" pattern="MMMM d, yyyy" />${newParsedDate}</td>

						<td><fmt:parseDate var="parsedTime" type="time"
								value="${danceClass.startTime}" pattern="HH:mm" /> <fmt:formatDate
								type="time" value="${parsedTime}" pattern="h:mm a"
								var="formattedTime" />${formattedTime}</td>
						<td>${danceClass.interval1}</td>
						<td>${danceClass.interval2}</td>
						<td><fmt:parseDate value="${danceClass.lastUpdate}"
								pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" /> <fmt:formatDate
								value="${parsedDate}" var="newParsedDate" pattern="MMMM d, yyyy" />${newParsedDate}
							@ <fmt:formatDate value="${parsedDate}" var="formattedTime"
								type="time" pattern="h:mm a" />${formattedTime}</td>
					</tr>
				</tbody>
			</table>
			<div class="d-flex">
				<div class="flex-shrink-0">
					<img alt="${danceClass.instructor} image"
						src="${danceClass.instructorImageUrl}">
				</div>

			</div>
		</div>

		<br> <br> <br>
	</div>

	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>


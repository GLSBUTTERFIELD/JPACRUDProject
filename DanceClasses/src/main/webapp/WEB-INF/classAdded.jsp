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
	<div class="container-fluid">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-home-tab" href="home.do" type="button" role="tab"
				aria-controls="pills-home" aria-selected="false">Home</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-update-tab" href="updateClass.do?classId=${newClass.id}"
				type="button" role="tab" aria-controls="pills-update"
				aria-selected="false">Update This Class</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link "
				id="pills-delete-tab"
				href="confirmDeleteClass.do?classId=${newClass.id}" type="button"
				role="tab" aria-controls="pills-delete" aria-selected="false">Delete
					This Class</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-create-tab" href="addClass.do" type="button" role="tab"
				aria-controls="pills-create" aria-selected="false">Add A New
					Class</a></li>
		</ul>
	</div>
	<div class="container text-center">
		<h1 class="display-3">${message}</h1><br>
		<table class="table table-bordered table-striped">
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
					<td>${newClass.type}</td>
					<td>${newClass.weekday} <fmt:parseDate value="${newClass.date}"
							pattern="yyyy-MM-dd" var="parsedDate" type="date" /> <fmt:formatDate
							value="${parsedDate}" var="newParsedDate" type="date"
							pattern="MMMM d, yyyy" />${newParsedDate}</td>

					<td><fmt:parseDate var="parsedTime" type="time"
							value="${newClass.startTime}" pattern="HH:mm" /> <fmt:formatDate
							type="time" value="${parsedTime}" pattern="h:mm a"
							var="formattedTime" />${formattedTime}</td>

					<td>${newClass.instructor}</td>
					<td>${newClass.interval1}, ${newClass.interval2}</td>
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
	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>

</body>
</html>
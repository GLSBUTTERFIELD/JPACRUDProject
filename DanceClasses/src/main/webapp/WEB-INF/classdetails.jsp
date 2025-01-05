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
			<li class="nav-item" role="presentation">
				<a class="nav-link" id="pills-home-tab" href="home.do"
				type="button" role="tab" aria-controls="pills-home" aria-selected="false">Home</a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="nav-link" id="pills-update-tab"
					href="updateClass.do?classId=${danceClass.id}" type="button"
					role="tab" aria-controls="pills-update" aria-selected="false">Update This Class</a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="nav-link" id="pills-delete-tab"
					href="confirmDeleteClass.do?classId=${danceClass.id}" type="button"
					role="tab" aria-controls="pills-delete" aria-selected="false">Delete This Class</a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="nav-link" id="pills-create-tab" href="addClass.do"
					type="button" role="tab" aria-controls="pills-create"
					aria-selected="false">Add A New Class</a>
			</li>
		</ul>
		


		<div class="d-flex">
			<div class="flex-shrink-0">
				<img alt="${danceClass.instructor} image"
					src="${danceClass.instructorImageUrl}">
			</div>
			<div class="flex-grow-1 ms-3 class-info">
				<label>Class # ${danceClass.id}</label> <br> ${danceClass.type }
				with ${danceClass.instructor} <br> ${danceClass.weekday}
				<fmt:parseDate value="${danceClass.date}" pattern="yyyy-MM-dd"
					var="parsedDate" type="date" />
				<fmt:formatDate value="${parsedDate}" var="newParsedDate"
					type="date" pattern="MMMM d, yyyy" />${newParsedDate}
				@
				<fmt:parseDate var="parsedTime" type="time"
					value="${danceClass.startTime}" pattern="HH:mm" />
				<fmt:formatDate type="time" value="${parsedTime}" pattern="h:mm a"
					var="formattedTime" />${formattedTime}<br> Intervals:
				${danceClass.interval1 }, ${danceClass.interval2}<br> Last
				updated
				<fmt:parseDate value="${danceClass.lastUpdate}"
					pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" />
				<fmt:formatDate value="${parsedDate}" var="newParsedDate"
					type="date" pattern="MMMM d, yyyy" />${newParsedDate}
				@
				<fmt:formatDate value="${parsedDate}" var="formattedTime"
					type="time" pattern="h:mm a" />${formattedTime}<br>
			</div>
		</div>

		<br> <br> <br>
	</div>

	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>


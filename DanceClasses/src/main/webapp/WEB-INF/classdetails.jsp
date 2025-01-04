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
		<p class=".fs-4">
			<a href="home.do" class="btn btn-outline-dark btn-small">Home</a> <a
				href="updateClass.do?classId=${danceClass.id }"
				class="btn btn-outline-dark btn-small" role="button">Update or
				Delete Class ${danceClass.id }</a>
		</p>
		<label>Class # ${danceClass.id}</label> <br> ${danceClass.type }
		with ${danceClass.instructor} <br> ${danceClass.weekday}
		<fmt:parseDate value="${danceClass.date}" pattern="yyyy-MM-dd"
			var="parsedDate" type="date" />
		<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
			pattern="MMMM d, yyyy" />${newParsedDate}
		@
		<fmt:parseDate var="parsedTime" type="time"
			value="${danceClass.startTime}" pattern="HH:mm" />
		<fmt:formatDate type="time" value="${parsedTime}" pattern="h:mm a"
			var="formattedTime" />${formattedTime}<br> Intervals:
		${danceClass.interval1 }, ${danceClass.interval2}<br> 
			Last updated
		<fmt:parseDate value="${danceClass.lastUpdate}"
			pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" />
		<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
			pattern="MMMM d, yyyy" />${newParsedDate}
		@
		<fmt:formatDate value="${parsedDate}" var="formattedTime" type="time"
			pattern="h:mm a" />${formattedTime}<br>
		
		
		
		<img
			alt="${danceClass.instructor} image"
			src="${danceClass.instructorImageUrl}"> <br> <br> <br>

	


	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>


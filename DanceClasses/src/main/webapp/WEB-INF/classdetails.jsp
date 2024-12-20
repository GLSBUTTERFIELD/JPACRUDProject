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
		<label>Class # ${danceClass.id}</label> ${danceClass.type } with
		${danceClass.instructor} <br> ${danceClass.weekday}
		<fmt:parseDate value="${danceClass.date}" pattern="yyyy-MM-dd"
			var="parsedDate" type="date" />
		<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
			pattern="MMMM d, yyyy" />${newParsedDate}
		@ ${danceClass.startTime } <br> ${danceClass.intervals }
		${danceClass.lastUpdate } <img alt="${danceClass.instructor} image"
			src="${danceClass.instructorImageUrl}">




<br><br><br><br><br>
		<button type="button" class="btn btn-outline-dark btn-small">
			<a href="updateClass.do?classId=${danceClass.id}">Update Class</a>
		</button>
		
	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>


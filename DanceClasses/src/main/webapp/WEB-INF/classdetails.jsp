<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class Details</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>

	<div class="container-fluid">
		<label>Class # ${danceClass.id}</label><br>
		${danceClass.date } 
		${danceClass.type }
		${danceClass.startTime } ${danceClass.weekday } ${danceClass.intervals }
		${danceClass.lastUpdate } ${danceClass.instructor} <img
			alt="${danceClass.instructor} image"
			src="${danceClass.instructorImageUrl}">
	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
<h2>Success ${message }</h2>>
	<div class="container-fluid">
		<h1>Yay, you added a new class!</h1>
		<label>Class # ${newClass.id}</label> ${newClass.type} with
		${newClass.instructor} <br> ${newClass.weekday}
		<fmt:parseDate value="${newClass.date}" pattern="yyyy-MM-dd"
			var="parsedDate" type="date" />
		<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
			pattern="MMMM d, yyyy" />${newParsedDate}
		@ ${newClass.startTime } <br> ${newClass.intervals }
		${newClass.lastUpdate } <img alt="${newClass.instructor} image"
			src="${newClass.instructorImageUrl}">

		<h1>Updated class details:</h1>
		<label>Class # ${updatedClass.id}</label> ${updatedClass.type} with
		${updatedClass.instructor} <br> ${updatedClass.weekday}
		<fmt:parseDate value="${updatedClass.date}" pattern="yyyy-MM-dd"
			var="parsedDate" type="date" />
		<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
			pattern="MMMM d, yyyy" />${newParsedDate}
		@ ${updatedClass.startTime } <br> ${updatedClass.intervals }
		${updatedClass.lastUpdate } <img alt="${updatedClass.instructor} image"
			src="${updatedClass.instructorImageUrl}">



	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>

</body>
</html>
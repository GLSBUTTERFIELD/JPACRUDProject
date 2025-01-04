<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class Added</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<h3>${message}</h3>
	<label>Class # ${newClass.id}</label> ${newClass.type} with
	${newClass.instructor}
	<br> ${newClass.weekday}
	<fmt:parseDate value="${newClass.date}" pattern="yyyy-MM-dd"
		var="parsedDate" type="date" />
	<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
		pattern="MMMM d, yyyy" />${newParsedDate}
	@ ${newClass.startTime }
	<br> ${newClass.interval1}, ${newClass.interval2}
	${newClass.lastUpdate }
	<img alt="${newClass.instructor} image"
		src="${newClass.instructorImageUrl}">
	<a href="home.do" class="btn btn-outline-dark btn-small">Home</a>

	<jsp:include page="bootstrapFooter.jsp"></jsp:include>

</body>
</html>
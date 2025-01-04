<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update A Class</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
		<h1>Let's update a class!</h1>
		<a href="home.do" class="btn btn-outline-dark btn-small">Home</a>
		<form action="/confirmDeleteClass.do?classId=${classToUpdate.id}" method="GET">
			<input type="hidden" name="classId" value="${classToUpdate.id}">
			<button type="submit" class="btn btn-outline-dark btn-small">
				Delete Class ${classToUpdate.id}</button>
		</form>
		<br>
		<form action="/updateClass.do?classId=${classToUpdate.id}" method="POST">
			<label><strong>Class # ${classToUpdate.id}</strong></label> <br>
			<input type="hidden" name="classId" value="${classToUpdate.id }" /> 
			<label for="date"><strong>Date</strong></label> 
				<input type="date" name = "classToUpdate.date" value="${formattedDate}"/>
				<br>
			<label for="instructor"><strong>Instructor</strong></label> <select
				name="classToUpdate.instructor">
				<option value="Allie"
					<c:if test="${classToUpdate.instructor == 'Allie'}">selected</c:if>>Allie</option>
				<option value="Emily"
					<c:if test="${classToUpdate.instructor == 'Emily'}">selected</c:if>>Emily</option>
				<option value="John"
					<c:if test="${classToUpdate.instructor == 'John'}">selected</c:if>>John</option>
				<option value="Julia"
					<c:if test="${classToUpdate.instructor == 'Julia'}">selected</c:if>>Julia</option>
				<option value="Kenny"
					<c:if test="${classToUpdate.instructor == 'Kenny'}">selected</c:if>>Kenny</option>
				<option value="Mark"
					<c:if test="${classToUpdate.instructor == 'Mark'}">selected</c:if>>Mark</option>
				<option value="Monica"
					<c:if test="${classToUpdate.instructor == 'Monica'}">selected</c:if>>Monica</option>
				<option value="Polly"
					<c:if test="${classToUpdate.instructor == 'Polly'}">selected</c:if>>Polly</option>
				<option value="Quiana"
					<c:if test="${classToUpdate.instructor == 'Quiana'}">selected</c:if>>Quiana</option>
				<option value="Sally"
					<c:if test="${classToUpdate.instructor == 'Sally'}">selected</c:if>>Sally</option>
			</select> <br> <label for="type"><strong>Class Type </strong></label> <input
				type="radio" name="classToUpdate.type" value="SIGNATURE"
				<c:if test="${classToUpdate.type == 'SIGNATURE'}"> checked </c:if> />
			SIGNATURE <input type="radio" name="classToUpdate.type" value="BODY"
				<c:if test="${classToUpdate.type == 'BODY'}"> checked</c:if> />
			BODY<br> <label for="startTime"><strong>Start
					Time: </strong></label> <input name="classToUpdate.startTime" type="time"
				id="startTime" step="900" value="${classToUpdate.startTime}" /> <br>
			<label for="interval1"><strong>Interval 1: </strong></label><select
				name="classToUpdate.interval1">
				<option value="arms"
					<c:if test="${classToUpdate.interval1 == 'arms'}">selected</c:if>>arms</option>
				<option value="chest"
					<c:if test="${classToUpdate.interval1 == 'chest'}">selected</c:if>>chest</option>
				<option value="back"
					<c:if test="${classToUpdate.interval1 == 'back'}">selected</c:if>>back</option>
				<option value="core"
					<c:if test="${classToUpdate.interval1 == 'core'}">selected</c:if>>core</option>
				<option value="glutes"
					<c:if test="${classToUpdate.interval1 == 'glutes'}">selected</c:if>>glutes</option>
				<option value="legs"
					<c:if test="${classToUpdate.interval1 == 'legs'}">selected</c:if>>legs</option>
				<option value="all"
					<c:if test="${classToUpdate.interval1 == 'all'}">selected</c:if>>all</option>
				<option value="other"
					<c:if test="${classToUpdate.interval1 == 'other'}">selected</c:if>>other</option>
			</select> <label for="interval2"><strong>Interval 2: </strong></label><select
				name="classToUpdate.interval2">
				<option value="arms"
					<c:if test="${classToUpdate.interval2 == 'arms'}">selected</c:if>>arms</option>
				<option value="chest"
					<c:if test="${classToUpdate.interval2 == 'chest'}">selected</c:if>>chest</option>
				<option value="back"
					<c:if test="${classToUpdate.interval2== 'back'}">selected</c:if>>back</option>
				<option value="core"
					<c:if test="${classToUpdate.interval2 == 'core'}">selected</c:if>>core</option>
				<option value="glutes"
					<c:if test="${classToUpdate.interval2 == 'glutes'}">selected</c:if>>glutes</option>
				<option value="legs"
					<c:if test="${classToUpdate.interval2== 'legs'}">selected</c:if>>legs</option>
				<option value="all"
					<c:if test="${classToUpdate.interval2 == 'all'}">selected</c:if>>all</option>
				<option value="other"
					<c:if test="${classToUpdate.interval2 == 'other'}">selected</c:if>>other</option>
			</select> 

			
			<br> Last updated
			<fmt:parseDate value="${classToUpdate.lastUpdate}"
				pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" />
			<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
				pattern="MMMM d, yyyy" />${newParsedDate}
			@
			<fmt:formatDate value="${parsedDate}" var="formattedTime" type="time"
				pattern="h:mm a" />${formattedTime}<br>
			<br> <br> <button type="submit" class="btn btn-outline-dark btn-small">Submit Updates</button>
		</form>



	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
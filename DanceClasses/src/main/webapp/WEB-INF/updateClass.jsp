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
		<form action="result.jsp" method="POST">
			<label>Class # ${classToUpdate.id}</label> <br> <label
				for="date">Date </label><input type="date" name="date"
				value="${classToUpdate.date }"/><br>
				<label for="instructor">Instructor</label>
				<select name="instructor">
				<option value="Allie" <c:if test="${classToUpdate.instructor == 'Allie'}">SELECTED</c:if>>Allie</option>
				<option value="Emily" <c:if test="${classToUpdate.instructor == 'Emily'}">selected</c:if>>Emily</option>
				<option value="John" <c:if test="${classToUpdate.instructor == 'John'}">selected</c:if>>John</option>
				<option value="Julia" <c:if test="${classToUpdate.instructor == 'Julia'}">selected</c:if>>Julia</option>
				<option value="Kenny" <c:if test="${classToUpdate.instructor == 'Kenny'}">selected</c:if>>Kenny</option>
				<option value="Mark" <c:if test="${classToUpdate.instructor == 'Mark'}">selected</c:if>>Mark</option>
				<option value="Monica" <c:if test="${classToUpdate.instructor == 'Monica'}">selected</c:if>>Monica</option>
				<option value="Polly" <c:if test="${classToUpdate.instructor == 'Polly'}">selected</c:if>>Polly</option>
				<option value="Quiana" <c:if test="${classToUpdate.instructor == 'Quiana'}">selected</c:if>>Quiana</option>
				<option value="Sally"<c:if test="${classToUpdate.instructor == 'Sally'}">selected</c:if>>Sally</option>
				</select>
				<br>
				<label for="type">Class Type </label> <input type="radio" name="type" value="SIGNATURE"
				<c:if test="${classToUpdate.type == 'SIGNATURE'}"> checked </c:if> />
			SIGNATURE <input type="radio" name="type" value="BODY"
				<c:if test="${classToUpdate.type == 'BODY'}"> checked</c:if> /> BODY<br>
				
				
				${classToUpdate.startTime} <br> ${classToUpdate.intervals }<br>
		${classToUpdate.lastUpdate }
				
				
			<br> <input type="submit" value="Submit">


		</form>



<fmt:parseDate value="${classToUpdate.date}" pattern="yyyy-MM-dd"
			var="parsedDate" type="date" />
		<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
			pattern="MMMM d, yyyy" />${newParsedDate}


	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
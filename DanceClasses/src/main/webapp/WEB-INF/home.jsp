<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gabby's B21 Dance Classes</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<h1>Get it girl!</h1>
		<div class="container">
			<form action="showClass.do" method="GET">
				<div class="row">
					<label class="form-label col-auto" for="classId">Class ID:</label>
					<input class="form-control col" type="number" name="classId" /> <input
						class="btn btn-dark col-auto" type="submit" value="Show Class" />
				</div>
			</form>
		</div>
		<h1></h1>
		<h2>Dance Class Log</h2>
		<table class="table table-bordered table-striped table-hover">
			<thead class="table-dark">
				<tr>
					<th scope="col">Class #</th>
					<th scope="col">Date</th>
					<th scope="col">Start Time</th>
					<th scope="col">Instructor</th>
					<th scope="col">Details</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="cl" items="${classList}">
					<tr>
						<td>${cl.id}</td>
						<td>${cl.weekday} <fmt:parseDate value="${cl.date}"
								pattern="yyyy-MM-dd" var="parsedDate" type="date" /> <fmt:formatDate
								value="${parsedDate}" var="newParsedDate" type="date"
								pattern="MMMM d, yyyy"/>${newParsedDate}
						<td>${cl.startTime}</td> 
						<td>${cl.instructor}</td>
						<td><a href="showClass.do?classId=${cl.id}">View Details</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
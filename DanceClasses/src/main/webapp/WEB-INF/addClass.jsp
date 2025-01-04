<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add A Class</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
		<a href="home.do" class="btn btn-outline-dark btn-small" role="button">Home</a>
		<h1>Way to go! Let's add a new class!</h1>
		<br>
		<form:form action="addClass.do" method="POST"
			modelAttribute="newClass" />
		 <input type="hidden" name="id" value="${newClass.id }" /> 
		 <label for="date"><strong>Date</strong></label>
		<form:input path="date" type="date" />
		<br> <label for="instructor"><strong>Instructor</strong></label>
		<form:select path="instructor">
			<form:option value="Allie" label="Allie" />
			<form:option value="Emily" label="Emily" />
			<form:option value="John" label="John" />
			<form:option value="Julia" label="Julia" />
			<form:option value="Kenny" label="Kenny" />
			<form:option value="Mark" label="Mark" />
			<form:option value="Monica" label="Monica" />
			<form:option value="Polly" label="Polly" />
			<form:option value="Quiana" label="Quiana" />
			<form:option value="Sally" label="Sally" />
		</form:select>
		<br> <label for="type"><strong>Class Type </strong></label>
		<input type="radio" name ="type" value="SIGNATURE"/>SIGNATURE 
		<input type="radio" name ="type" value="BODY"/>BODY 

		<br> <label for="startTime"><strong>Start Time:
		</strong></label>
		<form:input path="startTime" type="time" id="startTime" step="900"
			value="${newClass.startTime}" />
		<br> <label for="interval1"><strong>Interval 1:
		</strong></label>
		<form:select path="interval1">
			<form:option value="arms" label="arms" />
			<form:option value="chest" label="chest" />
			<form:option value="back" label="back" />
			<form:option value="core" label="core" />
			<form:option value="glutes" label="glutes" />
			<form:option value="legs" label="legs" />
			<form:option value="all" label="all" />
			<form:option value="other" label="other" />
		</form:select>
		<label for="interval2"><strong>Interval 2: </strong></label>
		<form:select path="interval2">
			<form:option value="arms" label="arms" />
			<form:option value="chest" label="chest" />
			<form:option value="back" label="back" />
			<form:option value="core" label="core" />
			<form:option value="glutes" label="glutes" />
			<form:option value="legs" label="legs" />
			<form:option value="all" label="all" />
			<form:option value="other" label="other" />
		</form:select>

		
	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
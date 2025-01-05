<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update A Class</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-home-tab" href="home.do" type="button" role="tab"
				aria-controls="pills-home" aria-selected="false">Home</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link disabled"
				id="pills-update-tab" href="updateClass.do?classId=${updatedClass.id}"
				type="button" role="tab" aria-controls="pills-update"
				aria-selected="false" aria-disabled="true">Update This Class</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-delete-tab" href="confirmDeleteClass.do?classId=${updatedClass.id}"
				type="button" role="tab" aria-controls="pills-delete"
				aria-selected="false">Delete This Class</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-create-tab" href="addClass.do" type="button" role="tab"
				aria-controls="pills-create" aria-selected="false">Add A New
					Class</a></li>
		</ul>
		<h1>Let's update class ${updatedClass.id}!</h1>
		<br>
		<form:form action="/updateClass.do?classId=${updatedClass.id}"
			method="POST" modelAttribute="updatedClass">
			<input type="hidden" name="id" value="${updatedClass.id}" />
			<label for="date"><strong>Date</strong></label>
			<form:input path="date" type="date" name="date"
				value="${formattedDate}" />
			<br>
			<label for="instructor"><strong>Instructor</strong></label>
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
			<br>
			<label for="type"><strong>Class Type </strong></label>
			<input type="radio" name="type" value="SIGNATURE"
				<c:if test="${updatedClass.type == 'SIGNATURE'}">checked</c:if> /> SIGNATURE
<input type="radio" name="type" value="BODY"
				<c:if test="${updatedClass.type == 'BODY'}">checked</c:if> /> BODY<br>
			<label for="startTime"><strong>Start Time: </strong></label>
			<form:input path="startTime" type="time" id="startTime" step="900"
				value="${updatedClass.startTime}" />
			<br>
			<label for="interval1"><strong>Interval 1: </strong></label>
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
			<br>
			<br>
			Last updated
			<fmt:parseDate value="${updatedClass.lastUpdate}"
				pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" />
			<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
				pattern="MMMM d, yyyy" />${newParsedDate}
			@
			<fmt:formatDate value="${parsedDate}" var="formattedTime" type="time"
				pattern="h:mm a" />${formattedTime}<br>
			<br>
			<div class="row">
				<div class="col-auto">
					<button type="submit" class="btn btn-outline-dark btn-lg">
						Update Class ${updatedClass.id}</button>
				</div>
			</div>
		</form:form>
	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
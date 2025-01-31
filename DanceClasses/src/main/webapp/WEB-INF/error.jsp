<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-home-tab" href="home.do" type="button" role="tab"
				aria-controls="pills-home" aria-selected="false">Home</a></li>
			<li class="nav-item" role="presentation"><a
				class="nav-link disabled" id="pills-update-tab"
				href="updateClass.do?classId=${danceClass.id}" type="button"
				role="tab" aria-controls="pills-update" aria-selected="false"
				aria-disabled="true">Update This Class</a></li>
			<li class="nav-item" role="presentation"><a
				class="nav-link disabled" id="pills-delete-tab"
				href="confirmDeleteClass.do?classId=${danceClass.id}" type="button"
				role="tab" aria-controls="pills-delete" aria-selected="false"
				aria-disabled="true">Delete This Class</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-create-tab" href="addClass.do" type="button" role="tab"
				aria-controls="pills-create" aria-selected="false">Add A New
					Class</a></li>
		</ul>
		<div class="container text-center">
			<h1 class="display-1">Uh Oh! An error occurred</h1>
			<h1 class="display-3">${errorMessage}</h1>
		</div>
	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
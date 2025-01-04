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
		<h2>Uh Oh! An error occurred</h2>
		<h3>${errorMessage}</h3>
		<a href="home.do" class="btn btn-outline-dark btn-small">Return Home</a>

	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
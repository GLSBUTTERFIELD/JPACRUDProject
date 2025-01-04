<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class Deleted</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<h3>${message}</h3>
	<a href="home.do" class="btn btn-outline-dark btn-small">Home</a>
		
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>

</body>
</html>
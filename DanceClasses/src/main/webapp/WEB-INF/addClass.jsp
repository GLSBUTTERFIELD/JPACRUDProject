<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add A Class</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
		<h1>Way to go! Let's add a new class!</h1>
		<button type="button" class="btn btn-outline-dark btn-small">
			<a href="home.do">Home</a>
		</button>
		<br>
		<form action="addClass.do" method="POST">
		
			<label for="date"><strong>Date</strong></label> <input type="date"
				name="date" value="${newClass.date}"/>
				
			<fmt:parseDate value="${newClass.date}" pattern="yyyy-MM-dd"
			var="parsedDate"/>
		<fmt:formatDate value="${parsedDate}" var="newParsedDate" pattern="MMMM d, yyyy" />
			<label for="startTime"><strong>Start Time: </strong></label> <input
				type="time" id="startTime" name="startTime" step="900" value="${newClass.startTime}">
				
		<fmt:parseDate value="${newClass.startTime}" pattern="HH:mm" var="parsedTime" />
		<fmt:formatDate type="time" value="${parsedTime}" pattern="h:mm a"
			var="formattedTime" />${formattedTime}<br>  
			
			
			
			 <br> <label for="instructor"><strong>Instructor</strong></label>
			<select name="instructor" id="instructor"
				value="${newClass.instructor}">
				<option value="Allie"
					${newClass.instructor == 'Allie' ? 'selected' : ''}>Allie</option>
				<option value="Emily"
					${newClass.instructor == 'Emily' ? 'selected' : ''}>Emily</option>
				<option value="John"
					${newClass.instructor == 'John' ? 'selected' : ''}>John</option>
				<option value="Julia"
					${newClass.instructor == 'Julia' ? 'selected' : ''}>Julia</option>
				<option value="Kenny"
					${newClass.instructor == 'Kenny' ? 'selected' : ''}>Kenny</option>
				<option value="Mark"
					${newClass.instructor == 'Mark' ? 'selected' : ''}>Mark</option>
				<option value="Monica"
					${newClass.instructor == 'Monica' ? 'selected' : ''}>Monica</option>
				<option value="Polly"
					${newClass.instructor == 'Polly' ? 'selected' : ''}>Polly</option>
				<option value="Quiana"
					${newClass.instructor == 'Quiana' ? 'selected' : ''}>Quiana</option>
				<option value="Sally"
					${newClass.instructor == 'Sally' ? 'selected' : ''}>Sally</option>
			</select> <br> <label for="type"><strong>Class
					Type</strong></label> <select name="type" id="type">
				<option value="SIGNATURE"
					${newClass.type == 'SIGNATURE' ? 'selected' : ''}>SIGNATURE</option>
				<option value="BODY"
					${newClass.type == 'BODY' ? 'selected' : ''}>BODY</option>
			</select> <br> <br>  <label for="intervals"><strong>Interval
					1: </strong></label><select>
				<option value="arms">arms</option>
				<option value="chest">chest</option>
				<option value="back">back</option>
				<option value="core">core</option>
				<option value="glutes">glutes</option>
				<option value="legs">legs</option>
				<option value="all">all</option>
				<option value="other">other</option>
			</select> <label for="intervals"><strong>Interval 2: </strong></label><select>
				<option value="arms">arms</option>
				<option value="chest">chest</option>
				<option value="back">back</option>
				<option value="core">core</option>
				<option value="glutes">glutes</option>
				<option value="legs">legs</option>
				<option value="all">all</option>
				<option value="other">other</option></select> 
				
				
				<input type="hidden" id="timestamp" name="lastUpdate"
				value="= new SimpleDateFormat('yyyy-MM-dd HH:mm:ss').format(new Date())">
				




			<br> <br>
			<button type="submit" class="btn btn-outline-dark btn-small">
				<a href="addClass.do">Add Class</a>
			</button>

		</form>


	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
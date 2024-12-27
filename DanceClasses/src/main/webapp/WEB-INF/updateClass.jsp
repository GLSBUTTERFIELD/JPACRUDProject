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
		<button type="button" class="btn btn-outline-dark btn-small">
			<a href="home.do">Home</a>
		</button>
		<br>
		<form action="result.jsp" method="POST">
			<label><strong>Class # ${classToUpdate.id}</strong></label> <br>
			<label for="date"><strong>Date</strong></label> <input type="date"
				name="date" value="${classToUpdate.date }" /><br> <label
				for="instructor"><strong>Instructor</strong></label> <select
				name="instructor">
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
				type="radio" name="type" value="SIGNATURE"
				<c:if test="${classToUpdate.type == 'SIGNATURE'}"> checked </c:if> />
			SIGNATURE <input type="radio" name="type" value="BODY"
				<c:if test="${classToUpdate.type == 'BODY'}"> checked</c:if> />
			BODY<br> <label for="startTime"><strong>Start
					Time: </strong></label> <input type="time" id="startTime" step="900"
				value="${classToUpdate.startTime}" /> <br> <label
				for="intervals"><strong>Intervals (select 2): </strong></label>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">legs</label>
			</div>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">core</label>
			</div>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">planks</label>
			</div>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">arms</label>
			</div>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">crunches</label>
			</div>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">standing
					sit ups</label>
			</div>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">wall
					sits</label>
			</div>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">squats</label>
			</div>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">glutes</label>
			</div>
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label">all</label>
			</div>

			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" id="flexCheckOther">
				<label class="form-check-label" for="flexCheckOther">other</label>
			</div>
			<div class="form-check-inline">
				<input type="text" class="form-control" id="otherText"
					placeholder="Please specify">
			</div>
			
			<div class="form-check-inline">
				<input class="form-check-input" type="checkbox" id="flexCheckOther">
				<label class="form-check-label" for="flexCheckOther">other</label>
			</div>
			<div class="form-check-inline">
				<input type="text" class="form-control" id="otherText"
					placeholder="Please specify">
			</div>

			<br>



			<c:choose>
				<c:when test="${classToUpdate.instructor == 'Allie'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/7c7760e8-e210-4b9c-b5f8-c8cd90dc88c0/4.png?format=750w"
						alt="Allie" />
				</c:when>
				<c:when test="${classToUpdate.instructor == 'Emily'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=750w"
						alt="Emily" />
				</c:when>
				<c:when test="${classToUpdate.instructor == 'John'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/a7f69eb4-7495-4e2c-9552-e7202c53efab/johndanceteacher.png?format=2500w"
						alt="John" />
				</c:when>
				<c:when test="${classToUpdate.instructor == 'Julia'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/72a859ff-6e8e-474f-9ff5-5b7810e9c756/juliadanceteacher.png?format=750w"
						alt="Julia" />
				</c:when>
				<c:when test="${classToUpdate.instructor == 'Kenny'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/28e8df9d-bd52-477e-af1d-0929379a44a9/kennycardiodance.png?format=1000w"
						alt="Kenny" />
				</c:when>
				<c:when test="${classToUpdate.instructor == 'Mark'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/01351e65-0c08-4540-a14d-3a41982a7395/Untitled+design-11.png?format=2500w"
						alt="Mark" />
				</c:when>
				<c:when test="${classToUpdate.instructor == 'Monica'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/c2014138-92f5-4cf0-bb1f-f7fb5b6f5a5c/Monicadanceprofessional.png?format=750w"
						alt="Monica" />
				</c:when>
				<c:when test="${classToUpdate.instructor == 'Polly'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/82419392-a104-4754-bad5-d11a34d93670/Pollycardiodance.png?format=750w"
						alt="Polly" />
				</c:when>
				<c:when test="${classToUpdate.instructor == 'Quiana'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/88e82cb3-e1b9-4f9e-ad2b-55858f2e2852/Quianadanceteacher.png?format=2500w"
						alt="Quiana" />
				</c:when>
				<c:when test="${classToUpdate.instructor == 'Sally'}">
					<img
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/5ddfb343-0443-4e00-aff6-a471e87ce48d/sallystudioowner.png?format=1000w"
						alt="Sally" />
				</c:when>
			</c:choose>
			<br> <br> <br>Last updated
			<fmt:parseDate value="${classToUpdate.lastUpdate}"
				pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" />
			<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date"
				pattern="MMMM d, yyyy" />${newParsedDate}
			@
			<fmt:formatDate value="${parsedDate}" var="formattedTime" type="time"
				pattern="h:mm a" />${formattedTime}
			<br> <input type="submit" value="Submit">

		</form>


	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
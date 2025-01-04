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
	<div class="add-class">
		<div class="container-fluid">
			<a href="home.do" class="btn btn-outline-dark btn-small"
				role="button">Home</a>
			<h1>Way to go! Let's add a new class!</h1>
			<br>
			<form:form action="addClass.do" method="POST"
				modelAttribute="newClass">
				<input type="hidden" name="id" value="${newClass.id }"
					class="form-control" />
				<input type="hidden" name="lastUpdate"
					value="${newClass.lastUpdate }" class="form-control" />
				<label for="date"><strong>Date</strong></label>
				<form:input path="date" type="date"
					class="form-control form-control-sm" />
				<label for="startTime" class="form-label"><strong>Start
						Time: </strong></label>
				<form:input path="startTime" type="time" id="startTime" step="900"
					class="form-control form-control-sm" value="${newClass.startTime}" />
				<br>
				<label for="instructor" class="form-label"><strong>Instructor</strong></label>
				<div class="row">
					<div class="col-md-12">
						<!-- Use Flexbox for horizontal alignment -->
						<div class="d-flex flex-wrap justify-content-start">
							<div class="instructor-item">
								<input type="radio" id="Allie" name="instructor"
									class="form-check-input"><label> <img
									alt="Allie image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/7c7760e8-e210-4b9c-b5f8-c8cd90dc88c0/4.png?format=100w">
									Allie
								</label>
							</div>

							<div class="instructor-item">
								<input type="radio" id="Emily" name="instructor"
									class="form-check-input"><label> <img
									alt="Emily image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=100w">
									Emily
								</label>
							</div>

							<div class="instructor-item">
								<input type="radio" id="John" name="instructor"
									class="form-check-input"><label> <img
									alt="John image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/a7f69eb4-7495-4e2c-9552-e7202c53efab/johndanceteacher.png?format=100w">
									John
								</label>
							</div>

							<div class="instructor-item">
								<input type="radio" id="Julia" name="instructor"
									class="form-check-input"><label> <img
									alt="Julia image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/72a859ff-6e8e-474f-9ff5-5b7810e9c756/juliadanceteacher.png?format=100w">
									Julia
								</label>
							</div>

							<div class="instructor-item">
								<input type="radio" id="Kenny" name="instructor"
									class="form-check-input"><label> <img
									alt="Kenny image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/28e8df9d-bd52-477e-af1d-0929379a44a9/kennycardiodance.png?format=100w">
									Kenny
								</label>
							</div>

							<div class="instructor-item">
								<input type="radio" id="Mark" name="instructor"
									class="form-check-input"><label> <img
									alt="Mark image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/01351e65-0c08-4540-a14d-3a41982a7395/Untitled+design-11.png?format=100w">
									Mark
								</label>
							</div>

							<div class="instructor-item">
								<input type="radio" id="Monica" name="instructor"
									class="form-check-input"><label> <img
									alt="Monica image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/c2014138-92f5-4cf0-bb1f-f7fb5b6f5a5c/Monicadanceprofessional.png?format=100">
									Monica
								</label>
							</div>

							<div class="instructor-item">
								<input type="radio" id="Polly" name="instructor"
									class="form-check-input"><label> <img
									alt="Polly image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/82419392-a104-4754-bad5-d11a34d93670/Pollycardiodance.png?format=100w">
									Polly
								</label>
							</div>

							<div class="instructor-item">
								<input type="radio" id="Quiana" name="instructor"
									class="form-check-input"><label> <img
									alt="Quiana image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/88e82cb3-e1b9-4f9e-ad2b-55858f2e2852/Quianadanceteacher.png?format=100w">
									Quiana
								</label>
							</div>

							<div class="instructor-item">
								<input type="radio" id="Sally" name="instructor"
									class="form-check-input"><label> <img
									alt="Sally image"
									src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/5ddfb343-0443-4e00-aff6-a471e87ce48d/sallystudioowner.png?format=100w">
									Sally
								</label>
							</div>
						</div>
					</div>
					<br>
					<div class="row align-items-center">
						<div class="col-auto">
							<label for="type" class="form-label"><strong>Class
									Type</strong></label>
						</div>
						<div class="col-auto form-check form-check-inline">
							<input type="radio" name="type" value="SIGNATURE"
								class="form-check-input" id="signature" checked /> <label
								class="form-check-label" for="signature">SIGNATURE</label>
						</div>
						<div class="col-auto form-check form-check-inline">
							<input type="radio" name="type" value="BODY"
								class="form-check-input" id="body" /> <label
								class="form-check-label" for="body">BODY</label>
						</div></div>
						<br> <br>
						<div class="mb-3 row">
							<div class="col-md-6">
								<label for="interval1" class="form-label"><strong>Interval
										1: </strong></label>
								<form:select path="interval1" class="form-select form-select-sm">
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
							<div class="col-md-6">
								<label for="interval2" class="form-label"><strong>Interval
										2: </strong></label>
								<form:select path="interval2" class="form-select form-select-sm">
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
						</div>
						<br>
						<div class="mb-3">
							<button type="submit" class="btn btn-outline-dark btn-small">
								Add New Class</button>
						</div>
			</form:form>


		</div>
		<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
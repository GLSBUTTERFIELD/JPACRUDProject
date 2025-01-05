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
			<h1 class="display-2">Way to go! Let's add a new class!</h1>
			<br>
			<form:form action="addClass.do" method="POST"
				modelAttribute="newClass">
				<input type="hidden" name="id" value="${newClass.id }"
					class="form-control" />
				<input type="hidden" name="lastUpdate"
					value="${newClass.lastUpdate }" class="form-control" />

				<div class="container text-center">
					<table class="table table-borderless table-hover p-3 mb-2 bg-transparent text-body">
							<tr>
								<td scope="col"><label for="date" class="form-label mx-2"><strong>Date</strong></label>
									<form:input path="date" type="date" name="date"
										value="${formattedDate}" /></td>
								<td scope="col"><label for="startTime"
									class="form-label mx-2"><strong>Start Time</strong></label> <form:input
										path="startTime" type="time" id="startTime" step="900"
										value="${newClass.startTime }" /></td>
								<td scope="col"><label for="type" class="form-label mx-2"><strong>Class
											Type </strong></label> <form:select path="type">
										<form:option value="SIGNATURE" label="SIGNATURE" />
										<form:option value="BODY" label="BODY" />
									</form:select></td>
								<td scope="col"><label for="interval1"
									class="form-label mx-2"><strong>Interval 1 </strong></label> <form:select
										path="interval1">
										<form:option value="arms" label="arms" />
										<form:option value="chest" label="chest" />
										<form:option value="back" label="back" />
										<form:option value="core" label="core" />
										<form:option value="glutes" label="glutes" />
										<form:option value="legs" label="legs" />
										<form:option value="all" label="all" />
										<form:option value="other" label="other" />
									</form:select> <td scope="col">
							<label for="interval2" class="form-label mx-2"><strong>Interval
											2 </strong></label> <form:select path="interval2">
										<form:option value="arms" label="arms" />
										<form:option value="chest" label="chest" />
										<form:option value="back" label="back" />
										<form:option value="core" label="core" />
										<form:option value="glutes" label="glutes" />
										<form:option value="legs" label="legs" />
										<form:option value="all" label="all" />
										<form:option value="other" label="other" />
									</form:select></td></tr>
					</table>
		</div>
		<br><label for="instructor" class="form-label">
			<strong>Instructor</strong>
		</label>
		<div class="col-md-12 my-4">
			<div class="d-flex flex-wrap justify-content-start">
				<div class="instructor-item">
					<input type="radio" id="Allie" name="instructor" value="Allie"
						class="form-check-input"><label> <img
						alt="Allie image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/7c7760e8-e210-4b9c-b5f8-c8cd90dc88c0/4.png?format=100w">
						Allie
					</label>
				</div>

				<div class="instructor-item">
					<input type="radio" id="Emily" name="instructor" value="Emily"
						class="form-check-input"><label> <img
						alt="Emily image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=100w">
						Emily
					</label>
				</div>

				<div class="instructor-item">
					<input type="radio" id="John" name="instructor" value="John"
						class="form-check-input"><label> <img
						alt="John image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/a7f69eb4-7495-4e2c-9552-e7202c53efab/johndanceteacher.png?format=100w">
						John
					</label>
				</div>

				<div class="instructor-item">
					<input type="radio" id="Julia" name="instructor" value="Julia"
						class="form-check-input"><label> <img
						alt="Julia image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/72a859ff-6e8e-474f-9ff5-5b7810e9c756/juliadanceteacher.png?format=100w">
						Julia
					</label>
				</div>

				<div class="instructor-item">
					<input type="radio" id="Kenny" name="instructor" value="Kenny"
						class="form-check-input"><label> <img
						alt="Kenny image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/28e8df9d-bd52-477e-af1d-0929379a44a9/kennycardiodance.png?format=100w">
						Kenny
					</label>
				</div>

				<div class="instructor-item">
					<input type="radio" id="Mark" name="instructor" value="Mark"
						class="form-check-input"><label> <img
						alt="Mark image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/01351e65-0c08-4540-a14d-3a41982a7395/Untitled+design-11.png?format=100w">
						Mark
					</label>
				</div>

				<div class="instructor-item">
					<input type="radio" id="Monica" name="instructor" value="Monica"
						class="form-check-input"><label> <img
						alt="Monica image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/c2014138-92f5-4cf0-bb1f-f7fb5b6f5a5c/Monicadanceprofessional.png?format=100">
						Monica
					</label>
				</div>

				<div class="instructor-item">
					<input type="radio" id="Polly" name="instructor" value="Polly"
						class="form-check-input"><label> <img
						alt="Polly image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/82419392-a104-4754-bad5-d11a34d93670/Pollycardiodance.png?format=100w">
						Polly
					</label>
				</div>

				<div class="instructor-item">
					<input type="radio" id="Quiana" name="instructor" value="Quiana"
						class="form-check-input"><label> <img
						alt="Quiana image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/88e82cb3-e1b9-4f9e-ad2b-55858f2e2852/Quianadanceteacher.png?format=100w">
						Quiana
					</label>
				</div>

				<div class="instructor-item">
					<input type="radio" id="Sally" name="instructor" value="Sally"
						class="form-check-input"><label> <img
						alt="Sally image"
						src="https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/5ddfb343-0443-4e00-aff6-a471e87ce48d/sallystudioowner.png?format=100w">
						Sally
					</label>
				</div>
			</div>
		</div>
		<br>
		<button type="submit" class="btn btn-outline-dark btn-lg">
			Add New Class</button>
		</form:form>
	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
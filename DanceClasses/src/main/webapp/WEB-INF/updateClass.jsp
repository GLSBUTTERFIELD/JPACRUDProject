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
		<ul class="nav nav-pills mb-" id="pills-tab" role="tablist">
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-home-tab" href="home.do" type="button" role="tab"
				aria-controls="pills-home" aria-selected="false">Home</a></li>
			<li class="nav-item" role="presentation"><a
				class="nav-link disabled" id="pills-update-tab"
				href="updateClass.do?classId=${updatedClass.id}" type="button"
				role="tab" aria-controls="pills-update" aria-selected="false"
				aria-disabled="true">Update This Class</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-delete-tab"
				href="confirmDeleteClass.do?classId=${updatedClass.id}"
				type="button" role="tab" aria-controls="pills-delete"
				aria-selected="false">Delete This Class</a></li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="pills-create-tab" href="addClass.do" type="button" role="tab"
				aria-controls="pills-create" aria-selected="false">Add A New
					Class</a></li>
		</ul><br>
		<div class="container text-center">
			<h1 class="display-3">Let's update class ${updatedClass.id}!</h1>
			<br>
			<form:form action="updateClass.do?classId=${updatedClass.id}"
				method="POST" modelAttribute="updatedClass">
				<input type="hidden" name="id" value="${updatedClass.id}" />
				<input type="hidden" name="lastUpdate"
					value="${updatedClass.lastUpdate}" />


				<div
					class="row gy-2 gx-4 align-items-center justify-content-between">
					<table class="table text-align-center">
						<thead class="table-dark">
							<tr>
								<th scope="col">Class Type</th>
								<th scope="col">Date</th>
								<th scope="col">Start Time</th>
								<th scope="col">Instructor</th>
								<th scope="col">Interval 1</th>
								<th scope="col">Interval 2</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="form-check-inline">
										<input type="radio" name="type" value="SIGNATURE"
											class="form-check-input"
											<c:if test="${updatedClass.type == 'SIGNATURE'}">checked</c:if>
											required> SIGNATURE
									</div>
									<div class="form-check-inline">
										<input type="radio" name="type" value="BODY"
											class="form-check-input"
											<c:if test="${updatedClass.type == 'BODY'}">checked</c:if>
											required> BODY
									</div>
								</td>
								<td><div class="form-group">
										<form:input path="date" type="date" class="form-control"
											id="date" name="date" value="${formattedDate}" />
									</div></td>
								<td>
									<div class="form-group">
										<form:input path="startTime" type="time" class="form-control"
											id="startTime" step="900" name="startTime" value="${updatedClass.startTime}"/>
									</div>
								</td>
								<td><div class="form-group">
										<form:select path="instructor" class="form-select"
											id="instructor" name="instructor">
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
									</div></td>
								<td>
									<div class="form-group">
										<form:select path="interval1" class="form-select"
											id="interval1" name="interval1">
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
								</td>
								<td>
									<div class="form-group">
										<form:select path="interval2" class="form-select"
											id="interval2" name="interval2">
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
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<br>
				<button type="submit" class="btn btn-outline-dark btn-lg">
					Update Class ${updatedClass.id}</button>
			</form:form>
		</div>
	</div>
	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
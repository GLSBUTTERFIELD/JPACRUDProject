<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>B21 Dance Classes</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<h1>Get it girl!</h1>
		<div class="container">
			<form action="showClass.do" method="GET">
				<div class="row">
					<label class="form-label col-auto" for="filmId">Class ID:</label> <input
						class="form-control col" type="number" name="classId" /> <input
						class="btn btn-dark col-auto" type="submit" value="Show Class" />
				</div>
			</form>
		</div>
	<h1></h1>
	<h2>Dance Class Log</h2>

	${classList}
	</div>


	<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
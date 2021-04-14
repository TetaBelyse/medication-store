<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
<!--
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script> -->
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>
* {
	border-radius: 0 !important;
}
</style>

</head>
<body>

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="/">Home</a></li>
			<li class="breadcrumb-item"><a href="/drugs">Drug&Medication</a></li>
		</ol>
	</nav>
	<div class="row">
		<div class="col"></div>
		<div class="px-5 col-12 col-md-4 col-sm-6">
			<h4>Drug&Medication Information Store</h4>
			<h3>UPDATE DRUG</h3>
			<form action="/update" method="post">
				<div class="form-group">
					<label>Drug id</label> <input class="form-control form-control-sm"
						type="text" name="id" value="${uDrug.id }" readonly="readonly">
				</div>
				<div class="form-group">
					<label>Drug name</label> <input
						class="form-control form-control-sm" type="text" name="name"
						value="${uDrug.name }">
				</div>
				<div class="form-group">
					<label>Drug Description</label>
					<textarea class="form-control form-control-sm" name="description">${uDrug.description }</textarea>
				</div>
				<div class="form-group">
					<label>Drug manufacturer</label> <input
						class="form-control form-control-sm" type="text"
						name="manufacturer" value="${uDrug.manufacturer }">
				</div>
				<input class="btn btn-primary" type="submit" value="update Drug">
			</form>
		</div>
		<div class="col"></div>
	</div>

</body>
</html>
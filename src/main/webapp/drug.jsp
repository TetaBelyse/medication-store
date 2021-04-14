<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	crossorigin="anonymous"></script>
 -->

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
		<div class="px-5 col">
			<h4>Drug&Medication Information Store</h4>

			<form action="/drugs" method="post">
				<div class="form-group">
					<label>Drug name</label> <input
						class="form-control form-control-sm" type="text" name="name">
				</div>
				<div class="form-group">
					<label>Drug Description</label>
					<textarea class="form-control form-control-sm" name="description"></textarea>
				</div>
				<div class="form-group">
					<label>Drug manufacturer</label> <input
						class="form-control form-control-sm" type="text"
						name="manufacturer">
				</div>
				<input class="btn btn-primary" type="submit" value="Add Drug">
			</form>
		</div>
		<div class="mx-2 col-12 col-md-8 col-sm-12">
			<table class="table table-light table-striped">
				<thead>
					<tr>
						<th>Drug name</th>
						<th>Drug Description</th>
						<th>Drug manufacturer</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${drugs}" var="drug">
						<tr>
							<td>${drug.name}</td>
							<td>${drug.description}</td>
							<td>${drug.manufacturer}</td>
							<td><a class="btn btn-warning btn-sm"
								href="/update?id=${drug.id}">update</a> <a
								class="btn btn-danger btn-sm" href="/remove?id=${drug.id}">remove</a>
								<button type="button" class="btn btn-primary btn-sm"
									data-bs-toggle="modal" data-bs-target="#exampleModal${drug.id}">
									view</button>

								<div class="modal fade" id="exampleModal${drug.id}"
									tabindex="-1" aria-labelledby="exampleModal${drug.id}Label"
									aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModal${drug.id}Label">${drug.name}</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">${drug.description}</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
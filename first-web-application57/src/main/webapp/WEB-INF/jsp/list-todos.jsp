<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>

<head>

<title>Todos for ${name}</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<!-- <nav role="navigation" class="navbar navbar-default">
		<div class="">
			<a href="#" class="navbar-brand">First-Web-Application</a>
		</div>
		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/login">Home</a></li>
				<li><a href="/list-todos">Todos</a></li>

			</ul>
		</div>
	</nav> -->

	<h1>Here are your list of todos by ${name}</h1>


	<div class="container">
		<table
			class="table table-hover table-bordered table-striped table-dark">
			<caption>Your Todos are</caption>
			<thead class="thead-dark">
				<tr>
					<th scope="col">Description</th>
					<th scope="col">Target Date</th>
					<th scope="col">Is it done?</th>
					<!-- <th scope="col">Edit</th> -->
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td><fmt:formatDate value="${todo.targetDate}"
								pattern="dd/MM/yyyy" /></td>
						<td>${todo.done}</td>
						<td><a type="button" class="btn btn-success"
							href="/update-todo?id=${todo.id}">UPDATE</a></td>
						<td><a type="button" class="btn btn-warning"
							href="/delete-todo?id=${todo.id}">DELETE</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- <br> <a href="/add-todo">Add a Todo</a> -->
		<div>
			<a class="button" href="/add-todo">Add a Todo</a>
		</div>

		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	</div>
</body>
</html>
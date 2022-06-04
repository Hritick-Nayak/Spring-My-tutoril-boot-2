<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

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

	<%@ include file="common/footer.jspf"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Document</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<form:form method="post" modelAttribute="todo">
			<fieldset class="form-group">
			
				<form:label path="id">ID: </form:label>
				<form:input path="id" type="text" class="form-control"
					required="required" title="Enter at least 10 Characters..."/>
				<!-- <form:errors path="id" cssClass="text-warning" /> -->
				
				<form:label path="user">User: </form:label>
				<form:input path="user" type="text" class="form-control"
					required="required" title="Enter at least 10 Characters..."/>
				<!-- <form:errors path="user" cssClass="text-warning" /> -->
				
				<form:label path="desc">Description: </form:label>
				<form:input path="desc" type="text" class="form-control"
					required="required" title="Enter at least 10 Characters..."/>
				<!-- <form:errors path="desc" cssClass="text-warning" /> -->
				
				<!-- <form:label path="targetDate">Target Date: </form:label>
				<form:input path="targetDate" type="text" class="form-control"
					required="required" title="Enter true or false..."/>
				<form:errors path="targetDate" cssClass="text-warning" /> -->
				
				<!-- <form:label path="done">DIs Done: </form:label>
				<form:input path="done" type="text" class="form-control"
					required="required" title="Enter at least 10 Characters..."/>
				<form:errors path="done" cssClass="text-warning" /> -->
			</fieldset>
			<button type="submit" class="btn btn-success">Update</button>
		</form:form>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
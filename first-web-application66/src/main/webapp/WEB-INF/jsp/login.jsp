<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
	<!-- <h1>My First jsp!!!</h1>
	welcome ${name} of roll no ${rollno} -->
	<div class="container">
	<form method="post"><!-- Default method is get so override it with post -->
		NAME: <input type="text" id="name" name="name"> <br>
		PASSWORD: <input type="password" name="password" id="password">
		<br> <input type="submit" id="submit" name="submit"
			value="submit">
			<h4 style="color: red;">${errorMassage}</h4>
	</form>
	</div>
<%@ include file="common/footer.jspf"%>
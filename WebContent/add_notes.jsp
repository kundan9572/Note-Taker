<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
	<%@include file="all_js_css.jsp" %>

</head>
<body>
<div class="container-fluid">
<%@include file="navbar.jsp" %>
</div>
<br>
<h1>Please fill your Note Detail</h1>
<br>
<!-- This is add Form -->
<div class="container-fluid">
<form action="SaveNoteServlet" method="post" >
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp" 
    placeholder="Enter here">
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
<textarea required
name="content" 
id="content" 
placeholder="Enter your content here"
class="form-control" style="height:300px;"></textarea>
  </div>
  </div>
  <div class="container text-center">
  
    <button type="submit" class="btn btn-primary">ADD</button>
  
  </div>
</form>

</body>
</html>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit page</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>
<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Edit Your Note</h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		Note note = (Note) s.get(Note.class, noteId);

		%>
		
		<form action="UpdateServlet" method="post" >
  		
  		<input value="<%= note.getId()%>" name="noteId" type="hidden"/>
  		
  		<div class="form-group">
    <label for="title">Note Title</label>
    <input required name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp" 
    placeholder="Enter here"
    value ="<%= note.getTitle() %>">
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
<textarea required
name="content" 
id="content" 
placeholder="Enter your content here"
class="form-control" style="height:300px;"><%= note.getContent() %>
</textarea>
  </div>
  </div>
  <div class="container text-center">
  
    <button type="submit" class="btn btn-success">Save Your note</button>
  
  </div>
</form>

</body>
</html>
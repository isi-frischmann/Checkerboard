<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=UTF-8">
	<title>Checkerboard</title>
	<link rel="stylesheet" type="text/css" href="checkerboardStyle.css">
</head>
<body>

	<% 
	/*  crate variable from the URL - GET method */
	String width = request.getParameter("width");
	String height = request.getParameter("height");
	if(width == null){
		width = "10";
	}
	if(height == null){
		height = "10";
	}
	%>

	<h1> Checkerboard <%= width + "w  x " + height + "h"%></h1>

	<% 
	/* change variables from String into int */
	int widthInt = Integer.parseInt(width);
	int heightInt = Integer.parseInt(height);
	%>
	
	<!-- for loop for the Checkerboard! Go through every index -->
	<% 
	/* For loop for each column */
	for(int i = 1; i < widthInt; i++) {
		/* nested for loop for each row (in one column) */
		for(int x = 1; x < heightInt; x++){
			/* create a red div if the sum of index-row and index-column is an even number */
			if((i + x) % 2 == 0){ %>
				<div class="redBox">&nbsp;</div>
			<% }
			/* else, the sum of index-row and index-column is an odd number, create a blue box */
			else { %>
				<div class="blueBox">&nbsp;</div>
			<%
			}
		}
		%> <br> <%
	} %> 
	<p>The time is: <%= new Date() %></p>
	
</body>
</html>
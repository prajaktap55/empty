<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Selected details</h1>
	<p>Operating system : ${param.os}</p>
	<p>Team : ${param.team}</p>
	<p>Envoirnment : ${param.env}</p>
	<p>Department : ${param.dept}</p>
	<p>Status : ${param.status}</p>
	<p>Client : ${param.client}</p>
		
		<%
		
		System.out.println("Operating system:"+request.getParameter("os"));
		System.out.println("client:"+request.getParameter("client"));
		System.out.println("Envoirnment:"+request.getParameter("env"));
		
		System.out.println("Department:"+request.getParameter("dept"));
		System.out.println("Status:"+request.getParameter("status"));
		
		
		%>
</body>
</html>
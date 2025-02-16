<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String alumnos[] = {"Antonio", "Sandra", "María", "Paco"};

	pageContext.setAttribute("losAlumnos", alumnos);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP Tags</title>
	</head>
	<body>
	
		<c:forEach var="tmp" items="${losAlumnos}">					
			${tmp }	 <br>
		</c:forEach>
	
	</body>
</html>
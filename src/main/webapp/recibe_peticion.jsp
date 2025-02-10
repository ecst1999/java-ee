<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Ciudad Favorita</title>
	</head>
	<body>
	
		<%
			//Leyendo datos del formulario
			String ciudad_favorita = request.getParameter("ciudad_favorita");
		
			//Crear la cookie
			Cookie laCookie = new Cookie("agencia_viajes.ciudad_favorita", ciudad_favorita);
			
			//Vida de la cookie
			laCookie.setMaxAge(365*24*60*60);
			
			//Enviar a Usuario
			response.addCookie(laCookie);
		%>
		
		Gracias por enviar tus preferencias <br>
		
		<a href="agencia_viajes.jsp">Ir a la agencia de viajes</a>
	
	</body>
</html>
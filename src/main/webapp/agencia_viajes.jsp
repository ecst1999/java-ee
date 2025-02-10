<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Agencia Viajes</title>
	</head>
	<body>
		<h1 style="text-align:center">Agencia de viajes</h1>
		
		<%
		
			//Valor por defecto
			String ciudad_favorita = "Quito";
		
			//Lee la cookie de la petición del navegador			
			Cookie[] lasCookies = request.getCookies();
			
			//Buscar las preferencias -- la ciudad favorita 
			
			if(lasCookies != null){
				for(Cookie ck: lasCookies){
					if("agencia_viajes.ciudad_favorita".equals(ck.getName())){
						ciudad_favorita = ck.getValue();
						
						break;
					}
				}
			}
		
		%>
		
		<h3>Vuelos a <%= ciudad_favorita %> </h3>
		
		<p>Esto es un texto de ejemplo</p>
		<p>Esto es un texto de ejemplo</p>
		<p>Esto es un texto de ejemplo</p>
		
		<h3>Hoteles a <%= ciudad_favorita %> </h3>
		
		<p>Esto es un texto de ejemplo</p>
		<p>Esto es un texto de ejemplo</p>
		<p>Esto es un texto de ejemplo</p>
		
		<h3>Descuentos en restaurantes de <%= ciudad_favorita %> </h3>
		
		<p>Esto es un texto de ejemplo</p>
		<p>Esto es un texto de ejemplo</p>
		<p>Esto es un texto de ejemplo</p>
	
	</body>
</html>
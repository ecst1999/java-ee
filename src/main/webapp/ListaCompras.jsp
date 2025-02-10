<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de compras</title>
	</head>
	<body>
	
		<form action="ListaCompras.jsp" method="post">
		
			<h3>Artículos a comprar:</h3>
			
			<br>
			
			<input type="checkbox" name="articulos" value="agua" id="agua">			
			<label for="agua">Agua</label>
			<br>
			
			<input type="checkbox" name="articulos" value="leche" id="leche">			
			<label for="leche">Leche</label>
			<br>
			
			<input type="checkbox" name="articulos" value="pan" id="pan">			
			<label for="pan">Pan</label>
			<br>
			
			<input type="checkbox" name="articulos" value="manzanas" id="manzanas">			
			<label for="manzanas">Manzanas</label>
			<br>
			
			<input type="checkbox" name="articulos" value="carne" id="carne">			
			<label for="carne">Carne</label>
			<br>
			
			<input type="checkbox" name="articulos" value="pescado" id="pescado">			
			<label for="pescado">Pescado</label>
			<br>
			
			<input type="submit" value="Enviar">
		
		</form>
		
		<h2>Carro de la compra</h2>
		
		<ul>
		
		
			<%
			
				List<String> listaElementos = (List<String>) session.getAttribute("misElementos");
					
				if(listaElementos == null){
					listaElementos = new ArrayList<String>();
					
					session.setAttribute("misElementos", listaElementos);
				}
			
				String[] elementos = request.getParameterValues("articulos"); 
						
				if(elementos!= null){
					for(String elemTemp: elementos){
						//out.println("<li>" + elemTemp + "</li>");
						
						listaElementos.add(elemTemp);
					}
				}
				
				for(String elem: listaElementos){
					out.println("<li>" + elem + "</li>");
				}
				
			%>
		
		</ul>
		
	</body>
</html>
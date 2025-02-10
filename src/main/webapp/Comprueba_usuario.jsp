<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
		//Obtención de valores formulario
		String usuario = request.getParameter("usuario");
		
		String clave = request.getParameter("clave");
					
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		//Conexión a BBDDD
		
		try{
			
			Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "Java1234*");
		
			PreparedStatement c_preparada = miConexion.prepareStatement("SELECT * FROM usuarios WHERE usuario=? AND clave =?", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			
			c_preparada.setString(1, usuario);
			
			c_preparada.setString(2, clave);
			
			ResultSet miResultado = c_preparada.executeQuery();
			
			if(miResultado.absolute(1)) out.println("Usuario autorizado");
			
			else out.println("No hay usuarios con esos datos");
		
		}catch(Exception e){
			out.println("Ha habido un error: " + e.getMessage());
		}
	%>

</body>
</html>
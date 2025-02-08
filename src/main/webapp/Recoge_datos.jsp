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
		String nombre = request.getParameter("nombre");
	
		String apellido = request.getParameter("apellido");
		
		String usuario = request.getParameter("usuario");
		
		String clave = request.getParameter("clave");
		
		String pais = request.getParameter("pais");
		
		String tecnologias = request.getParameter("tecnologias");
		
		
		Class.forName("com.mysql.jdbc.Driver");
		//Conexión a BBDDD
		
		try{
		Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "Java1234*");
	
		PreparedStatement miStatement = miConexion.prepareStatement("INSERT INTO usuarios (nombre, apellido, usuario, clave, pais, tecnologia) VALUES (?, ?, ?, ?, ?, ?);");			
		
		//Agregar valores a consulta preparada
		
		miStatement.setString(1, nombre);
		
		miStatement.setString(2, apellido);
		
		miStatement.setString(3, usuario);
		
		miStatement.setString(4, clave);
		
		miStatement.setString(5, pais);
		
		miStatement.setString(6, tecnologias);
		
		
		//String instruccionSql = "INSERT INTO  usuarios (nombre, apellido, usuario, clave, pais, tecnologia) VALUES ('" + nombre + "', '" + apellido + "', '" + usuario + "' , '" + clave + "', '" + pais + "', '" + tecnologias + "');";		
		
		
		miStatement.executeUpdate();
		
		out.println("Registrado con éxito");
		}catch(Exception e){
			out.println("Ha habido un error: " + e.getMessage());
		}
	%>
	
	</body>
</html>
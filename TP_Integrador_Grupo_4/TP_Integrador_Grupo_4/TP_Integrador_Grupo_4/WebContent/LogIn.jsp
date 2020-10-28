<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="get">
	<h1><small>Log In</small></h1>
	
	<table>
		
		<tr>
			<td> Nombre de usuario </td>
			<td> <input type=text name="txtLogInNombreUsuario"/> </td>
		</tr>
		
		<tr>
			<td> Contraseña </td>
			<td> <input type=password name="txtLogInContraseña"/> </td>
		</tr>
		
		<tr>
			<td> <input type="submit" value="Iniciar Session" name="btnLogIn"/> </td>
		</tr>
	
	
	</table>

</form>

</body>
</html>
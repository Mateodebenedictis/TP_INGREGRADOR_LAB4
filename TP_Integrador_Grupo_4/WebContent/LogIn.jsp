<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio</title>
<style>
		.fondo{
			background-image: url("http://cdn29.us1.fansshare.com/pictures/1920x1200/vector-abstract-wallpapers-vector-wallpaper-vectors-vector-385525390.jpg");
		}
		.dropbtn {
			background-color: #008CBA;
			border-radius: 4px ;
			color: Black;
		    padding: 16px;
		    font-size: 16px;
		    border: 2px solid #000000;
		    cursor: pointer;
		}
		.dropbtn:hover, .dropbtn:focus {
	    	background-color: #6BC7FF;
		}
		.dropdown {
		    position: relative;
		    display: inline-block;
		}
		.dropdown-content {
		    display: none;
		    position: absolute;
		    background-color: #f9f9f9;
		    min-width: 160px;
		    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		}
		.dropdown-content a {
		    color: black;
		    padding: 12px 16px;
		    text-decoration: none;
		    display: block;
		}
		.dropdown-content a:hover {
		background-color: #f1f1f1
		}
		.show {
		display:block;
		}
	</style>
</head>
<body>
	<h2 style="color:#0049A0;" align=center>
		<b>INGRESO A UTN E-BANK</b>
	</h2>
	
	<div>
	 	<table align="center" style="margin-top:15px">
		
		<tr>
			<td> Nombre de usuario </td>
			<td> <input type=text name="txtLogInNombreUsuario"/> </td>
		</tr>
		
		<tr>
			<td> Contraseña </td>
			<td> <input type=password name="txtLogInContraseña"/> </td>
		</tr>
		<tr>
			<td> <input type="submit" onclick="location.href='../Clientes/ClienteInicio.jsp';" value="Iniciar Sesión" class="dropbtn" name="BtnLogIn"></td>
			<td> <input type="submit" onclick="location.href='../Inicio/SignIn.jsp';" value="Crear Cuenta" class="dropbtn" name="BtnSingIn"></td>
		</tr>
	
	
	</table>
	</div>
</body>
</html>
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

		.body{
			background-image: url("../Images/images.jpg");
			background-color: white;
			height: 1000px;
			background-position: center top;
			background-repeat: no-repeat;
			background-size: auto;
			position: relative;
		}
			.fondo{
			background-image: url("http://cdn29.us1.fansshare.com/pictures/1920x1200/vector-abstract-wallpapers-vector-wallpaper-vectors-vector-385525390.jpg");
		}
	</style>
</head>
<body >
	<div class="fondo">
		<h2 style="color:#000000;" align=center>
		<b>BIENVENIDO A UTN E-BANK</b>
	</h2>
	</div>
	<div class="body" align=center>
	
	<br><br><br><br><br><br><br><br><br><br><br><br>
		<h2 style="color:#000000;" align=center>
		<b>Seleccione una opción para continuar</b>
	</h2>
		<input type="submit" onclick="location.href='../Inicio/LogIn.jsp';" value="Iniciar Sesión" class="dropbtn" name="BtnLogIn">
		<input type="submit" onclick="location.href='../Inicio/SignIn.jsp';" value="Crear Cuenta" class="dropbtn" name="BtnSingIn">
	</div>

</body>
</html>
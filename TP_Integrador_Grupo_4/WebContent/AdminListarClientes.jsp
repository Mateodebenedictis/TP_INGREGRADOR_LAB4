<%@page import="entidad.Usuario" %>
<%@page import="entidad.Cuenta" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>AdminListarCliente</title>

</head>
<body>

	<form method="get" action="ServletAdministrador">

		<%
			String nombreUsuarioLogueado = "Juan Perez";
		
			/*
			String visibilidadModificar = "hidden";
			boolean seModifico = false;
			String mensaje = "";
			Cuenta cuentaSeleccionada = new Cuenta();
			
			ArrayList<Usuario> lClientes = null;
			ArrayList<Cuenta> lCuentas = null;
			ArrayList<String> lTipoCuenta = null;
			lTipoCuenta.add("Caja de ahorro");
			lTipoCuenta.add("Cuenta corriente");
			
			if(request.getAttribute("ListaClientesLME") != null){
				lClientes = (ArrayList<Usuario>) request.getAttribute("ListaClientesLME");
			}
			
			if(request.getAttribute("ListaCuentasLME") != null){
				lCuentas = (ArrayList<Cuenta>) request.getAttribute("ListaCuentasLME");
			}
			
			if(request.getAttribute("MensajeLMECuenta") != null){
				mensaje = (String) request.getAttribute("MensajeLMECuenta");
			}
			
			if(request.getAttribute("ModificarLMECuenta") != null){
				visibilidadModificar = "visible";
				cuentaSeleccionada = (Cuenta) request.getAttribute("ModificarLMECuenta");
			}
			
			*/
		%>

	<div>
			<h1 align=center style="color: #0049A0;">
				<a style="color: #005CA5; text-decoration: none">UTN BANK</a>
			</h1>
		</div>

		<!--Navbar-->

		<nav id="mainNavbar" class="navbar navbar-dark navbar-expand-md py-0" style="background: #569EF4">

            <a href="#" class="navbar-brand">UTN Bank</a>

            <button class="navbar-toggler" data-toggle="collapse" data-target="#navLinks" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between blurb" id="navLinks">
                <ul class="navbar-nav">
                
                    <li class="nav-item">
                        <a href="ServletAdministrador?Inicio" class="nav-link">Inicio</a>
                    </li>
                    
                    <li class="nav-item">
                        <a href="ServletAdministrador?Prestamos" class="nav-link">Prestamos</a>
                    </li>
                    
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Usuarios
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="ServletAdministrador?AltaUsuario">Alta Usuario</a>
                        <a class="dropdown-item" href="ServletAdministrador?BMLUsuario">Listar Usuario</a>
                      </div>
                    </li>
                    
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Cuentas
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="ServletAdministrador?AltaCuenta">Alta Cuenta</a>
                        <a class="dropdown-item" href="ServletAdministrador?BMLCuenta">Listar y Modificar</a>
                      </div>
                    </li>
                    
                    <li class="nav-item">
                        <a href="ServletAdministrador?Reportes" class="nav-link">Reportes</a>
                    </li>
                    
                    <li class="nav-item">
                        <a href="ServletAdministrador?Perfil" class="nav-link">Perfil</a>
                    </li>
                    
                </ul>
                <ul class="navbar-nav" style="margin-right: 30px">
                    <li class="nav-item align-content-lg-end">
                      <label id="lblNombreUsuario" Style="color: white;margin-right:20px; margin-top:5px;"><%=nombreUsuarioLogueado%></label>
                    </li>
                    <li class="nav-item align-content-lg-end">
                      <input class="btn btn-secondary" style="position: center;text-align: center; width:100%" type="submit" value="Cerrar Sesion" name="btnCerrarSesion"/>
                    </li>
                </ul>
            </div>
        </nav>

	
	<h2 align=center style="color:#0049A0;">
		Lista de clientes
	</h2>
	
	
	</form>



	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
	

</body>
</html>
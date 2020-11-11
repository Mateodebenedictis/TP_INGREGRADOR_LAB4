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

<title>Alta Cuenta</title>
</head>
<body>
	<form method="get" action="ServletAdministrador">

	<%
		String nombreUsuarioLogueado = "Juan Perez";
		String mensaje = "";
		boolean estadoInsert = false;
		boolean estadoCuentasCliente = false;
		ArrayList<Usuario> lClientes = null;
		Cuenta cuenta = null;
		
		if(request.getAttribute("AgregarCuenta") != null){
			cuenta = (Cuenta) request.getAttribute("AgregarCuenta");
		}
		
		if(request.getAttribute("ListaClientes") != null){
			lClientes = (ArrayList<Usuario>) request.getAttribute("ListaClientes");
		}
		
		if(request.getAttribute("InsertCuenta") != null){
			
			estadoInsert = (boolean) request.getAttribute("InsertCuenta");
			if(estadoInsert){
				
				mensaje = "La cuenta se creo con exito!";
				
			} else {
				
				mensaje = "Hubo un error al crear la cuenta, vuelva a intentarlo";
				
			}
			
		} 
		
		if(request.getAttribute("EstadoCuentasCliente") != null){
			
			estadoCuentasCliente = (boolean) request.getAttribute("EstadoCuentasCliente");
			
			if(estadoCuentasCliente == false){
				
				mensaje = "El cliente ya cuenta con 3 cuentas, alcanzo el maximo permitido";
				
			}
			
		}
	
	%>

		<div>
			<h1 align=center style="color: #0049A0;">
				UTN BANK
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
		
		
		<h2 style="color: #0049A0;" align=center>
			<b>ALTA DE CUENTA</b>
		</h2>
		
		<div>
			<table align=center>
				<tr>
					<td>Nombre de Usuario</td>
					<td><select name="ddlAltaCuentaNombreUsuario" required>
						<%
						int valor = 0;
						if(lClientes != null)
						for(Usuario cliente : lClientes){
							if(cliente.getEstado() == 1){
						%>
			
						<option value= <%=cliente.getNombreUsuario().toString()%> ><%= cliente.getNombreUsuario().toString() %></option>
			
						<%
						valor++;
							}
						}
						%>
					</select></td>
				</tr>
				<tr>
					<td>Número de cuenta</td>
					<td><label name="lblAltaCuentaNroCuenta"><%= cuenta.getNroCuenta() %></label> <input type="hidden" name="inputAltaCuentaNroCuenta" value=" <%= cuenta.getNroCuenta() %> "> </td>
				</tr>
				<tr>
					<td>Tipo de cuenta</td>
					<td><select name="ddlAltaCuentaTipoCuenta">
							<option value=1>Cuenta Corriente</option>
							<option value=2>Caja de Ahorro</option>
					</select></td>
				</tr>
				<tr>
					<td>CBU</td>
					<td><label name="lblAltaCuentaCBU"> <%= cuenta.getCbu() %> </label> <input type="hidden" name="inputAltaCuentaCBU" value=" <%= cuenta.getCbu() %> "> </td>
				</tr>
				<tr>
					<td>Saldo</td>
					<td><input type=number name="txtAltaCuentaSaldo" required min="10000"/></td>
				</tr>

				<tr>
					<td><input type="submit" value="Crear Cuenta"
						name="btnAltaCuentaCrearCuenta" /></td>
				</tr>
				

			</table>
		</div>
		
		<div align=center style="margin-top: 40px;">
			<label name="lblAltaCuentaMensaje"> <%= mensaje %> </label>
		</div>
		
		
		
	</form>

<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


</body>
</html>
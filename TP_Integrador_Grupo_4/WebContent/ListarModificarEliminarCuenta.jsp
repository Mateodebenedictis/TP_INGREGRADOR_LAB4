<%@page import="entidad.TipoDeCuenta" %>
<%@page import="entidad.Usuario" %>
<%@page import="entidad.Cuenta" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="//cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<title>Listado Cuentas</title>

</head>
<body>

	<form method="get" action="ServletAdministrador">

		<%
			String nombreUsuarioLogueado = "Juan Perez";
			String visibilidadModificar = "hidden";
			String mensaje = "";
			Cuenta cuentaSeleccionada = new Cuenta();
			
			ArrayList<Cuenta> lCuentas = null;
			ArrayList<TipoDeCuenta> lTipoCuenta = null;
			
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
			
			if(request.getAttribute("TiposDeCuentas") != null){
				lTipoCuenta = (ArrayList<TipoDeCuenta>) request.getAttribute("TiposDeCuentas");
			}
			
			
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
		
		<div style="margin-top:60px"></div>
				
			<table id="myTable" align="center" class="table table-striped" style="margin-left: 10px;">
			
				<thead>
					<tr>
						<th>Nro de Cuenta</th>
						<th>Nombre de Usuario</th>
						<th>CBU</th>
						<th>Fecha de creacion</th>
						<th>Tipo de cuenta</th>
						<th>Saldo</th>
						<th>Modificar</th>
						<th>Eliminar</th>
					</tr>
				</thead>
				
				<tbody>
				
					<%
					if(lCuentas != null)
						for(Cuenta cuenta : lCuentas){
							if(cuenta.getEstado() == 1){
					%>
				
					<tr>
					<form action="ServletAdministrador" method="post">
						<td> <%= cuenta.getNroCuenta() %> <input type="hidden" name="inputLMECuentaNroCuenta" value=" <%= cuenta.getNroCuenta() %> "> </td>
						<td> <%= cuenta.getNombreUsuario() %> <input type="hidden" name="inputLMECuentaNombreUsuario" value=" <%= cuenta.getNombreUsuario() %> "> </td>
						<td> <%= cuenta.getCbu() %> <input type="hidden" name="inputLMECuentaCbu" value=" <%= cuenta.getCbu() %> "></td>
						<td> <%= cuenta.getFechaCreacion() %> <input type="hidden" name="inputLMECuentaFecha" value=" <%= cuenta.getFechaCreacion() %> "> </td>
						<td> <%= lTipoCuenta.get(cuenta.getCodTipoCuenta() - 1) %> <input type="hidden" name="inputLMECuentaTipoCuenta" value=" <%= lTipoCuenta.get(cuenta.getCodTipoCuenta() - 1).getDescripcion().toString() %> "> </td>
						<td> $ <%= cuenta.getSaldo() %> <input type="hidden" name="inputLMECuentaSaldo" value="<%= cuenta.getSaldo() %> "> </td>
						<td><input type="submit" value="Modificar" name="btnLMECuentaModificar"></td>
						<td><input type="submit" value="Eliminar" name="btnLMECuentaEliminar"></td>
					</form>
					</tr>
					
					<%
							}
					}
					%>
				</tbody>
			</table>
			
			
			<form action="ServletAdministrador" method="post">
			<table align="center" style="margin:10px; width: 800px; visibility:<%= visibilidadModificar %>;" class="table" >
			
				<thead>
					<tr>
						<th class="th-sm">
							<label>Numero de cuenta:   </label>
						</th>
					
						<th>
							<label name="lblLMECuentaNroCuentaModificar"><%= cuentaSeleccionada.getNroCuenta() %></label>
							<input type="hidden" name="inputLMECuentaNroCuentaModificar" value=" <%= cuentaSeleccionada.getNroCuenta() %> ">
						</th>
					
						<th class="th-sm">
							<label>Saldo: </label>
						</th>
					
						<th class="th-sm">
							<input type="float" name="txtLMECuentaSaldoModificar" value="<%= cuentaSeleccionada.getSaldo() %>" required> </input>
						</th>
					
						<th class="th-sm">
							<input type="submit" value="Confirmar Modificacion" name="btnLMECuentaModificarSaldo" />
						</th>
					
					</tr>
				</thead>
			</table>
			</form>
			
			<h4 align="center" style="margin:10px;"> <%= mensaje %> </h4>
	</form>

	
	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
		
	<script src="//cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready( function () {
	    $('#myTable').DataTable();
	} );
	</script>
		
	

</body>
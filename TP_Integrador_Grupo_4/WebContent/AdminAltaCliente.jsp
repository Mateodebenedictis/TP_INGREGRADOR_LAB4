<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminAltaCliente</title>
<style>
		.fondo{
			background-image: url("http://cdn29.us1.fansshare.com/pictures/1920x1200/vector-abstract-wallpapers-vector-wallpaper-vectors-vector-385525390.jpg");
		}
		.dropbtn {
			background-color: rgba(255,255,255,0);
			color: white;
		    padding: 16px;
		    font-size: 16px;
		    border: none;
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
	<div>
		<h1 align=center style="color:#0049A0;">
			<a style="color:#005CA5; text-decoration:none" href="AdminInicio.jsp">BANCO LAPUCHA</a>
		</h1>
	</div>
	<div class="fondo" align=center>
		<div class="dropdown">
			<button onclick="MostrarListaClientes()" class="dropbtn">CLIENTES</button>
			<div id="ddlClientes" class="dropdown-content">
		    	<a href="../Administrador/AdminAltaCliente.jsp">ALTA</a>
		    	<a href="../Administrador/AdminModificarContraseñaCliente.jsp">MODIFICACION</a>
		    	<a href="../Administrador/AdminListarClientes.jsp">LISTADO</a>
			</div>
		</div>
		<!--  -->
		<div class="dropdown">
			<button onclick="MostrarListaCuentas()" class="dropbtn">CUENTAS</button>
			<div id="ddlCuentas" class="dropdown-content">
		    	<a href="../Cuentas/AltaCuenta.jsp">ALTA</a>
		    	<a href="../Cuentas/ListarModificarEliminarCuenta.jsp">LISTADO</a>
			</div>
		</div>		
		<input type="button" onclick="location.href='../Administrador/AdminListarPrestamos.jsp';" value="PRESTAMOS" class="dropbtn">
		<input type="button" onclick="location.href='../Administrador/AdminReportesClientes.jsp';" value="REPORTES" class="dropbtn">
		<input type="button" onclick="location.href='../Administrador/AdminPerfil.jsp';" value="PERFIL" class="dropbtn">
	</div>
	<div style="color:#0049A0;">
		Administrador: <b><label id="lblAdministrador"></label></b>
	</div>
	<div align=center style="color:#0049A0;">
		
	</div>
	
	<h2 style="color:#0049A0;" align=center>
		<b>ALTA DE CLIENTE</b>
	</h2>
	<div>	
		<table align=center>
			<tr>
				<td>Nombre</td>
				<td> <input type=text name="txtSignInNombre"/> </td>
			</tr>
			<tr>
				<td>Apellido</td>
				<td> <input type=text name="txtSignInApellido"/> </td>
			</tr>
			<tr>
				<td>Dni</td>
				<td> <input type=text name="txtSignInDni"/> </td>
			</tr>
			<tr>
				<td> Sexo </td>
				<td>
					<select name="ddlSignInSexo">
	
						<option value=1>Femenino</option>
						<option value=2>Masculino</option>
						<option value=3>Otro</option>
				
					</select>
				</td>
			</tr>
			<tr>
				<td> Nacionalidad </td>
				<td>
					<select name="ddlSignInNacionalidad">
						<option value=1>Argentina</option>
						<option value=2>Bolivia</option>
						<option value=3>Brasil</option>
						<option value=4>Chile </option>
						<option value=5>Colombia </option>
						<option value=6>Ecuador </option>
						<option value=7>Guyana </option>
						<option value=8>Guyana Francesa</option>
						<option value=9>Paraguay</option>
						<option value=10>Perú</option>
						<option value=11>Suriname </option>
						<option value=12>Uruguay </option>
						<option value=13>Venezuela</option>
						<option value=14>México</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Direccion</td>
				<td> <input type=text name="txtSignInDireccion"/> </td>
			</tr>
			<tr>
				<td>Localidad</td>
				<td> <input type=text name="txtSignInLocalidad"/> </td>
			</tr>
			<tr>
				<td>Provincia</td>
				<td> <input type=text name="txtSignInProvincia"/> </td>
			</tr>
			<tr>
				<td>CUIL</td>
				<td> <input type=number name="txtSignInCuil" value=""/> </td>
			</tr>
			<tr>
				<td>Correo electronico</td>
				<td> <input type=email name="txtSignInEmail"/> </td>
			</tr>
			<tr>
				<td>Telefono</td>
				<td> <input type=number name="txtSignInTelefono"/> </td>
			</tr>
			<tr>
				<td> Contraseña </td>
				<td> <input type=password name="txtLogInContraseña"/> </td>
			</tr>
			<tr>
				<td> Repetir Contraseña </td>
				<td> <input type=password name="txtLogInContraseñaRepetida"/> </td>
			</tr>
			<tr>
				<td>  </td>
				<td>  <input type="submit" value="Crear Cuenta" name="btnSignIn"></td>
			</tr>
		</table>
		<br>
		<div align=center style="color:#0049A0;"> 
			<label for="lblMensajeBajaCliente">Se ha dado de alta exitosamente.</label>
		</div>
		
	</div>

<script>
function MostrarListaClientes() {
    document.getElementById("ddlClientes").classList.toggle("show");
}
function MostrarListaCuentas() {
    document.getElementById("ddlCuentas").classList.toggle("show");
}
function MostrarListaPrestamos() {
    document.getElementById("ddlPrestamos").classList.toggle("show");
}
function MostrarListaReportes() {
    document.getElementById("ddlReportes").classList.toggle("show");
}


window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
</body>
</html>
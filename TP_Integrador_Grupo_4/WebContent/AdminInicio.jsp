<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio Administrador</title>
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
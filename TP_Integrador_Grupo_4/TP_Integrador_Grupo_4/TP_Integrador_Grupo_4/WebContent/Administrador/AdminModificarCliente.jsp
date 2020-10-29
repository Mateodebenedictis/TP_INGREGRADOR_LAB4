<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
			BANCO LAPUCHA
		</h1>
	</div>
	<div class="fondo" align=center>
		<div class="dropdown">
			<button onclick="MostrarListaClientes()" class="dropbtn">CLIENTES</button>
			<div id="ddlClientes" class="dropdown-content">
		    	<a href="AltaCliente.jsp">ALTA</a>
		    	<a href="BajaCliente.jsp">BAJA</a>
		    	<a href="ModificarCliente.jsp">MODIFICACION</a>
		    	<a href="ListarCliente.jsp">LISTADO</a>
			</div>
		</div>
		<!--  -->
		<div class="dropdown">
			<button onclick="MostrarListaCuentas()" class="dropbtn">CUENTAS</button>
			<div id="ddlCuentas" class="dropdown-content">
		    	<a href="AltaCuenta.jsp">ALTA</a>
		    	<a href="BajaCuenta.jsp">BAJA</a>
		    	<a href="ModificarCuenta.jsp">MODIFICACION</a>
		    	<a href="ListarCuenta.jsp">LISTADO</a>
			</div>
		</div>
		<div class="dropdown">
			<button onclick="MostrarListaPrestamos()" class="dropbtn">PRESTAMOS</button>
			<div id="ddlPrestamos" class="dropdown-content">
		    	<a href="AltaCuenta.jsp">LISTADO</a>
			</div>
		</div>
		<div class="dropdown">
			<button onclick="MostrarListaReportes()" class="dropbtn">REPORTES</button>
			<div id="ddlReportes" class="dropdown-content">
		    	<a href="AltaCuenta.jsp">CLIENTES</a>
		    	<a href="BajaCuenta.jsp">CUENTAS</a>
		    	<a href="ModificarCuenta.jsp">PRESTAMOS</a>
			</div>
		</div>
	</div>
	<h2 align=center style="color:#0049A0;">
		CAMBIO DE CONTRASE�A <b><label id="lblAdministrador"></label></b>
	</h2>
	<div align=center style="color:#0049A0;">
		<table>
			<tr align=right>
				<td>
					<font size=5> 
						Usuario:
					</font>
				</td>
				<td>
					<input type="text" name="txtModificarClienteUsuario">
				</td>
			</tr>
			<tr align=right>
				<td>
					<font size=5> 
						Nueva Contrase�a:
					</font>
				</td>
				<td>
					<input type="text" name="txtModificarClienteContrase�a">
				</td>
			</tr>
		</table>
		<br>
		<input type="submit" value="Aceptar" name="btnModificarClienteAceptar" style="width: 80px; height: 28px"/>
		<br><br>
		<label for="lblModificarClienteMensaje">Contrase�a actualizada exitosamente.</label>
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
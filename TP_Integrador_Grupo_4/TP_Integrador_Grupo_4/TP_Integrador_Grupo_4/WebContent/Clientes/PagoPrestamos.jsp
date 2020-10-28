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
			<button onclick="MostrarListaPerfil()" class="dropbtn">PERFIL</button>
			<div id="ddlPerfil" class="dropdown-content">
		    	<a href="Perfil.jsp">MI PERFIL</a>
		    	<a href="CuentasCliente.jsp">MIS CUENTAS</a>

			</div>
		</div>
		<div class="dropdown">
			<button onclick="MostrarListaCuentas()" class="dropbtn">CUENTAS</button>
			<div id="ddlCuentas" class="dropdown-content">
		    	<a href=".jsp">HISTORIAL DE MOVIMIENTOS</a>
		    	<a href=".jsp">BAJA</a>
		    	<a href=".jsp">MODIFICACION</a>
		    	<a href=".jsp">LISTADO</a>
			</div>
		</div>
		<div class="dropdown">
			<button onclick="MostrarListaPrestamos()" class="dropbtn">PRESTAMOS</button>
			<div id="ddlPrestamos" class="dropdown-content">
		    	<a href=".jsp">PAGAR PRESTAMO</a>
		    	<a href=".jsp">PEDIR PRESTAMO</a>
			</div>
		</div>
		<div class="dropdown">
			<button onclick="MostrarListaTransferencias()" class="dropbtn">TRANSFERENCIAS</button>
			<div id="ddlTransferencias" class="dropdown-content">
		    	<a href=".jsp">TRANSFERIR A OTRA CUENTA PROPIA</a>
		    	<a href=".jsp">TRANSFERIR A OTRA CUENTA NO PROPIA</a>
			</div>
		</div>
	</div>
	<div style="color:#0049A0;">
		Usuario: <b><label id="lblUsuario"></label></b>
	</div>
<script>
function MostrarListaPerfil() {
    document.getElementById("ddlPerfil").classList.toggle("show");
}
function MostrarListaCuentas() {
    document.getElementById("ddlCuentas").classList.toggle("show");
}
function MostrarListaPrestamos() {
    document.getElementById("ddlPrestamos").classList.toggle("show");
}
function MostrarListaTransferencias() {
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
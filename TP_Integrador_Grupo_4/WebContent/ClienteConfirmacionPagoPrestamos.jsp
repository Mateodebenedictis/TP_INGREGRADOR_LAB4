<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>Pago Prestamos</title>
</head>
<body>

    <!--Navbar-->

    <nav id="mainNavbar" class="navbar navbar-dark navbar-expand-md py-0" style="background: #569EF4">

            <a href="#" class="navbar-brand">UTN Bank</a>

            <button class="navbar-toggler" data-toggle="collapse" data-target="#navLinks" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between blurb" id="navLinks">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="#" class="nav-link">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Historial</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Transferencias</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Prestamos
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#">Pedir Prestamo</a>
                        <a class="dropdown-item" href="#">Pagar Prestamo</a>
                      </div>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Perfil</a>
                    </li>
                </ul>
                <ul class="navbar-nav" style="margin-right: 30px">
                    <li class="nav-item align-content-lg-end">
                      <label id="lblNombreUsuario" Style="color: white;margin-right:20px; margin-top:5px;">NombreUsuario</label>
                    </li>
                    <li class="nav-item align-content-lg-end">
                      <input class="btn btn-secondary" style="position: center;text-align: center; width:100%" type="submit" value="Cerrar Sesion" name="btnCerrarSesion"/>
                    </li>
                </ul>
            </div>
        </nav>
        
        <h3 align="center" style="margin-top: 30px;">Confirmacion de pago</h3>
        
        <table align="center" style="margin-top: 15px;">
		
			<tr>
				<td>Codigo de prestamo : </td>
				<td><label name="lblClienteConfirmacionPagoPrestamosCodPrestamo"></label></td>
			</tr>
			
			<tr>
				<td>Numero de cuota : </td>
				<td><label name="lblClienteConfirmacionPagoPrestamosNumeroCuota"></label></td>
			</tr>
			
			<tr>
				<td>Importe : </td>
				<td><label name="lblClienteConfirmacionPagoPrestamosImporte"></label></td>
			</tr>
		
			<tr>
				<td>Cuenta para realizar el pago:</td>
				<td><select name="ddlClienteConfirmacionPagoPrestamosCuenta">

						<option value=1>652626</option>
						<option value=2>656663</option>
						
					</select>
				</td>
			</tr>
		
			<tr>
				<td><input type="submit" value="Confirmar pago" name="btnClienteConfirmacionPagoPrestamosConfirmar"/></td>
			</tr>
			
			<tr>
				<td><label name="lblClienteConfirmacionPagoPrestamosError"></label></td>
			</tr>
		</table>

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</body>
</html>
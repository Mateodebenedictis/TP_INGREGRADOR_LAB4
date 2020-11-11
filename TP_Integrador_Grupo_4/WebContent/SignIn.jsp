<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear Cuenta</title>
</head>
<style>
		.dropbtn {
			background-color: #008CBA;
			border-radius: 4px ;
			color: Black;
		    padding: 16px;
		    font-size: 16px;
		    border: 2px solid #000000;
		    cursor: pointer;
		}
		.show {
		display:block;
		}
</style>
<body>


	<h1 align="center" style="margin-top:25px">CREACIÓN DE CUENTA DE UTN E-BANK</h1>
	
	<table align="center" style="margin-top:15px">
		
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
			<td> <input type=number name="txtSignInCuil"/> </td>
		</tr>
		
		<tr>
			<td> Tipo de cuenta </td>
			<td>
				<select name="ddlSignInTipoDeCuenta">

					<option value=1>Caja de ahorro</option>
					<option value=2>Cuenta Corriente</option>
			
				</select>
			</td>
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
			<td> <input type="submit" onclick="location.href='../Inicio/LogIn.jsp';" value="Cancelar" class="dropbtn" name="BtnCancelar"></td>
			<td> <input type="submit" onclick="location.href='../Inicio/LogIn.jsp';" value="Crear Cuenta" class="dropbtn" name="BtnCrearCuenta"></td>
		</tr>
		
	
	</table>




</body>
</html>
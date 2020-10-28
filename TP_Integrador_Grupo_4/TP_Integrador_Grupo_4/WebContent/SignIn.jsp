<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="get">
	<h1><small>Sign In</small></h1>
	
	<table>
		
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
			<td> <input type="submit" value="Crear Cuenta" name="btnSignIn"/> </td>
			<td> <input type="submit" value="Iniciar Session" name="btnSignInLogIn"/> </td>
		</tr>
		
	
	</table>

</form>


</body>
</html>
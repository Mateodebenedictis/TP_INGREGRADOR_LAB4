package daoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import dao.UsuarioDao;
import entidad.Usuario;

public class UsuarioDaoImpl implements UsuarioDao{

	private static final String get = "SELECT * FROM usuarios WHERE U_Usuario = ?";
	private static final String insert = "INSERT INTO usuarios(U_Usuario, U_Contraseña, U_TipoUsuario, U_DNI, U_CUIL, U_Sexo, U_Nacionalidad, U_FechaNacimiento, U_Direccion, U_Localidad, U_Provincia, U_Email, U_Telefono, U_Nombre, U_Apellido, U_Estado) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String readall = "SELECT * FROM usuarios";
	private static final String readallClientes = "SELECT * FROM usuarios WHERE U_TipoUsuario = 1";
	
	private PreparedStatement statement;
	
	@Override
	public Usuario traerUsuario(String nombreUsuario) {
		
		Connection conexion = null;
		Usuario u = new Usuario();

		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			statement = conexion.prepareStatement(get);
			statement.setString(1, nombreUsuario);
			ResultSet rs = statement.executeQuery();
			
				u.setNombreUsuario(rs.getString("U_Usuario"));
				u.setContraseña(rs.getString("U_Contraseña"));
				u.setCodTipoUsuario(Integer.parseInt(rs.getString("U_TipoUsuario")));
				u.setDni(Integer.parseInt(rs.getString("U_DNI")));
				u.setCuil(Integer.parseInt(rs.getString("U_CUIL")));
				u.setSexo(rs.getString("U_Sexo"));
				u.setNacionalidad(rs.getString("U_Nacionalidad"));
				u.setFechaNacimiento(LocalDate.parse(rs.getString("U_FechaNacimiento")));
				u.setDireccion(rs.getString("U_Direccion"));
				u.setLocalidad(rs.getString("U_Localidad"));
				u.setProvincia(rs.getString("U_Provincia"));
				u.setEmail(rs.getString("U_Email"));
				u.setTelefono(Integer.parseInt(rs.getString("U_Telefono")));
				u.setNombre(rs.getString("U_Nombre"));
				u.setApellido(rs.getString("U_Apellido"));
				u.setEstado(Integer.parseInt(rs.getString("U_Estado")));
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return u;
	}

	@Override
	public ArrayList<Usuario> traerListaUsuarios() {
		
		Connection conexion = null;
		ArrayList<Usuario> lUsuarios = new ArrayList<Usuario>();

		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			statement = conexion.prepareStatement(readall);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				
				Usuario u = new Usuario();
				u.setNombreUsuario(rs.getString("U_Usuario"));
				u.setContraseña(rs.getString("U_Contraseña"));
				u.setCodTipoUsuario(Integer.parseInt(rs.getString("U_TipoUsuario")));
				u.setDni(Integer.parseInt(rs.getString("U_DNI")));
				u.setCuil(Integer.parseInt(rs.getString("U_CUIL")));
				u.setSexo(rs.getString("U_Sexo"));
				u.setNacionalidad(rs.getString("U_Nacionalidad"));
				u.setFechaNacimiento(LocalDate.parse(rs.getString("U_FechaNacimiento")));
				u.setDireccion(rs.getString("U_Direccion"));
				u.setLocalidad(rs.getString("U_Localidad"));
				u.setProvincia(rs.getString("U_Provincia"));
				u.setEmail(rs.getString("U_Email"));
				u.setTelefono(Integer.parseInt(rs.getString("U_Telefono")));
				u.setNombre(rs.getString("U_Nombre"));
				u.setApellido(rs.getString("U_Apellido"));
				u.setEstado(Integer.parseInt(rs.getString("U_Estado")));
			
				lUsuarios.add(u);
				
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		//System.out.println(lPersonas);
		return lUsuarios;
	}

	@Override
	public boolean modificarUsuario(Usuario usuario) {
		
		Connection conexion = null;
		boolean seModifico = false;
		
		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			CallableStatement cst = conexion.prepareCall("CALL SP_ModificarContraseñaUsuario(?, ?)");
			cst.setString(1, usuario.getNombreUsuario().trim());
			cst.setString(2, usuario.getContraseña().trim());
			cst.execute();
			
			if(cst.executeUpdate() > 0) {
				conexion.commit();
				seModifico = true;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return seModifico;
	}

	@Override
	public boolean altaUsuario(Usuario usuario) {
		
		boolean isInsertExitoso = false;
		Connection conexion = null;
		try
		{
			conexion = Conexion.getConexion().getSQLConexion();
			statement = conexion.prepareStatement(insert);
			statement.setString(1, usuario.getNombreUsuario());
			statement.setString(2, usuario.getContraseña());
			statement.setString(3, String.valueOf(usuario.getCodTipoUsuario()));
			statement.setString(4, String.valueOf(usuario.getDni()));
			statement.setString(5, String.valueOf(usuario.getCuil()));
			statement.setString(6, usuario.getSexo());
			statement.setString(7, usuario.getNacionalidad());
			statement.setString(8, String.valueOf(usuario.getFechaNacimiento()));
			statement.setString(9, usuario.getDireccion());
			statement.setString(10, usuario.getLocalidad());
			statement.setString(11, usuario.getProvincia());
			statement.setString(12, usuario.getEmail());
			statement.setString(13, String.valueOf(usuario.getTelefono()));
			statement.setString(14, usuario.getNombre());
			statement.setString(15, usuario.getApellido());
			statement.setString(16, String.valueOf(usuario.getEstado()));
			
		
			if(statement.executeUpdate() > 0)
			{
				conexion.commit();
				isInsertExitoso = true;
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			try {
				conexion.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		
		return isInsertExitoso;
	}

	@Override
	public boolean bajaUsuario(String nombreUsuario) {
		Connection conexion = null;
		boolean seModifico = false;
		
		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			CallableStatement cst = conexion.prepareCall("CALL SP_BajaUsuario(?)");
			cst.setString(1, nombreUsuario.trim());
			cst.execute();
			
			if(cst.executeUpdate() > 0) {
				conexion.commit();
				seModifico = true;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return seModifico;
	}

	@Override
	public ArrayList<Usuario> traerListaUsuariosClientes() {
		Connection conexion = null;
		ArrayList<Usuario> lUsuarios = new ArrayList<Usuario>();

		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			statement = conexion.prepareStatement(readallClientes);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				
				Usuario u = new Usuario();
				u.setNombreUsuario(rs.getString("U_Usuario"));
				u.setContraseña(rs.getString("U_Contraseña"));
				u.setCodTipoUsuario(Integer.parseInt(rs.getString("U_TipoUsuario")));
				u.setDni(Integer.parseInt(rs.getString("U_DNI")));
				u.setCuil(Integer.parseInt(rs.getString("U_CUIL")));
				u.setSexo(rs.getString("U_Sexo"));
				u.setNacionalidad(rs.getString("U_Nacionalidad"));
				u.setFechaNacimiento(LocalDate.parse(rs.getString("U_FechaNacimiento")));
				u.setDireccion(rs.getString("U_Direccion"));
				u.setLocalidad(rs.getString("U_Localidad"));
				u.setProvincia(rs.getString("U_Provincia"));
				u.setEmail(rs.getString("U_Email"));
				u.setTelefono(Integer.parseInt(rs.getString("U_Telefono")));
				u.setNombre(rs.getString("U_Nombre"));
				u.setApellido(rs.getString("U_Apellido"));
				u.setEstado(Integer.parseInt(rs.getString("U_Estado")));
			
				lUsuarios.add(u);
				
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		//System.out.println(lUsuarios);
		return lUsuarios;
	}

}

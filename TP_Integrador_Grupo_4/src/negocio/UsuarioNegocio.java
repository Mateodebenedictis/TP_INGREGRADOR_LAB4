package negocio;

import java.util.ArrayList;

import entidad.Usuario;

public interface UsuarioNegocio {

	public Usuario traerUsuario(String nombreUsuario);
	public ArrayList<Usuario> traerListaUsuarios();
	public ArrayList<Usuario> traerListaUsuariosClientes();
	public boolean modificarUsuario(Usuario usuario);
	public boolean altaUsuario(Usuario usuario);
	public boolean bajaUsuario(String nombreUsuario);
}

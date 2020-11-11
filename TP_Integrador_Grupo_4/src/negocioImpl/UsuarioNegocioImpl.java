package negocioImpl;

import java.util.ArrayList;

import dao.UsuarioDao;
import daoImpl.UsuarioDaoImpl;
import entidad.Usuario;
import negocio.UsuarioNegocio;

public class UsuarioNegocioImpl implements UsuarioNegocio{

	private UsuarioDao usuarioDao = new UsuarioDaoImpl();
	
	@Override
	public Usuario traerUsuario(String nombreUsuario) {
		
		return usuarioDao.traerUsuario(nombreUsuario);
	}

	@Override
	public ArrayList<Usuario> traerListaUsuarios() {
		
		return usuarioDao.traerListaUsuarios();
	}

	@Override
	public boolean modificarUsuario(Usuario usuario) {
		
		return usuarioDao.modificarUsuario(usuario);
	}

	@Override
	public boolean altaUsuario(Usuario usuario) {
		
		return usuarioDao.altaUsuario(usuario);
	}

	@Override
	public boolean bajaUsuario(String nombreUsuario) {

		return usuarioDao.bajaUsuario(nombreUsuario);
	}

	@Override
	public ArrayList<Usuario> traerListaUsuariosClientes() {

		return usuarioDao.traerListaUsuariosClientes();
	}

}

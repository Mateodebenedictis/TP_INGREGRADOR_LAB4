package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entidad.Usuario;

@WebServlet("/Session")
public class ServletSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HttpSession sessionUsuario;
    private Usuario usuario;
    
  
    public ServletSession() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("UsuarioLogeado") != null) {
			
			sessionUsuario = request.getSession(true);
			usuario = (Usuario) request.getAttribute("UsuarioLogeado");
			sessionUsuario.setAttribute("UsuarioLogeadoSession", usuario);
			
		}
		
		if(request.getParameter("CerrarSesion") != null) {
			
			sessionUsuario = request.getSession(false);
			usuario = null;
			sessionUsuario.setAttribute("UsuarioLogeadoSession", usuario);
			
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

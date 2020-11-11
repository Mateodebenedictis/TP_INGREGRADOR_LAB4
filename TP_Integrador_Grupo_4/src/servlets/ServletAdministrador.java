package servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidad.Cuenta;
import entidad.TipoDeCuenta;
import entidad.Usuario;
import negocio.CuentaNegocio;
import negocio.UsuarioNegocio;
import negocioImpl.CuentaNegocioImpl;
import negocioImpl.UsuarioNegocioImpl;


@WebServlet("/ServletAdministrador")
public class ServletAdministrador extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private RequestDispatcher rd;
	private CuentaNegocio cuentaNegocio = new CuentaNegocioImpl();
	private UsuarioNegocio usuarioNegocio = new UsuarioNegocioImpl();
	
    private ArrayList<Usuario> listaUsuarios;
    private ArrayList<Usuario> listaClientes;
    private ArrayList<Cuenta> listaCuentas;
    private ArrayList<Cuenta> listaCuentasCliente;
    private ArrayList<TipoDeCuenta> lTipoCuenta;

    
    public ServletAdministrador() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			

		if(request.getParameter("BMLCuenta") != null) {
			
			cargaPaginaBMLCuenta(request);
			rd.forward(request, response);
			
		}
		
		
		if(request.getParameter("AltaCuenta") != null) {
			
			cargaPaginaAltaCuenta(request);
			rd.forward(request, response);
			
		}
		
		
		if(request.getParameter("btnAltaCuentaCrearCuenta") != null) {
			
			Cuenta c = new Cuenta();
			
			c.setCbu(Integer.parseInt(request.getParameter("inputAltaCuentaCBU").trim()));
			c.setCodTipoCuenta(Integer.parseInt(request.getParameter("ddlAltaCuentaTipoCuenta")));
			c.setFechaCreacion(LocalDate.now());
			c.setNombreUsuario(request.getParameter("ddlAltaCuentaNombreUsuario"));
			c.setNroCuenta(Integer.parseInt(request.getParameter("inputAltaCuentaNroCuenta").trim()));
			c.setSaldo(Float.parseFloat(request.getParameter("txtAltaCuentaSaldo")));
			
			cargarListaCuentasCliente(c.getNombreUsuario());
			
			if(listaCuentasCliente.size() < 3) {
				
				if(cuentaNegocio.altaCuenta(c)) {
					
					request.setAttribute("EstadoCuentasCliente", true);
					request.setAttribute("InsertCuenta", true);
					
				} else {
					
					request.setAttribute("EstadoCuentasCliente", true);
					request.setAttribute("InsertCuenta", false);
					
				}
			} else {
				
				request.setAttribute("EstadoCuentasCliente", false);
				
			}
			
			cargaPaginaAltaCuenta(request);
			rd.forward(request, response);
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(request.getParameter("btnLMECuentaModificar") != null) {
			
			Cuenta cuenta = new Cuenta();
			
			cuenta.setNroCuenta(Integer.parseInt(request.getParameter("inputLMECuentaNroCuenta").toString().trim()));
			cuenta.setSaldo(Float.parseFloat(request.getParameter("inputLMECuentaSaldo").toString().trim()));
			
			request.setAttribute("ModificarLMECuenta", cuenta);
			cargaPaginaBMLCuenta(request);
			rd.forward(request, response);
			
		}
		
		if(request.getParameter("btnLMECuentaEliminar") != null) {
			
			String mensaje = "";
			int nroCuenta = Integer.parseInt(request.getParameter("inputLMECuentaNroCuenta").toString().trim());
			if(cuentaNegocio.bajaCuenta(nroCuenta)) {
				mensaje = "La cuenta Nro: " + nroCuenta + " se elimino correctamente";
				request.setAttribute("MensajeLMECuenta", mensaje);
			}
			
			cargaPaginaBMLCuenta(request);
			rd.forward(request, response);
		}
		
		if( request.getParameter("btnLMECuentaModificarSaldo") != null ) {
			
			Cuenta cuenta = new Cuenta();
			String mensaje = "";
			
			cuenta.setNroCuenta(Integer.parseInt(request.getParameter("inputLMECuentaNroCuentaModificar").toString().trim()));
			cuenta.setSaldo(Float.parseFloat(request.getParameter("txtLMECuentaSaldoModificar").toString().trim()));
			
			if(cuentaNegocio.modificarCuenta(cuenta)) {
				
				mensaje = "La cuenta Nro: " + cuenta.getNroCuenta() + " se modificó correctamente";
				
			} else {
				
				mensaje = "La cuenta Nro: " + cuenta.getNroCuenta() + " no se pudo modificar, intente nuevamente";
				
			}
			
			request.setAttribute("MensajeLMECuenta", mensaje);
			cargaPaginaBMLCuenta(request);
			rd.forward(request, response);
		}
		
	}
	
	private void cargarListaClientes() {
		listaClientes = usuarioNegocio.traerListaUsuariosClientes(); 
	}
	
	private void cargarListaUsuarios() {
		listaUsuarios = usuarioNegocio.traerListaUsuarios();
	}
	
	private void cargarListaCuentas() {
		listaCuentas = cuentaNegocio.traerListaCuentas();
	}

	private void cargarListaCuentasCliente(String nombreUsuario) {
		listaCuentasCliente = cuentaNegocio.traerListaCuentasUsuario(nombreUsuario);
	}
	
	private void cargarListaTiposDeCuenta() {	
		lTipoCuenta = cuentaNegocio.traerListaTipoDeCuenta();	
	}
	
	private void cargaPaginaBMLCuenta(HttpServletRequest request) {
		
		cargarListaCuentas();
		cargarListaTiposDeCuenta();
		
		request.setAttribute("ListaCuentasLME", listaCuentas);
		request.setAttribute("TiposDeCuentas", lTipoCuenta);
		
		rd = request.getRequestDispatcher("/ListarModificarEliminarCuenta.jsp");
	}
	
	
	
	private void cargaPaginaAltaCuenta(HttpServletRequest request) {
		
		cargarListaClientes();
		cargarListaUsuarios();
		cargarListaCuentas();
		
		Cuenta cuenta = new Cuenta();
		
		cuenta.setCbu(100000 + (listaCuentas.size() + 1));
		cuenta.setNroCuenta(listaCuentas.get(listaCuentas.size() - 1).getNroCuenta() + 1);
		
		request.setAttribute("AgregarCuenta", cuenta);
		request.setAttribute("ListaClientes", listaClientes);
		
		rd = request.getRequestDispatcher("/AltaCuenta.jsp");
	}
}

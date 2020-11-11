package negocioImpl;

import java.util.ArrayList;

import dao.CuentaDao;
import daoImpl.CuentaDaoImpl;
import entidad.Cuenta;
import entidad.TipoDeCuenta;
import negocio.CuentaNegocio;

public class CuentaNegocioImpl implements CuentaNegocio{

	private CuentaDao cuentaDao = new CuentaDaoImpl();
	
	@Override
	public ArrayList<Cuenta> traerListaCuentasUsuario(String nombreUsuario) {
		
		return cuentaDao.traerListaCuentasUsuario(nombreUsuario);
	}

	@Override
	public ArrayList<Cuenta> traerListaCuentas() {
		
		return cuentaDao.traerListaCuentas();
	}

	@Override
	public boolean modificarCuenta(Cuenta cuenta) {
		
		return cuentaDao.modificarCuenta(cuenta);
	}

	@Override
	public boolean altaCuenta(Cuenta cuenta) {
		
		return cuentaDao.altaCuenta(cuenta);
	}

	@Override
	public boolean bajaCuenta(int nroCuenta) {
		
		return cuentaDao.bajaCuenta(nroCuenta);
	}

	@Override
	public ArrayList<TipoDeCuenta> traerListaTipoDeCuenta() {

		return cuentaDao.traerListaTipoDeCuenta();
	}

}

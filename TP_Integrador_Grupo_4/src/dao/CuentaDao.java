package dao;

import java.util.ArrayList;

import entidad.Cuenta;
import entidad.TipoDeCuenta;

public interface CuentaDao {

	public ArrayList<Cuenta> traerListaCuentasUsuario(String nombreUsuario);
	public ArrayList<Cuenta> traerListaCuentas();
	public ArrayList<TipoDeCuenta> traerListaTipoDeCuenta();
	public boolean modificarCuenta(Cuenta cuenta);
	public boolean altaCuenta(Cuenta cuenta);
	public boolean bajaCuenta(int nroCuenta);
	
}

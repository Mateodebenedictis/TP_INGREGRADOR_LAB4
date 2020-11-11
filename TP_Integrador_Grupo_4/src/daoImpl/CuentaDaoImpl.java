package daoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import dao.CuentaDao;
import entidad.Cuenta;
import entidad.TipoDeCuenta;

public class CuentaDaoImpl implements CuentaDao{

	private static final String insert = "INSERT INTO cuentas(C_NroCuenta, C_Usuario, C_CBU, C_FechaCreacion, C_CodTipoCuenta, C_Saldo, C_Estado) VALUES(?, ?, ?, ?, ?, ?, ?)";
	private static final String readAll = "SELECT * FROM cuentas";
	private static final String readAllTipoCuenta = "SELECT * FROM tipocuenta";
	private static final String get = "SELECT * FROM cuentas WHERE C_Usuario = ?";
	
	private PreparedStatement statement;
	
	@Override
	public ArrayList<Cuenta> traerListaCuentasUsuario(String nombreUsuario) {

		Connection conexion = null;
		ArrayList<Cuenta> lCuentas = new ArrayList<Cuenta>();

		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			statement = conexion.prepareStatement(get);
			statement.setString(1, nombreUsuario);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				
				Cuenta c = new Cuenta();
				
				c.setNroCuenta(Integer.parseInt(rs.getString("C_NroCuenta")));
				c.setNombreUsuario(rs.getString("C_Usuario"));
				c.setCbu(Integer.parseInt(rs.getString("C_CBU")));
				c.setFechaCreacion(LocalDate.parse(rs.getString("C_FechaCreacion")));
				c.setCodTipoCuenta(Integer.parseInt(rs.getString("C_CodTipoCuenta")));
				c.setSaldo(Float.parseFloat(rs.getString("C_Saldo")));
				c.setEstado(Integer.parseInt(rs.getString("C_Estado")));
			
				lCuentas.add(c);
				
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		//System.out.println(lCuentas);
		return lCuentas;
	}

	@Override
	public ArrayList<Cuenta> traerListaCuentas() {
		
		Connection conexion = null;
		ArrayList<Cuenta> lCuentas = new ArrayList<Cuenta>();

		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			statement = conexion.prepareStatement(readAll);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				
				Cuenta c = new Cuenta();
				
				c.setNroCuenta(Integer.parseInt(rs.getString("C_NroCuenta")));
				c.setNombreUsuario(rs.getString("C_Usuario"));
				c.setCbu(Integer.parseInt(rs.getString("C_CBU")));
				c.setFechaCreacion(LocalDate.parse(rs.getString("C_FechaCreacion")));
				c.setCodTipoCuenta(Integer.parseInt(rs.getString("C_CodTipoCuenta")));
				c.setSaldo(Float.parseFloat(rs.getString("C_Saldo")));
				c.setEstado(Integer.parseInt(rs.getString("C_Estado")));

				lCuentas.add(c);
				
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		//System.out.println(lCuentas);
		return lCuentas;
	}

	@Override
	public boolean modificarCuenta(Cuenta cuenta) {

		Connection conexion = null;
		boolean seModifico = false;
		
		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			CallableStatement cst = conexion.prepareCall("CALL SP_ModificarCuenta(?, ?)");
			cst.setString(1, Integer.toString(cuenta.getNroCuenta()));
			cst.setString(2, Float.toString(cuenta.getSaldo()));
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
	public boolean altaCuenta(Cuenta cuenta) {

		boolean isInsertExitoso = false;
		Connection conexion = null;
		try
		{
			conexion = Conexion.getConexion().getSQLConexion();
			statement = conexion.prepareStatement(insert);
			
			statement.setString(1, String.valueOf(cuenta.getNroCuenta()));
			statement.setString(2, cuenta.getNombreUsuario());
			statement.setString(3, String.valueOf(cuenta.getCbu()));
			statement.setString(4, String.valueOf(cuenta.getFechaCreacion()));
			statement.setString(5, String.valueOf(cuenta.getCodTipoCuenta()));
			statement.setString(6, String.valueOf(cuenta.getSaldo()));
			statement.setBoolean(7, true);
			
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
	public boolean bajaCuenta(int nroCuenta) {

		Connection conexion = null;
		boolean seElimino = false;
		
		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			CallableStatement cst = conexion.prepareCall("CALL SP_BajaCuenta(?)");
			cst.setString(1, Integer.toString(nroCuenta));
			cst.execute();
			
			if(cst.executeUpdate() > 0) {
				conexion.commit();
				seElimino = true;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return seElimino;
	}

	@Override
	public ArrayList<TipoDeCuenta> traerListaTipoDeCuenta() {
		
		Connection conexion = null;
		ArrayList<TipoDeCuenta> lTipoCuenta = new ArrayList<TipoDeCuenta>();

		try {
			
			conexion = Conexion.getConexion().getSQLConexion();
			statement = conexion.prepareStatement(readAllTipoCuenta);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				
				TipoDeCuenta tc = new TipoDeCuenta();
				
				tc.setNroTipoDeCuenta(Integer.parseInt(rs.getString("TC_NroTipoCuenta")));
				tc.setDescripcion(rs.getString("TC_Descripcion"));
			
				lTipoCuenta.add(tc);
				
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		//System.out.println(lTipoCuenta);
		return lTipoCuenta;
	}

}

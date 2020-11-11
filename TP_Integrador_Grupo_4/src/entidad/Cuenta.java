package entidad;

import java.time.LocalDate;

public class Cuenta {
	
	private int nroCuenta;
	private String nombreUsuario;
	private int cbu;
	private LocalDate fechaCreacion;
	private int codTipoCuenta;
	private float saldo;
	private int estado;
	
	public Cuenta() {
		
	}
	
	public Cuenta(int nroCuenta, String nombreUsuario, int cbu, LocalDate fechaCreacion, int codTipoCuenta, float saldo, int estado) {
		super();
		this.nroCuenta = nroCuenta;
		this.nombreUsuario = nombreUsuario;
		this.cbu = cbu;
		this.fechaCreacion = fechaCreacion;
		this.codTipoCuenta = codTipoCuenta;
		this.saldo = saldo;
		this.estado = estado;
	}

	public int getNroCuenta() {
		return nroCuenta;
	}

	public void setNroCuenta(int nroCuenta) {
		this.nroCuenta = nroCuenta;
	}

	public String getNombreUsuario() {
		return nombreUsuario;
	}

	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}

	public int getCbu() {
		return cbu;
	}

	public void setCbu(int cbu) {
		this.cbu = cbu;
	}

	public LocalDate getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(LocalDate fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public int getCodTipoCuenta() {
		return codTipoCuenta;
	}

	public void setCodTipoCuenta(int codTipoCuenta) {
		this.codTipoCuenta = codTipoCuenta;
	}

	public float getSaldo() {
		return saldo;
	}

	public void setSaldo(float saldo) {
		this.saldo = saldo;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cuenta other = (Cuenta) obj;
		if (cbu != other.cbu)
			return false;
		if (codTipoCuenta != other.codTipoCuenta)
			return false;
		if (fechaCreacion == null) {
			if (other.fechaCreacion != null)
				return false;
		} else if (!fechaCreacion.equals(other.fechaCreacion))
			return false;
		if (nombreUsuario == null) {
			if (other.nombreUsuario != null)
				return false;
		} else if (!nombreUsuario.equals(other.nombreUsuario))
			return false;
		if (nroCuenta != other.nroCuenta)
			return false;
		if (Float.floatToIntBits(saldo) != Float.floatToIntBits(other.saldo))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Cuenta [nroCuenta=" + nroCuenta + ", nombreUsuario=" + nombreUsuario + ", cbu=" + cbu
				+ ", fechaCreacion=" + fechaCreacion + ", codTipoCuenta=" + codTipoCuenta + ", saldo=" + saldo + "]";
	}

	

}

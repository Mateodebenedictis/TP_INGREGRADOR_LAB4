package entidad;

import java.util.Date;

public class CuotaPrestamo {
	
	private int nroPrestamo;
	private int nroCuota;
	private String nombreUsuario;
	private Date fecha;
	private float importe;
	private int codEstado;
	
	public CuotaPrestamo() {
		
	}

	public CuotaPrestamo(int nroPrestamo, int nroCuota, String nombreUsuario, Date fecha, float importe,
			int codEstado) {
		super();
		this.nroPrestamo = nroPrestamo;
		this.nroCuota = nroCuota;
		this.nombreUsuario = nombreUsuario;
		this.fecha = fecha;
		this.importe = importe;
		this.codEstado = codEstado;
	}

	public int getNroPrestamo() {
		return nroPrestamo;
	}

	public void setNroPrestamo(int nroPrestamo) {
		this.nroPrestamo = nroPrestamo;
	}

	public int getNroCuota() {
		return nroCuota;
	}

	public void setNroCuota(int nroCuota) {
		this.nroCuota = nroCuota;
	}

	public String getNombreUsuario() {
		return nombreUsuario;
	}

	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public float getImporte() {
		return importe;
	}

	public void setImporte(float importe) {
		this.importe = importe;
	}

	public int getCodEstado() {
		return codEstado;
	}

	public void setCodEstado(int codEstado) {
		this.codEstado = codEstado;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CuotaPrestamo other = (CuotaPrestamo) obj;
		if (codEstado != other.codEstado)
			return false;
		if (fecha == null) {
			if (other.fecha != null)
				return false;
		} else if (!fecha.equals(other.fecha))
			return false;
		if (Float.floatToIntBits(importe) != Float.floatToIntBits(other.importe))
			return false;
		if (nombreUsuario == null) {
			if (other.nombreUsuario != null)
				return false;
		} else if (!nombreUsuario.equals(other.nombreUsuario))
			return false;
		if (nroCuota != other.nroCuota)
			return false;
		if (nroPrestamo != other.nroPrestamo)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CuotaPrestamo [nroPrestamo=" + nroPrestamo + ", nroCuota=" + nroCuota + ", nombreUsuario="
				+ nombreUsuario + ", fecha=" + fecha + ", importe=" + importe + ", codEstado=" + codEstado + "]";
	}
	
	
}

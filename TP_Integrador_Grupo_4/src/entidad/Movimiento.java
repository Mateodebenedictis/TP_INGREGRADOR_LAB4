package entidad;

import java.util.Date;

public class Movimiento {
	
	private int nroMovimiento;
	private int nroCuenta;
	private Date fecha;
	private String detalle;
	private float importe;
	private String tipoMovimiento;
	private int cbuDestino;
	
	public Movimiento() {
		
	}
	
	public Movimiento(int nroMovimiento, int nroCuenta, Date fecha, String detalle, float importe,
			String tipoMovimiento, int cbuDestino) {
		super();
		this.nroMovimiento = nroMovimiento;
		this.nroCuenta = nroCuenta;
		this.fecha = fecha;
		this.detalle = detalle;
		this.importe = importe;
		this.tipoMovimiento = tipoMovimiento;
		this.cbuDestino = cbuDestino;
	}

	public int getNroMovimiento() {
		return nroMovimiento;
	}

	public void setNroMovimiento(int nroMovimiento) {
		this.nroMovimiento = nroMovimiento;
	}

	public int getNroCuenta() {
		return nroCuenta;
	}

	public void setNroCuenta(int nroCuenta) {
		this.nroCuenta = nroCuenta;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}

	public float getImporte() {
		return importe;
	}

	public void setImporte(float importe) {
		this.importe = importe;
	}

	public String getTipoMovimiento() {
		return tipoMovimiento;
	}

	public void setTipoMovimiento(String tipoMovimiento) {
		this.tipoMovimiento = tipoMovimiento;
	}

	public int getCbuDestino() {
		return cbuDestino;
	}

	public void setCbuDestino(int cbuDestino) {
		this.cbuDestino = cbuDestino;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Movimiento other = (Movimiento) obj;
		if (cbuDestino != other.cbuDestino)
			return false;
		if (detalle == null) {
			if (other.detalle != null)
				return false;
		} else if (!detalle.equals(other.detalle))
			return false;
		if (fecha == null) {
			if (other.fecha != null)
				return false;
		} else if (!fecha.equals(other.fecha))
			return false;
		if (Float.floatToIntBits(importe) != Float.floatToIntBits(other.importe))
			return false;
		if (nroCuenta != other.nroCuenta)
			return false;
		if (nroMovimiento != other.nroMovimiento)
			return false;
		if (tipoMovimiento == null) {
			if (other.tipoMovimiento != null)
				return false;
		} else if (!tipoMovimiento.equals(other.tipoMovimiento))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Movimiento [nroMovimiento=" + nroMovimiento + ", nroCuenta=" + nroCuenta + ", fecha=" + fecha
				+ ", detalle=" + detalle + ", importe=" + importe + ", tipoMovimiento=" + tipoMovimiento
				+ ", cbuDestino=" + cbuDestino + "]";
	}
	
	
	
}

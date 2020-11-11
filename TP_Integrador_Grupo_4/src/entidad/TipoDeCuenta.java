package entidad;

public class TipoDeCuenta {
	
	private int nroTipoDeCuenta;
	private String descripcion;
	
	public TipoDeCuenta() {
		
	}

	public TipoDeCuenta(int nroTipoDeCuenta, String descripcion) {
		super();
		this.nroTipoDeCuenta = nroTipoDeCuenta;
		this.descripcion = descripcion;
	}

	public int getNroTipoDeCuenta() {
		return nroTipoDeCuenta;
	}

	public void setNroTipoDeCuenta(int nroTipoDeCuenta) {
		this.nroTipoDeCuenta = nroTipoDeCuenta;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TipoDeCuenta other = (TipoDeCuenta) obj;
		if (descripcion == null) {
			if (other.descripcion != null)
				return false;
		} else if (!descripcion.equals(other.descripcion))
			return false;
		if (nroTipoDeCuenta != other.nroTipoDeCuenta)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return descripcion;
	}
	
	
}

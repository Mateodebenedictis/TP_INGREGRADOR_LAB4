package entidad;

public class Prestamo {
		
	private int nroPrestamo;
	private String nombreUsuario;
	private float importeConIntereses;
	private float importePedido;
	private int plazoMeses;
	private float montoMensual;
	private int cantidadCuotas;
	private int codEstadoPrestamo;
	
	public Prestamo() {
		
	}

	public Prestamo(int nroPrestamo, String nombreUsuario, float importeConIntereses, float importePedido,
			int plazoMeses, float montoMensual, int cantidadCuotas, int codEstadoPrestamo) {
		super();
		this.nroPrestamo = nroPrestamo;
		this.nombreUsuario = nombreUsuario;
		this.importeConIntereses = importeConIntereses;
		this.importePedido = importePedido;
		this.plazoMeses = plazoMeses;
		this.montoMensual = montoMensual;
		this.cantidadCuotas = cantidadCuotas;
		this.codEstadoPrestamo = codEstadoPrestamo;
	}

	public int getNroPrestamo() {
		return nroPrestamo;
	}

	public void setNroPrestamo(int nroPrestamo) {
		this.nroPrestamo = nroPrestamo;
	}

	public String getNombreUsuario() {
		return nombreUsuario;
	}

	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}

	public float getImporteConIntereses() {
		return importeConIntereses;
	}

	public void setImporteConIntereses(float importeConIntereses) {
		this.importeConIntereses = importeConIntereses;
	}

	public float getImportePedido() {
		return importePedido;
	}

	public void setImportePedido(float importePedido) {
		this.importePedido = importePedido;
	}

	public int getPlazoMeses() {
		return plazoMeses;
	}

	public void setPlazoMeses(int plazoMeses) {
		this.plazoMeses = plazoMeses;
	}

	public float getMontoMensual() {
		return montoMensual;
	}

	public void setMontoMensual(float montoMensual) {
		this.montoMensual = montoMensual;
	}

	public int getCantidadCuotas() {
		return cantidadCuotas;
	}

	public void setCantidadCuotas(int cantidadCuotas) {
		this.cantidadCuotas = cantidadCuotas;
	}

	public int getCodEstadoPrestamo() {
		return codEstadoPrestamo;
	}

	public void setCodEstadoPrestamo(int codEstadoPrestamo) {
		this.codEstadoPrestamo = codEstadoPrestamo;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Prestamo other = (Prestamo) obj;
		if (cantidadCuotas != other.cantidadCuotas)
			return false;
		if (codEstadoPrestamo != other.codEstadoPrestamo)
			return false;
		if (Float.floatToIntBits(importeConIntereses) != Float.floatToIntBits(other.importeConIntereses))
			return false;
		if (Float.floatToIntBits(importePedido) != Float.floatToIntBits(other.importePedido))
			return false;
		if (Float.floatToIntBits(montoMensual) != Float.floatToIntBits(other.montoMensual))
			return false;
		if (nombreUsuario == null) {
			if (other.nombreUsuario != null)
				return false;
		} else if (!nombreUsuario.equals(other.nombreUsuario))
			return false;
		if (nroPrestamo != other.nroPrestamo)
			return false;
		if (plazoMeses != other.plazoMeses)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Prestamo [nroPrestamo=" + nroPrestamo + ", nombreUsuario=" + nombreUsuario + ", importeConIntereses="
				+ importeConIntereses + ", importePedido=" + importePedido + ", plazoMeses=" + plazoMeses
				+ ", montoMensual=" + montoMensual + ", cantidadCuotas=" + cantidadCuotas + ", codEstadoPrestamo="
				+ codEstadoPrestamo + "]";
	}
	
}

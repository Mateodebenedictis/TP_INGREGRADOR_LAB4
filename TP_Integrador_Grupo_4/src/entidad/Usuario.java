package entidad;

import java.time.LocalDate;

public class Usuario {
	
	private String nombreUsuario;
	private String contraseña;
	private int codTipoUsuario;
	private int dni;
	private int cuil;
	private String sexo;
	private String nacionalidad;
	private LocalDate fechaNacimiento;
	private String direccion;
	private String localidad;
	private String provincia;
	private String email;
	private int telefono;
	private String nombre;
	private String apellido;
	private int estado;
	
	public Usuario() {
		
	}

	public Usuario(String nombreUsuario, String contraseña, int codTipoUsuario, int dni, int cuil, String sexo,
			String nacionalidad, LocalDate fechaNacimiento, String direccion, String localidad, String provincia,
			String email, int telefono, String nombre, String apellido, int estado) {
		super();
		this.nombreUsuario = nombreUsuario;
		this.contraseña = contraseña;
		this.codTipoUsuario = codTipoUsuario;
		this.dni = dni;
		this.cuil = cuil;
		this.sexo = sexo;
		this.nacionalidad = nacionalidad;
		this.fechaNacimiento = fechaNacimiento;
		this.direccion = direccion;
		this.localidad = localidad;
		this.provincia = provincia;
		this.email = email;
		this.telefono = telefono;
		this.nombre = nombre;
		this.apellido = apellido;
		this.estado = estado;
	}

	public String getNombreUsuario() {
		return nombreUsuario;
	}

	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}

	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	public int getCodTipoUsuario() {
		return codTipoUsuario;
	}

	public void setCodTipoUsuario(int codTipoUsuario) {
		this.codTipoUsuario = codTipoUsuario;
	}

	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public int getCuil() {
		return cuil;
	}

	public void setCuil(int cuil) {
		this.cuil = cuil;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getNacionalidad() {
		return nacionalidad;
	}

	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	public LocalDate getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(LocalDate fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getLocalidad() {
		return localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
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
		Usuario other = (Usuario) obj;
		if (apellido == null) {
			if (other.apellido != null)
				return false;
		} else if (!apellido.equals(other.apellido))
			return false;
		if (codTipoUsuario != other.codTipoUsuario)
			return false;
		if (contraseña == null) {
			if (other.contraseña != null)
				return false;
		} else if (!contraseña.equals(other.contraseña))
			return false;
		if (cuil != other.cuil)
			return false;
		if (direccion == null) {
			if (other.direccion != null)
				return false;
		} else if (!direccion.equals(other.direccion))
			return false;
		if (dni != other.dni)
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (fechaNacimiento == null) {
			if (other.fechaNacimiento != null)
				return false;
		} else if (!fechaNacimiento.equals(other.fechaNacimiento))
			return false;
		if (localidad == null) {
			if (other.localidad != null)
				return false;
		} else if (!localidad.equals(other.localidad))
			return false;
		if (nacionalidad == null) {
			if (other.nacionalidad != null)
				return false;
		} else if (!nacionalidad.equals(other.nacionalidad))
			return false;
		if (nombre == null) {
			if (other.nombre != null)
				return false;
		} else if (!nombre.equals(other.nombre))
			return false;
		if (nombreUsuario == null) {
			if (other.nombreUsuario != null)
				return false;
		} else if (!nombreUsuario.equals(other.nombreUsuario))
			return false;
		if (provincia == null) {
			if (other.provincia != null)
				return false;
		} else if (!provincia.equals(other.provincia))
			return false;
		if (sexo == null) {
			if (other.sexo != null)
				return false;
		} else if (!sexo.equals(other.sexo))
			return false;
		if (telefono != other.telefono)
			return false;
		if (estado != other.estado)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Usuario [nombreUsuario=" + nombreUsuario + ", contraseña=" + contraseña + ", codTipoUsuario="
				+ codTipoUsuario + ", dni=" + dni + ", cuil=" + cuil + ", sexo=" + sexo + ", nacionalidad="
				+ nacionalidad + ", fechaNacimiento=" + fechaNacimiento + ", direccion=" + direccion + ", localidad="
				+ localidad + ", provincia=" + provincia + ", email=" + email + ", telefono=" + telefono + ", nombre="
				+ nombre + ", apellido=" + apellido + "]";
	}
	
	
	
}

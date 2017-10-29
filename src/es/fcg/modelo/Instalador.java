package es.fcg.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="instaladores")

public class Instalador implements Serializable {
	
	@Id
	@GeneratedValue
	@Column(name="id_instaladores")
	int id_Instalador;
	
	@Column(name="nombre")
	String nombre;
	
	@Column(name="n_carnet")
	int n_Canet;
	
	
	public Instalador() {
		
	}


	public int getId_Instalador() {
		return id_Instalador;
	}


	public void setId_Instalador(int id_Instalador) {
		this.id_Instalador = id_Instalador;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public int getN_Canet() {
		return n_Canet;
	}


	public void setN_Canet(int n_Canet) {
		this.n_Canet = n_Canet;
	}
	
}

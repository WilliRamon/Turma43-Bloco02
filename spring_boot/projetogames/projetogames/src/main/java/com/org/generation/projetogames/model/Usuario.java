package com.org.generation.projetogames.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "tb_usuario")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotBlank(message = "O atributo NOME não pode ser vazio")
	@Size(min = 5, max = 50, message = "O atributo NOME exige no minimo 5 caracteres e no máximo 50")
	private String nome;
	
	@NotBlank(message = "O atributo USUARIO não pode ser vazio")
	@Size(min = 5, max = 30, message = "O atributo USUARIO exige no minimo 5 caracteres e no máximo 30")
	private String usuario;
	
	@NotBlank(message = "O atributo SENHA não pode ser vazio")
	@Size(min = 8, message = "O atributo SENHA exige no minimo 8 caracteres")
	private String senha;
	
	
	private Date anoNasc;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Date getAnoNasc() {
		return anoNasc;
	}

	public void setAnoNasc(Date anoNasc) {
		this.anoNasc = anoNasc;
	}
	
	
}

package com.org.genertion.blog_pessoal02.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tb_usuario")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull(message = "O atributo NOME não pode ser vázio")
	@Size(min = 2, max = 50, message = "O atributo NOME exige no minimo 2 caracteres e no máximo 50")
	private String nome;
	
	@NotNull(message = "O atributo USUARIO não pode ser vázio")
	@Size(min = 5, max = 100, message = "O atributo USUARIO exige no minimo 5 caracteres e no máximo 100")
	private String usuario;
	
	@NotNull(message = "O atributo SENHA não pode ser vázio")
	@Size(min = 8, max = 100, message = "O atributo USUARIO exige no minimo 8 caracteres e no máximo 100")
	private String senha;
	
	@Size(max = 255, message = "O atributo FOTO permite no máximo 100 caracteres")
	private String foto;
	
	@OneToMany(mappedBy = "usuario", cascade = CascadeType.REMOVE)
	@JsonIgnoreProperties("usuario")
	private List<Postagem> postagem;

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

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public List<Postagem> getPostagem() {
		return postagem;
	}

	public void setPostagem(List<Postagem> postagem) {
		this.postagem = postagem;
	}
}

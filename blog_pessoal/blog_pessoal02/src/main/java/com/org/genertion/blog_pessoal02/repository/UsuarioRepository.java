package com.org.genertion.blog_pessoal02.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.org.genertion.blog_pessoal02.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{

	public Optional<Usuario> findByUsuario(String usuario);
}

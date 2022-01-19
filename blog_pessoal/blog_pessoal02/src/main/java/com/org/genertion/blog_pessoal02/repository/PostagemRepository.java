package com.org.genertion.blog_pessoal02.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.org.genertion.blog_pessoal02.model.Postagem;

@Repository
public interface PostagemRepository extends JpaRepository<Postagem, Long>{

	//SELECT * FROM tb_postagem where titulo like %palavra%
	public List<Postagem> findAllByTituloContainingIgnoreCase (String titulo);
}

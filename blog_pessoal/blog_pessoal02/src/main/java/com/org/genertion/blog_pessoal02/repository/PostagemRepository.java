package com.org.genertion.blog_pessoal02.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.org.genertion.blog_pessoal02.model.Postagem;

@Repository
public interface PostagemRepository extends JpaRepository<Postagem, Long>{

	//Postagem findById(long id);
}

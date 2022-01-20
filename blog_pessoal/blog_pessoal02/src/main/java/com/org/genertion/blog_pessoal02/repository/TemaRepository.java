package com.org.genertion.blog_pessoal02.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.org.genertion.blog_pessoal02.model.Tema;

@Repository
public interface TemaRepository extends JpaRepository<Tema, Long>{

	public List<Tema> findAllByDescicaoContainingIgnoreCase(String descricao);
}
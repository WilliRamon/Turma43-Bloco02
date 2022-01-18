package com.generation.aplicacao02.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/agenda")
public class Aplicacao02Controller {
	@GetMapping
	public String aplicacao02() {
		return "Para essa semana, estou planejando estudar muuuito sobre spring boot e terminar a semana sabendo manipular muito bem essa ferramenta\nAlém disso, quero aperfeiçoar nosso PI.";
	}
}

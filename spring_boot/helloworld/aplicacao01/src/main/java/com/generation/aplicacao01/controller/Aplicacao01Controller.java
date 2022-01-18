package com.generation.aplicacao01.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bsm")
public class Aplicacao01Controller {
	@GetMapping
	public String aplicacao01() {
		return "Com certeza minha primeira aplicação foi marcada por muita PERCISTÊNCIA e ATENÇÃO AOS DETALHES";
	}
}

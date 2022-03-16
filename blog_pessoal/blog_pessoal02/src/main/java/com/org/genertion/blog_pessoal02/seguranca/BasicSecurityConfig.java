package com.org.genertion.blog_pessoal02.seguranca;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Classe BasicSecurityConfig
 * 
 * Esta classe é responsável por habilitar a segurança básica da aplicação e o login
 * na aplicação.
 * 
 * Para habilitar a segurança HTTP no Spring, precisamos extender (herdar) 
 * a Classe WebSecurityConfigurerAdapter para fornecer uma configuração padrão 
 * no método configure (HttpSecurity http)
 * 
 * A configuração padrão garante que qualquer requisição enviada para a API 
 * seja autenticada com login baseado em formulário ou autenticação via Browser.
 * 
 * Para personalizar a autenticação utilizaremos a sobrecarga dos métodos da
 * Classe WebSecurityConfigurerAdapter
 * 
 */

/**
 *  A annotation @EnableWebSecurity: habilita a configuração de segurança padrão 
 *  do Spring Security na nossa api.
 */

@EnableWebSecurity 
public class BasicSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private UserDetailsService userDetailsService; //Estou dizendo que os dados que seram usado para login estão no banco de dados
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{// <- pop-ap de usuario e senha
		auth.userDetailsService(userDetailsService); //Essas informações viram do banco de dados
		
		//Estou dizendo para o auth que a estrutura de objeto que ele vai esperar é e-mail, usuario ...
		auth.inMemoryAuthentication()
		
			.withUser("root")
			.password(passwordEncoder().encode("root"))
			.authorities("ROLE_USER");
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception{ //Denifir as requisições padroes da security. O que o usuario pode fazer ou não pode
		http.authorizeHttpRequests()
		.antMatchers("/**").permitAll()
		.antMatchers("/usuario/logar").permitAll()
		.antMatchers("/usuario/cadastrar").permitAll() //Liberar o findAll para a próxima atividade
		.antMatchers(HttpMethod.OPTIONS).permitAll()
		.anyRequest().authenticated()
		.and().httpBasic()
		.and().sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
		.and().cors() //Permite que outra aplicação em outro servidor consiga acessar nossa aplicação
		.and().csrf().disable();
		}
}

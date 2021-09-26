package br.com.ps13si.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.ps13si.model.CadastroModel;

public interface CadastroRepository extends JpaRepository<CadastroModel, Long> {
	
	public CadastroModel findByEmailAndSenha(String email, String senha);
	
}
package br.com.ps13si.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "TB_CADASTRO")
public class CadastroModel {

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CADASTRO_SEQ")
	@SequenceGenerator(name = "CADASTRO_SEQ", sequenceName = "CADASTRO_SEQ", allocationSize = 1)
	private long id;
	@Column(name = "NOME")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 50, message = "NOME deve conter entre 2 e 50 caracteres")
	private String nome;
	@Column(name = "SENHA")
	@NotNull(message = "Senha obrigatória")
	@Size(min = 2, max = 50, message = "SENHA deve conter entre 2 e 50 caracteres")
	private String senha;
	@Column(name = "EMAIL")
	@NotNull(message = "E-mail obrigatório")
	@Size(min = 5, max = 70, message = "EMAIL deve conter entre 5 e 70 caracteres")
	private String email;
	@Column(name = "CPF")
	@NotNull(message = "CPF obrigatório")
	@Size(min = 11, max = 11, message = "CPF deve conter 11 caracteres")
	private String cpf;

	public CadastroModel() {
	}

	public CadastroModel(long id, String nome, String senha, String email, String cpf) {
		this.id = id;
		this.nome = nome;
		this.senha = senha;
		this.email = email;
		this.cpf = cpf;
	}

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

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

}

package br.com.ps13si.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

@Entity
@Table(name = "TB_BOOTCAMP")
public class BootcampModel {

	@Id
	@Column(name = "ID_BOOTCAMP")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BOOTCAMP_SEQ")
	@SequenceGenerator(name = "BOOTCAMP_SEQ", sequenceName = "BOOTCAMP_SEQ", allocationSize = 1)
	private long id_bootcamp;
	@Column(name = "NOME_BOOTCAMP")
	@NotNull(message = "NOME DO BOOTCAMP obrigatório")
	@Size(min = 2, max = 50, message = "NOME DO BOOTCAMP deve conter entre 2 e 50 caracteres")
	private String nome_bootcamp;
	@Column(name = "EMPRESA_BOOTCAMP")
	@NotNull(message = "NOME DA EMPRESA obrigatório")
	@Size(min = 2, max = 50, message = "NOME DA EMPRESA deve conter entre 2 e 50 caracteres")
	private String empresa_bootcamp;
	@Column(name = "NUM_PARTICIPANTES_BOOTCAMP")
	@NotNull(message = "NÚMERO DE PARTICIPANTES obrigatório")
	@DecimalMin(value = "1", message = "NÚMERO DE PARTICIPANTES deve ser acima de 1")
	private int num_participantes_bootcamp;
	@Column(name = "PRECO_BOOTCAMP")
	@NotNull(message = "PREÇO POR PESSOA obrigatório")
	@DecimalMin(value = "0.01", message = "PREÇO POR PESSOA deve ser acima de 0.01")
	@NumberFormat(style = Style.CURRENCY)
	private BigDecimal preco_bootcamp;
	@Column(name = "PROFS_BOOTCAMP")
	@NotNull(message = "PROFESSORES obrigatório")
	@Size(min = 5, max = 250, message = "PROFESSORES deve conter entre 5 e 250 caracteres")
	private String profs_bootcamp;
	@Column(name = "LOCAL_BOOTCAMP")
	@NotNull(message = "LOCAL obrigatório")
	@Size(min = 5, max = 150, message = "LOCAL deve conter entre 5 e 150 caracteres")
	private String local_bootcamp;
	@Column(name = "DETALHES_BOOTCAMP")
	@NotNull(message = "DETALHES obrigatório")
	@Size(min = 5, max = 250, message = "DETALHES deve conter entre 5 e 250 caracteres")
	private String detalhes_bootcamp;

	public BootcampModel() {
	}

	public BootcampModel(long id_bootcamp, String nome_bootcamp, String empresa_bootcamp,
			int num_participantes_bootcamp, BigDecimal preco_bootcamp, String profs_bootcamp, String local_bootcamp,
			String detalhes_bootcamp) {
		this.id_bootcamp = id_bootcamp;
		this.nome_bootcamp = nome_bootcamp;
		this.empresa_bootcamp = empresa_bootcamp;
		this.num_participantes_bootcamp = num_participantes_bootcamp;
		this.preco_bootcamp = preco_bootcamp;
		this.profs_bootcamp = profs_bootcamp;
		this.local_bootcamp = local_bootcamp;
		this.detalhes_bootcamp = detalhes_bootcamp;
	}

	public long getId_bootcamp() {
		return id_bootcamp;
	}

	public void setId_bootcamp(long id_bootcamp) {
		this.id_bootcamp = id_bootcamp;
	}

	public String getNome_bootcamp() {
		return nome_bootcamp;
	}

	public void setNome_bootcamp(String nome_bootcamp) {
		this.nome_bootcamp = nome_bootcamp;
	}

	public String getEmpresa_bootcamp() {
		return empresa_bootcamp;
	}

	public void setEmpresa_bootcamp(String empresa_bootcamp) {
		this.empresa_bootcamp = empresa_bootcamp;
	}

	public int getNum_participantes_bootcamp() {
		return num_participantes_bootcamp;
	}

	public void setNum_participantes_bootcamp(int num_participantes_bootcamp) {
		this.num_participantes_bootcamp = num_participantes_bootcamp;
	}

	public BigDecimal getPreco_bootcamp() {
		return preco_bootcamp;
	}

	public void setPreco_bootcamp(BigDecimal preco_bootcamp) {
		this.preco_bootcamp = preco_bootcamp;
	}

	public String getProfs_bootcamp() {
		return profs_bootcamp;
	}

	public void setProfs_bootcamp(String profs_bootcamp) {
		this.profs_bootcamp = profs_bootcamp;
	}

	public String getLocal_bootcamp() {
		return local_bootcamp;
	}

	public void setLocal_bootcamp(String local_bootcamp) {
		this.local_bootcamp = local_bootcamp;
	}

	public String getDetalhes_bootcamp() {
		return detalhes_bootcamp;
	}

	public void setDetalhes_bootcamp(String detalhes_bootcamp) {
		this.detalhes_bootcamp = detalhes_bootcamp;
	}

}
package br.com.facaobem.modelo;

public class Colaborador {

	private int id;
	private String nome;
	private String email;
	private String senha;
	private String telefone;
	private String celular;
	private String logradouro;
	private String estado;
	private String cidade;
	private String cpf;
	private String rg;
	private String experiencia;
	private String sobreExperiencia;

	/* Construtor sem argumentos p/ uso da EL */
	public Colaborador() {
	}

	/* Getters e setters são extremamente imoprtantes para o uso da JSTL e EL */
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getExperiencia() {
		return experiencia;
	}

	public void setExperiencia(String experiencia) {
		this.experiencia = experiencia;
	}

	public String getSobreExperiencia() {
		return sobreExperiencia;
	}

	public void setSobreexperiencia(String sobreexperiencia) {
		this.sobreExperiencia = sobreexperiencia;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

}

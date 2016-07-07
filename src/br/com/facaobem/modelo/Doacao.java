package br.com.facaobem.modelo;

public class Doacao {

	private int cod;
	private String nomeDoador;
	private String emailDoador;
	private String telefoneDoador;
	private String logradouroDoador;
	private String estadoDoador;
	private String cidadeDoador;
	private String cpfDoador;
	private String rgDoador;
	private String tipo;
	private int quantidade;
	private String mensagemDoador;

	/* Construtor sem argumentos para utilização da EL */
	public Doacao() {
	}

	/* Getters e setters são extremamente imoprtantes para o uso da JSTL e EL */
	public int getCod() {
		return cod;
	}

	public void setCod(int cod) {
		this.cod = cod;
	}

	public String getNomeDoador() {
		return nomeDoador;
	}

	public void setNomeDoador(String nomeDoador) {
		this.nomeDoador = nomeDoador;
	}

	public String getEmailDoador() {
		return emailDoador;
	}

	public void setEmailDoador(String emailDoador) {
		this.emailDoador = emailDoador;
	}

	public String getTelefoneDoador() {
		return telefoneDoador;
	}

	public void setTelefoneDoador(String telefoneDoador) {
		this.telefoneDoador = telefoneDoador;
	}

	public String getLogradouroDoador() {
		return logradouroDoador;
	}

	public void setLogradouroDoador(String logradouroDoador) {
		this.logradouroDoador = logradouroDoador;
	}

	public String getEstadoDoador() {
		return estadoDoador;
	}

	public void setEstadoDoador(String estadoDoador) {
		this.estadoDoador = estadoDoador;
	}

	public String getCidadeDoador() {
		return cidadeDoador;
	}

	public void setCidadeDoador(String cidadeDoador) {
		this.cidadeDoador = cidadeDoador;
	}

	public String getCpfDoador() {
		return cpfDoador;
	}

	public void setCpfDoador(String cpfDoador) {
		this.cpfDoador = cpfDoador;
	}

	public String getRgDoador() {
		return rgDoador;
	}

	public void setRgDoador(String rgDoador) {
		this.rgDoador = rgDoador;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public String getMensagemDoador() {
		return mensagemDoador;
	}

	public void setMensagemDoador(String mensagemDoador) {
		this.mensagemDoador = mensagemDoador;
	}

}

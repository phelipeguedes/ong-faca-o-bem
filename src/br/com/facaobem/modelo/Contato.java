package br.com.facaobem.modelo;

public class Contato {

	private int codigo;
	private String nome;
	private String tipoDaPessoa;
	private String telefone;
	private String email;

	public Contato() {
		// Sem argumentos
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTipoDaPessoa() {
		return tipoDaPessoa;
	}

	public void setTipoDaPessoa(String tipoDaPessoa) {
		this.tipoDaPessoa = tipoDaPessoa;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}

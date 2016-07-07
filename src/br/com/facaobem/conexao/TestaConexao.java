package br.com.facaobem.conexao;

import java.sql.SQLException;

public class TestaConexao {
	public static void main(String[] args) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		System.out.println(Conexao.verificaConexao());
	}
	
}

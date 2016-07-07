package br.com.facaobem.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	//Cria conex�o
	public static Connection obterConexao()
			throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
		String url = "jdbc:mysql://localhost/faca_o_bem";
		String usuario = "root";
		String senha = "";
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conexao = null;		
		
		conexao = DriverManager.getConnection(url, usuario, senha);
		
		return conexao;
	}
	
	//Testa a conex�o
	public static String verificaConexao()
			throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		if (obterConexao() != null) {
			return "Conectou com sucesso!";
		}
		return "N�o deu!";
	}
	
	//Fechando a conex�o
	public static void fecharConexao(Connection conexao) throws SQLException{
		if(conexao != null){
			conexao.close();
		}		
	}
}

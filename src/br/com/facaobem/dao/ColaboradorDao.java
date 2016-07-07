package br.com.facaobem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import br.com.facaobem.conexao.Conexao;
import br.com.facaobem.modelo.Colaborador;


public class ColaboradorDao {
	
	/* Cadastra um colaborador (novo membro) na ONG */
	public static void cadastra(Colaborador colaborador) throws SQLException, InstantiationException, 
	IllegalAccessException, ClassNotFoundException{
	
		Connection conexao = Conexao.obterConexao(); 
		String sql = "INSERT INTO colaboradores (nome, email, senha, telefone, celular, logradouro, estado, cidade, cpf, rg, experiencia, sobre_experiencia)"
				+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
		
		try {
			PreparedStatement pst = conexao.prepareStatement(sql);
			//pst.setInt(1, administrador.getId()); id é auto_increment
			pst.setString(1, colaborador.getNome());
			pst.setString(2, colaborador.getEmail());
			pst.setString(3, colaborador.getSenha());
			pst.setString(4, colaborador.getTelefone());
			pst.setString(5, colaborador.getCelular());
			pst.setString(6, colaborador.getLogradouro());
			pst.setString(7, colaborador.getEstado());
			pst.setString(8, colaborador.getCidade());
			pst.setString(9, colaborador.getCpf());
			pst.setString(10, colaborador.getRg());
			pst.setString(11, colaborador.getExperiencia());
			pst.setString(12, colaborador.getSobreExperiencia());
			pst.execute();
			pst.close();
		} catch (SQLException e) {
			System.out.println("Erro no cadastro! "+ e.getMessage());
		}
		
	}
	
	public List<Colaborador> getLista() throws SQLException, InstantiationException,
	IllegalAccessException, ClassNotFoundException
	{
		Connection conexao = Conexao.obterConexao();
		List<Colaborador> colaboradores = new ArrayList<>();
		
		String sql = "SELECT *FROM colaboradores";
		
		PreparedStatement pst = conexao.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();		
		while(rs.next()){
			//Criando o objeto
			Colaborador colaborador = new Colaborador();
			colaborador.setId(rs.getInt(1));
			colaborador.setNome(rs.getString("nome"));
			colaborador.setEmail(rs.getString("email"));
			colaborador.setSenha(rs.getString("senha"));
			colaborador.setTelefone(rs.getString("telefone"));
			colaborador.setCelular(rs.getString("celular"));
			colaborador.setLogradouro(rs.getString("logradouro"));
			colaborador.setEstado(rs.getString("estado"));
			colaborador.setCidade(rs.getString("cidade"));
			colaborador.setCpf(rs.getString("cpf"));
			colaborador.setRg(rs.getString("rg"));
			colaborador.setExperiencia(rs.getString("experiencia"));
			colaborador.setSobreexperiencia(rs.getString("sobre_experiencia"));
			
			colaboradores.add(colaborador);
		}
		
		pst.close();
		rs.close();
		return colaboradores;
	}
	
	/* Login: consulta o banco em busca do usuário e senha  */
	public static Colaborador autenticar(String email, String senha) throws SQLException, InstantiationException, 
	IllegalAccessException, ClassNotFoundException{
	
		Connection conexao = Conexao.obterConexao(); 
		Colaborador colaborador = null;		
		String sql = "SELECT *FROM colaboradores WHERE email = ? AND senha = ? ";		
				
		PreparedStatement pst = conexao.prepareStatement(sql);
		pst.setString(1, email);
		pst.setString(2, senha);
		
		ResultSet rs = pst.executeQuery();
		if(rs.next()){
			colaborador = new Colaborador();
			colaborador.setId(rs.getInt("id"));
			colaborador.setNome(rs.getString("nome"));
			colaborador.setEmail(rs.getString("email"));
			colaborador.setSenha(rs.getString("senha"));
			colaborador.setTelefone(rs.getString("telefone"));
			colaborador.setCelular(rs.getString("celular"));
			colaborador.setLogradouro(rs.getString("logradouro"));
			colaborador.setEstado(rs.getString("estado"));
			colaborador.setCidade(rs.getString("cidade"));
			colaborador.setCpf(rs.getString("cpf"));
			colaborador.setRg(rs.getString("rg"));
			colaborador.setExperiencia(rs.getString("experiencia"));
			colaborador.setSobreexperiencia(rs.getString("sobre_experiencia"));
		}
		
		Conexao.fecharConexao(conexao);
		return colaborador;
	}
	
}

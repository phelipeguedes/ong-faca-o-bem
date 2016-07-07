package br.com.facaobem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.facaobem.conexao.Conexao;
import br.com.facaobem.modelo.Doacao;

public class DoacaoDao {
	
	/* Cadastra doações */
	public static void cadastraDoacao(Doacao doacao) throws InstantiationException, IllegalAccessException,
	ClassNotFoundException, SQLException{
	
		Connection conexao = Conexao.obterConexao();
		
		String sql = "INSERT INTO doacoes (nome, email, telefone, logradouro, estado, cidade, cpf, rg, tipo, quantidade, mensagem)"
					  + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pst = conexao.prepareStatement(sql);
		pst.setString(1, doacao.getNomeDoador());
		pst.setString(2, doacao.getEmailDoador());
		pst.setString(3, doacao.getTelefoneDoador());
		pst.setString(4, doacao.getLogradouroDoador());
		pst.setString(5, doacao.getEstadoDoador());
		pst.setString(6, doacao.getCidadeDoador());
		pst.setString(7, doacao.getCpfDoador());
		pst.setString(8, doacao.getRgDoador());
		pst.setString(9, doacao.getTipo());
		pst.setInt(10, doacao.getQuantidade());
		pst.setString(11, doacao.getMensagemDoador());
		
		pst.execute();
		pst.close();	
	}
	
	public List<Doacao> getLista() throws InstantiationException, IllegalAccessException, 
	ClassNotFoundException, SQLException{
		
		Connection conexao = Conexao.obterConexao();
		List<Doacao> doacoes = new ArrayList<>();
		
		String sql = "SELECT *FROM doacoes";
		
		PreparedStatement pst = conexao.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			//Criando o objeto
			Doacao doacao = new Doacao();
			doacao.setCod(rs.getInt(1));
			doacao.setNomeDoador(rs.getString("nome"));
			doacao.setEmailDoador(rs.getString("email"));
			doacao.setTelefoneDoador(rs.getString("telefone"));
			doacao.setLogradouroDoador(rs.getString("logradouro"));
			doacao.setEstadoDoador(rs.getString("estado"));
			doacao.setCidadeDoador(rs.getString("cidade"));
			doacao.setCpfDoador(rs.getString("cpf"));
			doacao.setRgDoador(rs.getString("rg"));
			doacao.setTipo(rs.getString("tipo"));
			doacao.setQuantidade(rs.getInt("quantidade"));
			doacao.setMensagemDoador(rs.getString("mensagem"));
			
			doacoes.add(doacao);		
		}
			pst.close();
			rs.close();
			return doacoes;
	}
	
	
}

package br.com.facaobem.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.facaobem.conexao.Conexao;
import br.com.facaobem.modelo.Contato;

/* Apenas para teste, esta classe obtém a conexão através da herança */
public class ContatoDao extends Conexao {

	public List<Contato> getLista() {
		List<Contato> contatos = new ArrayList<>();

		String sql = "SELECT *FROM contatos";
		try {
			PreparedStatement pst = obterConexao().prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				// Monta o objeto
				Contato contato = new Contato();
				contato.setCodigo(rs.getInt(1));
				contato.setNome(rs.getString("nome"));
				contato.setTipoDaPessoa(rs.getString("pessoa"));
				contato.setTelefone(rs.getString("telefone"));
				contato.setEmail(rs.getString("email"));

				contatos.add(contato);
			}
			pst.close();
			rs.close();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			System.out.println("Erro: " + e.getMessage());
		}
		return contatos;
	}

}

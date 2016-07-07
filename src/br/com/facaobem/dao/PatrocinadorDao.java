package br.com.facaobem.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.facaobem.conexao.Conexao;
import br.com.facaobem.modelo.Patrocinador;

/* Apenas para teste, esta classe obtém a conexão através da herança */
public class PatrocinadorDao extends Conexao {

	public List<Patrocinador> getLista() {
		List<Patrocinador> patrocinadores = new ArrayList<>();

		String sql = "SELECT *FROM patrocinadores";
		try {
			PreparedStatement pst = obterConexao().prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				// Monta o objeto
				Patrocinador patrocinador = new Patrocinador();
				patrocinador.setCodigo(rs.getInt(1));
				patrocinador.setNome(rs.getString("nome"));
				patrocinador.setCnpj(rs.getString("cnpj"));
				patrocinador.setTelefone(rs.getString("telefone"));
				patrocinador.setEmail(rs.getString("email"));
				patrocinador.setValor(rs.getDouble(6));

				patrocinadores.add(patrocinador);
			}
			pst.close();
			rs.close();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			System.out.println("Erro: " + e.getMessage());
		}
		return patrocinadores;
	}
}

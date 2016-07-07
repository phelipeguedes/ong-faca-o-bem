package br.com.facaobem.controle;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.facaobem.dao.ColaboradorDao;
import br.com.facaobem.modelo.Colaborador;

@SuppressWarnings("serial")
@WebServlet(name = "/ServletColaborador", urlPatterns = { "/servletcolaborador" })

public class ServletColaborador extends HttpServlet {

	public ServletColaborador() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		// contexto = config.getServletContext();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/* Recebendo dados do formulário de cadastro */
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String logradouro = request.getParameter("logradouro");
		String estado = request.getParameter("estado");
		String cidade = request.getParameter("cidade");
		String cpf = request.getParameter("cpf");
		String rg = request.getParameter("rg");
		String experiencia = request.getParameter("experiencia");
		String sobreexperiencia = request.getParameter("sobre_experiencia");

		// Montando o objeto
		Colaborador colaborador = new Colaborador();
		colaborador.setNome(nome);
		colaborador.setEmail(email);
		colaborador.setSenha(senha);
		colaborador.setTelefone(telefone);
		colaborador.setCelular(celular);
		colaborador.setLogradouro(logradouro);
		colaborador.setEstado(estado);
		colaborador.setCidade(cidade);
		colaborador.setCpf(cpf);
		colaborador.setRg(rg);
		colaborador.setExperiencia(experiencia);
		colaborador.setSobreexperiencia(sobreexperiencia);

		// Salvando o administrador cadastrado
		try {
			ColaboradorDao.cadastra(colaborador);
		} catch (SQLException | InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		/* Exibindo o resultado da consulta */
		PrintWriter print = response.getWriter();

		print.write("<html>");
		print.write("<body>");
		print.write("<h3> " + colaborador.getNome() + " foi adicionado(a) com sucesso! " + " </h3>");
		print.write("<a href='index.jsp' style='text-decoration:nome'><button id='retornar'>Retornar</button></a> ");
		print.write("</body>");
		print.write("</html>");

	}

}

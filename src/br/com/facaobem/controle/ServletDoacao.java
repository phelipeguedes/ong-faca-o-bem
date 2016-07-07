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

import br.com.facaobem.dao.DoacaoDao;
import br.com.facaobem.modelo.Doacao;

@SuppressWarnings("serial")
@WebServlet(name = "/ServletDoacao", urlPatterns = { "/servletdoacao" })
public class ServletDoacao extends HttpServlet {
	// private ServletContext contexto;

	public ServletDoacao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init(ServletConfig config) throws ServletException {
		// contexto = config.getServletContext();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/* Recebendo dados do formulário de cadastro */
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("tel");
		String logradouro = request.getParameter("logradouro");
		String estado = request.getParameter("estado");
		String cidade = request.getParameter("cidade");
		String cpf = request.getParameter("cpf");
		String rg = request.getParameter("rg");
		String tipoDoacao = request.getParameter("tipo");
		int quantidade = Integer.parseInt(request.getParameter("quantidade"));
		String mensagem = request.getParameter("mensagem");

		/* Montando o objeto */
		Doacao doacao = new Doacao();
		doacao.setNomeDoador(nome);
		doacao.setEmailDoador(email);
		doacao.setTelefoneDoador(telefone);
		doacao.setLogradouroDoador(logradouro);
		doacao.setEstadoDoador(estado);
		doacao.setCidadeDoador(cidade);
		doacao.setCpfDoador(cpf);
		doacao.setRgDoador(rg);
		doacao.setTipo(tipoDoacao);
		doacao.setQuantidade(quantidade);
		doacao.setMensagemDoador(mensagem);

		// Salvando as doações através do método estático 'cadastraDoação' da
		// classe AdministradorDao
		try {
			DoacaoDao.cadastraDoacao(doacao);
			/* Exibindo o resultado da consulta */
			PrintWriter print = response.getWriter();

			print.write("<html>");
			print.write("<body>");
			print.write("<h3> Doação de " + doacao.getNomeDoador() + " foi cadastrada com sucesso! " + " </h3>");
			print.write("Muito Obrigado pela sua colaboração!" + "<br/><br/>");
			print.write("<a href='index.jsp' style='text-decoration:nome'><button id='retornar'>Retornar</button></a> ");
			print.write("</body>");
			print.write("</html>");

		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			System.out.println("Cadastro não realizado. Erro: " + e.getMessage());			
		}

		
	}

}

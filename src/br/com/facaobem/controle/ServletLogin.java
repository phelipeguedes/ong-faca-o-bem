package br.com.facaobem.controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.facaobem.dao.ColaboradorDao;
import br.com.facaobem.modelo.Colaborador;

@SuppressWarnings("serial")
@WebServlet(name = "/ServletLogin", urlPatterns = { "/servletlogin" })
public class ServletLogin extends HttpServlet {
	private ServletContext contexto; // contexto compartilhado entre todos os
										// servlets

	public ServletLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init(ServletConfig config) throws ServletException {
		contexto = config.getServletContext();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//String email = request.getParameter("email");
		//String senha = request.getParameter("senha");
		
		/* Recuperando o atributo 'colaborador' vindo do 'forward.jsp'.  */
		Colaborador colaborador = (Colaborador) request.getSession().getAttribute("colaborador");

		try {
			//colaborador = ColaboradorDao.autenticar(email, senha);
			colaborador = ColaboradorDao.autenticar(colaborador.getEmail(), colaborador.getSenha());
			if (colaborador != null) {
				contexto.setAttribute("admLogado", colaborador);
				response.sendRedirect("bemVindo.jsp");
			} else {
				response.sendRedirect("loginIncorreto.jsp");
			}
		} catch (SQLException | InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			response.sendRedirect("paginaDeErro.jsp" + e.getMessage());

		}
	}

}

package web;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet("/formulario")
public class MeuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recupera os parâmetros do formulário
        String nome = URLEncoder.encode(request.getParameter("nome").trim(), "UTF-8");
        String idade = URLEncoder.encode(request.getParameter("idade").trim(), "UTF-8");
        String curso = URLEncoder.encode(request.getParameter("curso").trim(), "UTF-8");
        String instituicao = URLEncoder.encode(request.getParameter("instituicao").trim(), "UTF-8");
        String empresa = URLEncoder.encode(request.getParameter("empresa").trim(), "UTF-8");
        String cargo = URLEncoder.encode(request.getParameter("cargo").trim(), "UTF-8");

        // Armazena as informações como cookies
        Cookie cookie1 = new Cookie("Nome", nome);
        response.addCookie(cookie1);

        Cookie cookie2 = new Cookie("Idade", idade);
        response.addCookie(cookie2);

        Cookie cookie3 = new Cookie("Curso", curso);
        response.addCookie(cookie3);

        Cookie cookie4 = new Cookie("Instituicao", instituicao);
        response.addCookie(cookie4);

        Cookie cookie5 = new Cookie("Empresa", empresa);
        response.addCookie(cookie5);

        Cookie cookie6 = new Cookie("Cargo", cargo);
        response.addCookie(cookie6);

        // Define a mensagem de confirmação
        String mensagem = "Cadastro realizado com sucesso!";
        request.setAttribute("mensagem", mensagem);

        // Redireciona para a página "confirmacao.jsp"
        request.getRequestDispatcher("confirmacao.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();

        // Escreve a resposta na página
        response.setContentType("text/html");
        response.getWriter().println("<html><head><title>Recuperar Cookies</title></head><body>");
        response.getWriter().println("<h2>Informações dos Cookies:</h2>");

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                String chave = cookie.getName();
                String valor = cookie.getValue();

                response.getWriter().println("<p>" + chave + ": " + valor + "</p>");
            }
        } else {
            response.getWriter().println("<p>Nenhum cookie encontrado.</p>");
        }

        response.getWriter().println("</body></html>");
    }
}
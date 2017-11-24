
package Controller;

import DAO.FilialDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "dropFilial", urlPatterns = {"/dropFilial"})
public class dropFilial extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id = request.getParameter("idFilial");
            FilialDAO getFilial = new FilialDAO();
            getFilial.excluirFilial(Integer.parseInt(id));
            response.sendRedirect("view/listagemFuncionario.jsp");
        } catch (Exception e) {
            System.out.println("Erro Servlet - Drop Filial");
            response.sendRedirect("view/listagemFuncionario.jsp");
        }

    }

}



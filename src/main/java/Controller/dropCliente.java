package Controller;

import DAO.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "dropCliente", urlPatterns = {"/dropCliente"})
public class dropCliente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id = request.getParameter("idCliente");
            ClienteDAO getCliente = new ClienteDAO();
            getCliente.excluirCliente(Integer.parseInt(id));
            response.sendRedirect("view/listagemCliente.jsp");
        } catch (Exception e) {
            System.out.println("Erro Servlet - Drop Cliente");
            response.sendRedirect("view/listagemCliente.jsp");
        }
    }

}

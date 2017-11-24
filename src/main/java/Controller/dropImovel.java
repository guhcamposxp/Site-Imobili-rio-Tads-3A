package Controller;

import DAO.FuncionarioDAO;
import DAO.ImovelDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "dropImovel", urlPatterns = {"/dropImovel"})
public class dropImovel extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id = request.getParameter("idImovel");
            ImovelDAO getImovel = new ImovelDAO();
            getImovel.excluirImovel(Integer.parseInt(id));
            response.sendRedirect("view/listagemImovel.jsp");
        } catch (Exception e) {
            System.out.println("Erro Servlet - Drop Imovel");
            response.sendRedirect("view/listagemImovel.jsp");
        }
    }

}

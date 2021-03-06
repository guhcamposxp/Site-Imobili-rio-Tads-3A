package Controller;

import DAO.FuncionarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "dropFuncionario", urlPatterns = {"/dropFuncionario"})
public class dropFuncionario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(request.getParameter("funcionarioId"));
        try {
            String id = request.getParameter("funcionarioId");
            FuncionarioDAO getFuncionario = new FuncionarioDAO();
            getFuncionario.excluirFuncionario(Integer.parseInt(id));
            response.sendRedirect("view/listarFuncionario.jsp");
        } catch (Exception e) {
            System.out.println("Erro Servlet - Drop Funcionario");
            response.sendRedirect("view/listarFuncionario.jsp");
        }
    }

}

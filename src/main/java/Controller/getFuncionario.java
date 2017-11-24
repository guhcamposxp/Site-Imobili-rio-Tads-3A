package Controller;

import Data.FuncionarioData;
import DAO.FuncionarioDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "getFuncionario", urlPatterns = {"/getFuncionario"})
public class getFuncionario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        FuncionarioDAO getFuncionario = new FuncionarioDAO();
        String id = request.getParameter("idFuncionario");
        if (id == null) {
            List<FuncionarioData> lista = getFuncionario.getTodosFuncionario();
            request.setAttribute("lista", lista);
             
        } else {
            FuncionarioData lista = new FuncionarioData();
            lista = getFuncionario.getFuncionarioById(Integer.parseInt(id));
            request.setAttribute("lista", lista);
            response.sendRedirect("view/showFuncionario.jsp");
        }
            /*
         List<FilialData> imoveis = getImovel.getTodosImovel();
         request.setAttribute("imoveis", imoveis);   
            */
        
        
    }
}

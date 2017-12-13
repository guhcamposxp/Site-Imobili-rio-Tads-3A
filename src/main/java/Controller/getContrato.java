package Controller;

import DAO.ClienteDAO;
import DAO.ContratoDAO;
import DAO.FilialDAO;
import Data.FuncionarioData;
import DAO.FuncionarioDAO;
import DAO.ImovelDAO;
import Data.ContratoData;
import Data.ContratoTemp;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "getContrato", urlPatterns = {"/getContrato"})
public class getContrato extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ContratoDAO getContratos = new ContratoDAO();
        String id = request.getParameter("contratoId");
        
        if (id == null) {
            List<ContratoData> lista = getContratos.getTodosContratos();
            request.setAttribute("lista", lista);
             
        } else {
            
            ContratoData lista = new ContratoData();
            lista = getContratos.getContratoById(Integer.parseInt(id));
            request.setAttribute("lista", lista);
            response.sendRedirect("view/listarCliente.jsp");
        }

    }
}

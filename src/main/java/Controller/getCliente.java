package Controller;

import Data.ClienteData;
import DAO.ClienteDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "getCliente", urlPatterns = {"/getCliente"})
public class getCliente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ClienteDAO getCliente = new ClienteDAO();
        String id = request.getParameter("idCliente");
        if (id == null) {
            List<ClienteData> lista = getCliente.getTodosCliente();
            request.setAttribute("lista", lista);
             
        } else {
            ClienteData lista = new ClienteData();
            lista = getCliente.getClienteById(Integer.parseInt(id));
            request.setAttribute("lista", lista);
            response.sendRedirect("view/showCliente.jsp");
        }
            /*
         List<FilialData> imoveis = getImovel.getTodosImovel();
         request.setAttribute("imoveis", imoveis);   
            */
        
        
    }
}

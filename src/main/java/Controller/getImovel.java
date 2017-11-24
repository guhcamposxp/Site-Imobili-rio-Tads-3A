package Controller;

import Data.FuncionarioData;
import DAO.FuncionarioDAO;
import DAO.ImovelDAO;
import Data.ImovelData;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "getImovel", urlPatterns = {"/getImovel"})
public class getImovel extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ImovelDAO getImovel = new ImovelDAO();
        String id = request.getParameter("imovelId");
        if (id == null) {
            List<ImovelData> lista = getImovel.getTodosImoveis();
            request.setAttribute("lista", lista);
             
        } else {
            ImovelData lista = new ImovelData();
            lista = getImovel.getImovelById(Integer.parseInt(id));
            request.setAttribute("lista", lista);
            response.sendRedirect("view/listarImovel.jsp");
        }
        
        
       
            /*
         List<FilialData> imoveis = getImovel.getTodosImovel();
         request.setAttribute("imoveis", imoveis);   
            */
        
        
    }
}

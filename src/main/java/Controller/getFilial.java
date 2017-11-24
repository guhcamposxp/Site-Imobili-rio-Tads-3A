package Controller;

import DAO.FilialDAO;
import Data.FilialData;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "getFilial", urlPatterns = {"/getFilial"})
public class getFilial extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        FilialDAO getFilial = new FilialDAO();
        String id = request.getParameter("idFilial");
        if (id == null) {
            List<FilialData> lista = getFilial.getTodasFiliais();
            request.setAttribute("lista", lista);
             
        } else {
            FilialData lista = new FilialData();
            lista = getFilial.getFilialByID(Integer.parseInt(id));
            request.setAttribute("lista", lista);
            response.sendRedirect("view/showFuncionario.jsp");
        }
            /*
         List<FilialData> imoveis = getImovel.getTodosImovel();
         request.setAttribute("imoveis", imoveis);   
            */
        

    }

}

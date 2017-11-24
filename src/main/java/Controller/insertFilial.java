package Controller;

import DAO.FilialDAO;
import Data.FilialData;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "insertFilial", urlPatterns = {"/insertFilial"})
public class insertFilial extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String retorno = "";
        String filialId = request.getParameter("filialId");
        String filialNome = request.getParameter("filialNome");
        String filialCnpj = request.getParameter("filialCnpj");
        String filialRua = request.getParameter("filialRua");
        String filialNumero = request.getParameter("filialNumero");
        String filialBairro = request.getParameter("filialBairro");
        String filialCep = request.getParameter("filialCep");
        String filialCidade = request.getParameter("filialCidade");
        String filialEstado = request.getParameter("filialEstado");
        boolean valida = validaCampos(filialNome, filialCnpj, filialRua, filialNumero, filialBairro, filialCep,
                filialCidade, filialEstado);
        if (valida) {
            
            FilialDAO dao = new FilialDAO();
            
            if (filialId != null) {
//                    FilialData alteraFilial = new FilialData();
//                    alteraFilial = dao.getFilialByID(Integer.parseInt(filialId));
//                    alteraFilial.setIdFilial(Integer.parseInt(filialId));
//                    alteraFilial.setFilialCnpj(filialCnpj);
//                    alteraFilial.setFilialNome(filialNome);
//                    alteraFilial.setFilialRua(filialRua);
//                    alteraFilial.setFilialNumero(filialNumero);
//                    alteraFilial.setFilialBairro(filialBairro);
//                    alteraFilial.setFilialCep(filialCep);
//                    alteraFilial.setFilialCidade(filialCidade);
//                    alteraFilial.setFilialEstado(filialEstado);
//                    
//                    dao.atualizaFilial(alteraFilial);
//                    retorno = "alteracao";
            } else {
                FilialData novaFilial = new FilialData();
                novaFilial = dao.getFilialByID(Integer.parseInt(filialId));
                novaFilial.setIdFilial(Integer.parseInt(filialId));
                novaFilial.setFilialNome(filialNome);
                novaFilial.setFilialCnpj(filialCnpj);
                novaFilial.setFilialRua(filialRua);
                novaFilial.setFilialNumero(filialNumero);
                novaFilial.setFilialBairro(filialBairro);
                novaFilial.setFilialCep(filialCep);
                novaFilial.setFilialCidade(filialCidade);
                novaFilial.setFilialEstado(filialEstado);
                dao.cadastraFilial(novaFilial);
                retorno = "criacao";
            }
            
        } else {
            retorno = "erro";
        }
        request.setAttribute("retorno", retorno);
        request.getRequestDispatcher("view/cadastrarFilail.jsp").forward(request, response);
    }

    private boolean validaCampos(String filialNome, String filialCnpj, String filialRua, String filialNumero, String filialBairro, String filialCep,
                    String filialCidade, String filialEstado) {

        if ((filialNome == null) || (filialCnpj == null) || (filialRua == null)
                || (filialNumero == null) || (filialBairro == null) || (filialCep == null)
                || (filialCidade == null) || (filialEstado == null)) {
            return false;
        } else {
            return true;
        }

    }

}

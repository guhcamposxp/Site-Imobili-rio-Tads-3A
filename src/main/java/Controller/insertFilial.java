package Controller;

import Data.FilialData;
import DAO.FilialDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "insertFilial", urlPatterns = {"/insertFilial"})
public class insertFilial extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String retorno = "foi";
            String filialId = request.getParameter("filialId");
            String filialRua = request.getParameter("filialRua");
            String filialNum = request.getParameter("filialNum");
            String filialCep = request.getParameter("filialCep");
            String filialEstado = request.getParameter("filialEstado");
            String filialCidade = request.getParameter("filialCidade");
            String filialBairro = request.getParameter("filialBairro");
            String filialCnpj = request.getParameter("filialCnpj");
            String filialNome = request.getParameter("filialNome");

            boolean valida = valida(filialRua, filialNum, filialCep, filialEstado, filialCidade, filialBairro, filialCnpj, filialNome);

            if (valida) {
                FilialDAO dao = new FilialDAO();
                if (filialId == null) {
                    FilialData novoFilial = new FilialData();
                    
                    novoFilial.setFilialRua(filialRua);
                    novoFilial.setFilialNum(filialNum);
                    novoFilial.setFilialCep(filialCep);
                    novoFilial.setFilialEstado(filialEstado);
                    novoFilial.setFilialCidade(filialCidade);
                    novoFilial.setFilialBairro(filialBairro);
                    novoFilial.setFilialCnpj(filialCnpj);
                    novoFilial.setFilialNome(filialNome);
                    
                    dao.cadastraFilial(novoFilial);
                    retorno = "criacao";
                } else {
                    FilialData alteraFilial = new FilialData();
                    alteraFilial = dao.getFilialByID(Integer.parseInt(filialId));
                    
                    alteraFilial.setFilialId(Integer.parseInt(filialId));
                    alteraFilial.setFilialRua(filialRua);
                    alteraFilial.setFilialNum(filialNum);
                    alteraFilial.setFilialCep(filialCep);
                    alteraFilial.setFilialEstado(filialEstado);
                    alteraFilial.setFilialCidade(filialCidade);
                    alteraFilial.setFilialBairro(filialBairro);
                    alteraFilial.setFilialCnpj(filialCnpj);
                    alteraFilial.setFilialNome(filialNome);
                    
                    dao.atualizaFilial(alteraFilial);
                    retorno = "alteracao";
                    
                }
            } else {
                retorno = "deu ruim";
            }
            request.setAttribute("retorno", retorno);
            request.getRequestDispatcher("view/cadastrarFilial.jsp").forward(request, response);
        } catch (IOException e) {
            System.out.println("Erro no servlet - ServletException - Classe: Cliente.java - Erro: " + e);
        } catch (SQLException ex) {
            Logger.getLogger(insertFilial.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private boolean valida(String filialRua, String filialNum, String filialCep, String filialEstado, String filialCidade, String filialBairro, String filialCnpj, String filialNome) {

        if (filialRua == null || filialNum == null || filialCep == null || filialEstado == null || filialCidade == null || filialBairro == null || filialCnpj == null || filialNome == null) {
            return false;
        } else {
            return true;
        }
    }
}

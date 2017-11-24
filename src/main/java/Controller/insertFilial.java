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

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String retorno = "";
            String idFilial = request.getParameter("idFilial");
            String endRuaFilial = request.getParameter("endRuaFilial");
            String endNumFilial = request.getParameter("endNumFilial");
            String endCepFilial = request.getParameter("endCepFilial");
            String endEstFilial = request.getParameter("endEstFilial");
            String endCidFilial = request.getParameter("endCidFilial");
            String endBairroFilial = request.getParameter("endBairroFilial");
            String endCompFilial = request.getParameter("endCompFilial");
            String responsavelFilial = request.getParameter("responsavelFilial");
            String faturamentoFilial = request.getParameter("faturamentoFilial");
            String cnpjFilial = request.getParameter("cnpjFilial");
            String nomeFantasiaFilial = request.getParameter("nomeFantasiaFilial");

            boolean valida = validaCampos(endRuaFilial, endNumFilial, endCepFilial, endEstFilial, endCidFilial, endBairroFilial, responsavelFilial, faturamentoFilial, cnpjFilial, nomeFantasiaFilial);

            if (valida) {

                FilialDAO dao = new FilialDAO();

                if (idFilial != null) {
                    FilialData alteraFilial = new FilialData();
                    alteraFilial = dao.getFilialByID(Integer.parseInt(idFilial));
                    alteraFilial.setIdFilial(Integer.parseInt(idFilial));
                    alteraFilial.setCnpjFilial(cnpjFilial);
                    alteraFilial.setEndBairroFilial(endBairroFilial);
                    alteraFilial.setEndCepFilial(endCepFilial);
                    alteraFilial.setEndCidFilial(endCidFilial);
                    alteraFilial.setEndCompFilial(endCompFilial);
                    alteraFilial.setEndEstFilial(endEstFilial);
                    alteraFilial.setEndNumFilial(endNumFilial);
                    alteraFilial.setEndRuaFilial(endRuaFilial);
                    alteraFilial.setFaturamentoFilial(faturamentoFilial);
                    alteraFilial.setNomeFantasiaFilial(nomeFantasiaFilial);
                    alteraFilial.setResponsavelFilial(Integer.parseInt(responsavelFilial));
                    dao.atualizaFilial(alteraFilial);
                    retorno = "alteracao";
                } else {
                    FilialData novaFilial = new FilialData();
                    novaFilial = dao.getFilialByID(Integer.parseInt(idFilial));
                    novaFilial.setIdFilial(Integer.parseInt(idFilial));
                    novaFilial.setCnpjFilial(cnpjFilial);
                    novaFilial.setEndBairroFilial(endBairroFilial);
                    novaFilial.setEndCepFilial(endCepFilial);
                    novaFilial.setEndCidFilial(endCidFilial);
                    novaFilial.setEndCompFilial(endCompFilial);
                    novaFilial.setEndEstFilial(endEstFilial);
                    novaFilial.setEndNumFilial(endNumFilial);
                    novaFilial.setEndRuaFilial(endRuaFilial);
                    novaFilial.setFaturamentoFilial(faturamentoFilial);
                    novaFilial.setNomeFantasiaFilial(nomeFantasiaFilial);
                    novaFilial.setResponsavelFilial(Integer.parseInt(responsavelFilial));
                    dao.cadastraFilial(novaFilial);
                    retorno = "criacao";
                }

            } else {
                retorno = "erro";
            }
            request.setAttribute("retorno", retorno);
            request.getRequestDispatcher("view/cadastrarFilail.jsp").forward(request, response);
        } catch (SQLException e) {
            System.out.println("Erro no servlet - ServletException - Classe: insertFilial.java - Erro: " + e);
        }
    }

    private boolean validaCampos(String endRuaFilial, String endNumFilial, String endCepFilial, String endEstFilial, String endCidFilial,
            String endBairroFilial, String responsavelFilial, String faturamentoFilial, String cnpjFilial, String nomeFantasiaFilial) {

        if ((endRuaFilial == null) || (endNumFilial == null) || (endCepFilial == null)
                || (endEstFilial == null) || (endCidFilial == null) || (endBairroFilial == null)
                || (responsavelFilial == null) || (faturamentoFilial == null) || (cnpjFilial == null)
                || (nomeFantasiaFilial == null)) {
            return false;
        } else {
            return true;
        }

    }

}

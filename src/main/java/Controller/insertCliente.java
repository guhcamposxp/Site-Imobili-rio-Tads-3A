package Controller;

import Data.ClienteData;
import DAO.ClienteDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "insertCliente", urlPatterns = {"/insertCliente"})
public class insertCliente extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
            String retorno = "";
            String idCliente = request.getParameter("idCliente");
            String nomeCliente = request.getParameter("nomeCliente");
            String cpfCliente = request.getParameter("cpfCliente");
            String rgCliente = request.getParameter("rgCliente");
            String sexoCliente = request.getParameter("sexoCliente");
            String emailCliente = request.getParameter("emailCliente");
            String nascimentoCliente = request.getParameter("nascimentoCliente");
            String telFixoCliente = request.getParameter("telFixoCliente");
            String telCelCliente = request.getParameter("telCelCliente");
            String endRuaCliente = request.getParameter("endRuaCliente");
            String endNumCliente = request.getParameter("endNumCliente");
            String endBairroCliente = request.getParameter("endBairroCliente");
            String endCepCliente = request.getParameter("endCepCliente");
            String endEstCliente = request.getParameter("endEstCliente");
            String endCidCliente = request.getParameter("endCidCliente");
            String endCompCliente = request.getParameter("endCompCliente");
            String estCivilCliente = request.getParameter("estCivilCliente");

            boolean valida = validaCampos(nomeCliente, cpfCliente, rgCliente, sexoCliente, emailCliente,
                    nascimentoCliente, telFixoCliente, telCelCliente, endRuaCliente, endNumCliente, endBairroCliente,
                    endCepCliente, endEstCliente, endCidCliente, endCompCliente, estCivilCliente);

            if (valida) {

                ClienteDAO dao = new ClienteDAO();

                if (idCliente != null) {
                    ClienteData alteraCliente = new ClienteData();
                    alteraCliente = dao.getClienteById(Integer.parseInt(idCliente));
                    alteraCliente.setIdCliente(Integer.parseInt(idCliente));
                    alteraCliente.setNomeCliente(nomeCliente);
                    alteraCliente.setCpfCliente(cpfCliente);
                    alteraCliente.setRgCliente(rgCliente);
                    alteraCliente.setSexoCliente(sexoCliente);
                    alteraCliente.setEmailCliente(emailCliente);
                    alteraCliente.setNascimentoCliente(nascimentoCliente);
                    alteraCliente.setTelFixoCliente(telFixoCliente);
                    alteraCliente.setTelCelCliente(telCelCliente);
                    alteraCliente.setEndRuaCliente(endRuaCliente);
                    alteraCliente.setEndNumCliente(endNumCliente);
                    alteraCliente.setEndBairroCliente(endBairroCliente);
                    alteraCliente.setEndCepCliente(endCepCliente);
                    alteraCliente.setEndEstCliente(endEstCliente);
                    alteraCliente.setEndCidCliente(endCidCliente);
                    alteraCliente.setEndCompCliente(endCompCliente);
                    alteraCliente.setEstCivilCliente(estCivilCliente);
                    dao.atualizaCliente(alteraCliente);
                    retorno = "alteracao";
                } else {
                    ClienteData novoCliente = new ClienteData();
                    novoCliente.setNomeCliente(nomeCliente);
                    novoCliente.setCpfCliente(cpfCliente);
                    novoCliente.setRgCliente(rgCliente);
                    novoCliente.setSexoCliente(sexoCliente);
                    novoCliente.setEmailCliente(emailCliente);
                    novoCliente.setNascimentoCliente(nascimentoCliente);
                    novoCliente.setTelFixoCliente(telFixoCliente);
                    novoCliente.setTelCelCliente(telCelCliente);
                    novoCliente.setEndRuaCliente(endRuaCliente);
                    novoCliente.setEndNumCliente(endNumCliente);
                    novoCliente.setEndBairroCliente(endBairroCliente);
                    novoCliente.setEndCepCliente(endCepCliente);
                    novoCliente.setEndEstCliente(endEstCliente);
                    novoCliente.setEndCidCliente(endCidCliente);
                    novoCliente.setEndCompCliente(endCompCliente);
                    novoCliente.setEstCivilCliente(estCivilCliente);
                    dao.cadastraCliente(novoCliente);
                    retorno = "criacao";
                }
            } else {
                retorno = "erro";
            }
            request.setAttribute("retorno", retorno);
            request.getRequestDispatcher("view/cadastrarCliente.jsp").forward(request, response);
        } catch (IOException e) {
            System.out.println("Erro no servlet - ServletException - Classe: Cliente.java - Erro: " + e);
        }

    }

    private boolean validaCampos(String nomeCliente, String cpfCliente, String rgCliente, String sexoCliente, String emailCliente,
            String nascimentoCliente, String telFixoCliente, String telCelCliente, String endRuaCliente, String endNumCliente, String endBairroCliente,
            String endCepCliente, String endEstCliente, String endCidCliente, String endCompCliente, String estCivilCliente) {

        if ((nomeCliente == null) || (cpfCliente == null) || (rgCliente == null)
                || (sexoCliente == null) || (emailCliente == null) || (nascimentoCliente == null)
                || (telFixoCliente == null) || (telCelCliente == null) || (endRuaCliente == null)
                || (endNumCliente == null) || (endBairroCliente == null) || (endCepCliente == null)
                || (endEstCliente == null) || (endCidCliente == null) || (endCompCliente == null)
                || (estCivilCliente == null)) {

            return false;
        } else {
            return true;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}

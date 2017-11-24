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

@WebServlet(name = "insertFuncionario", urlPatterns = {"/insertFuncionario"})
public class insertFuncionario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
             String retorno = "";
            String idFuncionario = request.getParameter("idFuncionario");
            String nomeFuncionario = request.getParameter("nomeFuncionario");
            String cpfFuncionario = request.getParameter("cpfFuncionario");
            String rgFuncionario = request.getParameter("rgFuncionario");
            String sexoFuncionario = request.getParameter("sexoFuncionario");
            String emailFuncionario = request.getParameter("emailFuncionario");
            String nascimentoFuncionario = request.getParameter("nascimentoFuncionario");
            String telFixoFuncionario = request.getParameter("telFixoFuncionario");
            String telCelFuncionario = request.getParameter("telCelFuncionario");
            String endRuaFuncionario = request.getParameter("endRuaFuncionario");
            String endNumFuncionario = request.getParameter("endNumFuncionario");
            String endBairroFuncionario = request.getParameter("endBairroFuncionario");
            String endCepFuncionario = request.getParameter("endCepFuncionario");
            String endEstFuncionario = request.getParameter("endEstFuncionario");
            String endCidFuncionario = request.getParameter("endCidFuncionario");
            String endCompFuncionario = request.getParameter("endCompFuncionario");
            String estCivilFuncionario = request.getParameter("estCivilFuncionario");
            String cargoFuncionario = request.getParameter("cargoFuncionario");
            String senhaFuncionario = request.getParameter("senhaFuncionario");
            String idFilial = request.getParameter("idFilial");
            
            

            boolean valida = validaCampos(nomeFuncionario, cpfFuncionario, rgFuncionario, sexoFuncionario, emailFuncionario,
                    nascimentoFuncionario, telFixoFuncionario, telCelFuncionario, endRuaFuncionario, endNumFuncionario, endBairroFuncionario,
                    endCepFuncionario, endEstFuncionario, endCidFuncionario, endCompFuncionario, estCivilFuncionario, cargoFuncionario,
                    senhaFuncionario, idFilial);

            if (valida) {

                FuncionarioDAO dao = new FuncionarioDAO();

                if (idFuncionario != null) {
                    FuncionarioData alteraFuncionario = new FuncionarioData();
                    alteraFuncionario = dao.getFuncionarioById(Integer.parseInt(idFuncionario));
                    alteraFuncionario.setIdFuncionario(Integer.parseInt(idFuncionario));
                    alteraFuncionario.setNomeFuncionario(nomeFuncionario);
                    alteraFuncionario.setCpfFuncionario(cpfFuncionario);
                    alteraFuncionario.setRgFuncionario(rgFuncionario);
                    alteraFuncionario.setSexoFuncionario(sexoFuncionario);
                    alteraFuncionario.setEmailFuncionario(emailFuncionario);
                    alteraFuncionario.setNascimentoFuncionario(nascimentoFuncionario);
                    alteraFuncionario.setTelFixoFuncionario(telFixoFuncionario);
                    alteraFuncionario.setTelCelFuncionario(telCelFuncionario);
                    alteraFuncionario.setEndRuaFuncionario(endRuaFuncionario);
                    alteraFuncionario.setEndNumFuncionario(endNumFuncionario);
                    alteraFuncionario.setEndBairroFuncionario(endBairroFuncionario);
                    alteraFuncionario.setEndCepFuncionario(endCepFuncionario);
                    alteraFuncionario.setEndEstFuncionario(endEstFuncionario);
                    alteraFuncionario.setEndCidFuncionario(endCidFuncionario);
                    alteraFuncionario.setEndCompFuncionario(endCompFuncionario);
                    alteraFuncionario.setEstCivilFuncionario(estCivilFuncionario);
                    alteraFuncionario.setCargoFuncionario(cargoFuncionario);
                    alteraFuncionario.setSenhaFuncionario(senhaFuncionario);
                    alteraFuncionario.setFilialFuncionario(Integer.parseInt(idFilial));
                    dao.atualizaFuncionario(alteraFuncionario);
                     retorno = "alteracao";
                } else {
                    FuncionarioData novoFuncionario = new FuncionarioData();
                    novoFuncionario.setNomeFuncionario(nomeFuncionario);
                    novoFuncionario.setCpfFuncionario(cpfFuncionario);
                    novoFuncionario.setRgFuncionario(rgFuncionario);
                    novoFuncionario.setSexoFuncionario(sexoFuncionario);
                    novoFuncionario.setEmailFuncionario(emailFuncionario);
                    novoFuncionario.setNascimentoFuncionario(nascimentoFuncionario);
                    novoFuncionario.setTelFixoFuncionario(telFixoFuncionario);
                    novoFuncionario.setTelCelFuncionario(telCelFuncionario);
                    novoFuncionario.setEndRuaFuncionario(endRuaFuncionario);
                    novoFuncionario.setEndNumFuncionario(endNumFuncionario);
                    novoFuncionario.setEndBairroFuncionario(endBairroFuncionario);
                    novoFuncionario.setEndCepFuncionario(endCepFuncionario);
                    novoFuncionario.setEndEstFuncionario(endEstFuncionario);
                    novoFuncionario.setEndCidFuncionario(endCidFuncionario);
                    novoFuncionario.setEndCompFuncionario(endCompFuncionario);
                    novoFuncionario.setEstCivilFuncionario(estCivilFuncionario);
                    novoFuncionario.setCargoFuncionario(cargoFuncionario);
                    novoFuncionario.setSenhaFuncionario(senhaFuncionario);
                    novoFuncionario.setFilialFuncionario(Integer.parseInt(idFilial));
                    dao.cadastraFuncionario(novoFuncionario);
                     retorno = "criacao";
                }
            } else {
                 retorno = "erro";

            }
            request.setAttribute("retorno", retorno);
            request.getRequestDispatcher("view/cadastrarFuncionario.jsp").forward(request, response);
        } catch (IOException e) {
            System.out.println("Erro no servlet - ServletException - Classe: Funcionario.java - Erro: " + e);
        }

    }

    private boolean validaCampos(String nomeFuncionario, String cpfFuncionario, String rgFuncionario, String sexoFuncionario, String emailFuncionario,
            String nascimentoFuncionario, String telFixoFuncionario, String telCelFuncionario, String endRuaFuncionario, String endNumFuncionario, String endBairroFuncionario,
            String endCepFuncionario, String endEstFuncionario, String endCidFuncionario, String endCompFuncionario, String estCivilFuncionario,
            String cargoFuncionario, String senhaFuncionario, String idFilial) {

        if ((nomeFuncionario == null) || (cpfFuncionario == null) || (rgFuncionario == null)
                || (sexoFuncionario == null) || (emailFuncionario == null) || (nascimentoFuncionario == null)
                || (telFixoFuncionario == null) || (telCelFuncionario == null) || (endRuaFuncionario == null)
                || (endNumFuncionario == null) || (endBairroFuncionario == null) || (endCepFuncionario == null)
                || (endEstFuncionario == null) || (endCidFuncionario == null) || (endCompFuncionario == null)
                || (estCivilFuncionario == null) || (cargoFuncionario == null) || (senhaFuncionario == null) || (idFilial == null)) {
            return false;
        } else {

            return true;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}


package Controller;

import DAO.ImovelDAO;
import Data.ImovelData;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "insertImovel", urlPatterns = {"/insertImovel"})
public class insertImovel extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String retorno = "";
        String idImovel = request.getParameter("idImovel");
        String endRuaImovel = request.getParameter("endRuaImovel");
        String endNumImovel = request.getParameter("endNumImovel");
        String endBairroImovel = request.getParameter("endBairroImovel");
        String endCepImovel = request.getParameter("endCepImovel");
        String endEstImovel = request.getParameter("endEstImovel");
        String endCidImovel = request.getParameter("emailCliente");
        String endCompImovel = request.getParameter("endCompImovel");
        String areaImovel = request.getParameter("areaImovel");
        String quartosImovel = request.getParameter("quartosImovel");
        String suitesImovel = request.getParameter("suitesImovel");
        String cozinhasImovel = request.getParameter("cozinhasImovel");
        String salasComumImovel = request.getParameter("salasComumImovel");
        String salasJantarImovel = request.getParameter("salasJantarImovel");
        String banheirosImovel = request.getParameter("banheirosImovel");
        String vagasImovel = request.getParameter("vagasImovel");
        String valorVendaImovel = request.getParameter("valorVendaImovel");
        String valorAluguelImovel = request.getParameter("valorAluguelImovel");
        String tipoImovel = request.getParameter("tipoImovel");
        String descricaoImovel = request.getParameter("descricaoImovel");
        boolean valida = validaCampos(endRuaImovel, endNumImovel, endBairroImovel, endCepImovel, endEstImovel,
                endCidImovel, endCompImovel, areaImovel, quartosImovel, suitesImovel, cozinhasImovel,
                salasComumImovel, salasJantarImovel, banheirosImovel, vagasImovel, valorVendaImovel,
                valorAluguelImovel, tipoImovel, descricaoImovel);
        if (valida) {
            
            ImovelDAO dao = new ImovelDAO();
            
            if (idImovel != null) {
                ImovelData alteraImovel = new ImovelData();
                alteraImovel = dao.getImovelById(Integer.parseInt(idImovel));
                alteraImovel.setIdImovel(Integer.parseInt(idImovel));
                alteraImovel.setEndRuaImovel(endRuaImovel);
                alteraImovel.setEndNumImovel(endNumImovel);
                alteraImovel.setEndBairroImovel(endBairroImovel);
                alteraImovel.setEndCepImovel(endCepImovel);
                alteraImovel.setEndEstImovel(endEstImovel);
                alteraImovel.setEndCidImovel(endCidImovel);
                alteraImovel.setEndCompImovel(endCompImovel);
                alteraImovel.setAreaUtilImovel(areaImovel);
                alteraImovel.setQtdQuartoImovel(Integer.parseInt(quartosImovel));
                alteraImovel.setQtdSuiteImovel(Integer.parseInt(suitesImovel));
                alteraImovel.setQtdCozinhaImovel(Integer.parseInt(cozinhasImovel));
                alteraImovel.setQtdSalaComumImovel(Integer.parseInt(salasComumImovel));
                alteraImovel.setQtdSalaJantarImovel(Integer.parseInt(salasJantarImovel));
                alteraImovel.setQtdBanheiroImovel(Integer.parseInt(banheirosImovel));
                alteraImovel.setQtdVagasImovel(Integer.parseInt(vagasImovel));
                alteraImovel.setValorVendaImovel(valorVendaImovel);
                dao.atualizaImovel(alteraImovel);
                retorno = "alteracao";
            } else {
                ImovelData novoImovel = new ImovelData();
                novoImovel = dao.getImovelById(Integer.parseInt(idImovel));
                novoImovel.setIdImovel(Integer.parseInt(idImovel));
                novoImovel.setEndRuaImovel(endRuaImovel);
                novoImovel.setEndNumImovel(endNumImovel);
                novoImovel.setEndBairroImovel(endBairroImovel);
                novoImovel.setEndCepImovel(endCepImovel);
                novoImovel.setEndEstImovel(endEstImovel);
                novoImovel.setEndCidImovel(endCidImovel);
                novoImovel.setEndCompImovel(endCompImovel);
                novoImovel.setAreaUtilImovel(areaImovel);
                novoImovel.setQtdQuartoImovel(Integer.parseInt(quartosImovel));
                novoImovel.setQtdSuiteImovel(Integer.parseInt(suitesImovel));
                novoImovel.setQtdCozinhaImovel(Integer.parseInt(cozinhasImovel));
                novoImovel.setQtdSalaComumImovel(Integer.parseInt(salasComumImovel));
                novoImovel.setQtdSalaJantarImovel(Integer.parseInt(salasJantarImovel));
                novoImovel.setQtdBanheiroImovel(Integer.parseInt(banheirosImovel));
                novoImovel.setQtdVagasImovel(Integer.parseInt(vagasImovel));
                novoImovel.setValorVendaImovel(valorVendaImovel);
                dao.cadastraImovel(novoImovel);
                retorno = "criacao";
            }
        } else {
            retorno = "erro";
        }
        request.setAttribute("retorno", retorno);
        request.getRequestDispatcher("view/cadastrarImovel.jsp").forward(request, response);

    }
    
    private boolean validaCampos(String endRuaImovel, String endNumImovel, String endBairroImovel, String endCepImovel, String endEstImovel,
                    String endCidImovel, String endCompImovel, String areaImovel, String quartosImovel, String suitesImovel, String cozinhasImovel,
                    String salasComumImovel, String salasJantarImovel, String banheirosImovel, String vagasImovel, String valorVendaImovel,
                    String valorAluguelImovel, String tipoImovel, String descricaoImovel) {

        if ((endRuaImovel == null) || (endNumImovel == null) || (endBairroImovel == null)
                || (endCepImovel == null) || (endEstImovel == null) || (endCidImovel == null)
                || (endCompImovel == null) || (areaImovel == null) || (quartosImovel == null)
                || (suitesImovel == null) || (cozinhasImovel == null) || (salasComumImovel == null)
                || (salasJantarImovel == null) || (banheirosImovel == null) || (vagasImovel == null)
                || (valorVendaImovel == null) || (valorAluguelImovel == null) || (tipoImovel == null) 
                || (descricaoImovel == null)) {

            return false;
        } else {
            return true;
        }

    }

}

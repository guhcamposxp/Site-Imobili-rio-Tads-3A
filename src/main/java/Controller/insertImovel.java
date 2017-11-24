
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
        String imovelId = request.getParameter("imovelId");
        String imovelRua = request.getParameter("imovelRua");
        String imovelNumero = request.getParameter("imovelNumero");
        String imovelBairro = request.getParameter("imovelBairro");
        String imovelCep = request.getParameter("imovelCep");
        String imovelCidade = request.getParameter("imovelCidade");
        String imovelEstado = request.getParameter("imovelEstado");
        String imovelQtdVagasGaragem = request.getParameter("imovelQtdVagasGaragem");
        String imovelQtdDormitorios = request.getParameter("imovelQtdDormitorios");
        String imovelTipo = request.getParameter("imovelTipo");
        String imovelMetrosQuadrado = request.getParameter("imovelMetrosQuadrado");
        String imovelDescricao = request.getParameter("imovelDescricao");
        
        
        boolean valida = validaCampos(imovelRua, imovelNumero, imovelBairro, imovelCep, imovelCidade,
                imovelEstado, imovelQtdVagasGaragem, imovelQtdDormitorios, imovelTipo, imovelMetrosQuadrado, imovelDescricao);
        if (valida) {
            
            ImovelDAO dao = new ImovelDAO();
            
            if (imovelId != null) {
//                ImovelData alteraImovel = new ImovelData();
//                alteraImovel = dao.getImovelById(Integer.parseInt(imovelId));
//                alteraImovel.setIdImovel(Integer.parseInt(idImovel));
//                alteraImovel.setEndRuaImovel(endRuaImovel);
//                alteraImovel.setEndNumImovel(endNumImovel);
//                alteraImovel.setEndBairroImovel(endBairroImovel);
//                alteraImovel.setEndCepImovel(endCepImovel);
//                alteraImovel.setEndEstImovel(endEstImovel);
//                alteraImovel.setEndCidImovel(endCidImovel);
//                alteraImovel.setEndCompImovel(endCompImovel);
//                alteraImovel.setAreaUtilImovel(areaImovel);
//                alteraImovel.setQtdQuartoImovel(Integer.parseInt(quartosImovel));
//                alteraImovel.setQtdSuiteImovel(Integer.parseInt(suitesImovel));
//                alteraImovel.setQtdCozinhaImovel(Integer.parseInt(cozinhasImovel));
//                alteraImovel.setQtdSalaComumImovel(Integer.parseInt(salasComumImovel));
//                alteraImovel.setQtdSalaJantarImovel(Integer.parseInt(salasJantarImovel));
//                alteraImovel.setQtdBanheiroImovel(Integer.parseInt(banheirosImovel));
//                alteraImovel.setQtdVagasImovel(Integer.parseInt(vagasImovel));
//                alteraImovel.setValorVendaImovel(valorVendaImovel);
//                dao.atualizaImovel(alteraImovel);
                retorno = "alteracao";
            } else {
                ImovelData novoImovel = new ImovelData();
//                novoImovel.setIdImovel(Integer.parseInt(idImovel));
                novoImovel.setImovelRua(imovelRua);
                novoImovel.setImovelNumero(imovelNumero);
                novoImovel.setImovelBairro(imovelBairro);
                novoImovel.setImovelCep(imovelCep);
                novoImovel.setImovelCidade(imovelCidade);
                novoImovel.setImovelEstado(imovelEstado);
                novoImovel.setImovelQtdVagasGaragem(imovelQtdVagasGaragem);
                novoImovel.setImovelQtdDormitorios(imovelQtdDormitorios);
                novoImovel.setImovelTipo(imovelTipo);
                novoImovel.setImovelMetrosQuadrado(imovelMetrosQuadrado);
                novoImovel.setImovelDescricao(imovelDescricao);
                
                dao.cadastraImovel(novoImovel);
                retorno = "criacao";
            }
        } else {
            retorno = "erro";
        }
        request.setAttribute("retorno", retorno);
        request.getRequestDispatcher("view/cadastrarImovel.jsp").forward(request, response);

    }
    
    private boolean validaCampos(String imovelRua, String imovelNumero, String imovelBairro, String imovelCep, String imovelCidade,
                String imovelEstado, String imovelQtdVagasGaragem, String imovelQtdDormitorios, String imovelTipo, String imovelMetrosQuadrado, String imovelDescricao) {

        if ((imovelRua == null) || (imovelNumero == null) || (imovelBairro == null)
                || (imovelCep == null) || (imovelCidade == null) || (imovelEstado == null)
                || (imovelQtdVagasGaragem == null) || (imovelQtdDormitorios == null) || (imovelTipo == null)
                || (imovelMetrosQuadrado == null) || (imovelDescricao == null)) {

            return false;
        } else {
            return true;
        }

    }

}

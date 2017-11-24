
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
        try{
            String retorno = "";
        String imovelId = request.getParameter("imovelId");
        String proprietarioCpf = request.getParameter("clienteCpf");
        String imovelRua = request.getParameter("imovelRua");
        String imovelNumero = request.getParameter("imovelNumero");
        String imovelComplemento = request.getParameter("imovelComplemento");
        String imovelCep = request.getParameter("imovelCep");
        String imovelBairro = request.getParameter("imovelBairro");
        String imovelCidade = request.getParameter("imovelCidade");
        String imovelEstado = request.getParameter("imovelEstado");
        String imovelVlrVenda = request.getParameter("imovelVlrVenda");
        String imovelVlrAluguel = request.getParameter("imovelVlrAluguel");
        String imovelTransacao = request.getParameter("imovelTransacao");
        String imovelVagasGaragem = request.getParameter("imovelVagasGaragem");
        String imovelDormitorios = request.getParameter("imovelDormitorios");
        String imovelTipo = request.getParameter("imovelTipo");
        String imovelMetros = request.getParameter("imovelMetros");
        String imovelDescricao = request.getParameter("imovelDescricao");
        
        
        
        boolean valida = validaCampos(proprietarioCpf, imovelRua, imovelNumero, imovelComplemento, imovelCep,
                imovelBairro, imovelCidade, imovelEstado, imovelVlrVenda, imovelVlrAluguel, imovelTransacao,
                imovelVagasGaragem, imovelDormitorios, imovelTipo, imovelMetros, imovelDescricao);
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
                novoImovel.setProprietarioCpf(proprietarioCpf);
                novoImovel.setImovelRua(imovelRua);
                novoImovel.setImovelNumero(imovelNumero);
                novoImovel.setImovelComplemento(imovelComplemento);
                novoImovel.setImovelBairro(imovelBairro);
                novoImovel.setImovelCep(imovelCep);
                novoImovel.setImovelCidade(imovelCidade);
                novoImovel.setImovelEstado(imovelEstado);
                novoImovel.setImovelTipoTransacao(imovelTransacao);
                novoImovel.setImovelVlrVenda(imovelVlrVenda);
                novoImovel.setImovelVlrAluguel(imovelVlrAluguel);
                novoImovel.setImovelQtdVagasGaragem(imovelVagasGaragem);
                novoImovel.setImovelQtdDormitorios(imovelDormitorios);
                novoImovel.setImovelTipo(imovelTipo);
                novoImovel.setImovelMetrosQuadrado(imovelMetros);
                novoImovel.setImovelDescricao(imovelDescricao);
                
                dao.cadastraImovel(novoImovel);
                retorno = "criacao";
            }
        } else {
            retorno = "erro";
        }
        request.setAttribute("retorno", retorno);
        request.getRequestDispatcher("view/cadastrarImovel.jsp").forward(request, response);
        } catch(IOException e){
            System.out.println("Erro no servlet - ServletException - Classe: Imovel.java - Erro: " + e);
        }
        

    }
    
    private boolean validaCampos(String proprietarioCpf, String imovelRua, String imovelNumero, String imovelComplemento, String imovelCep,
                String imovelBairro, String imovelCidade, String imovelEstado, String imovelVlrVenda, String imovelVlrAluguel, String imovelTransacao,
                String imovelVagasGaragem, String imovelDormitorios, String imovelTipo, String imovelMetros, String imovelDescricao) {

        if ((proprietarioCpf == null) || (imovelRua == null) || (imovelNumero == null)
                || (imovelComplemento == null) || (imovelCep == null) || (imovelBairro == null)
                || (imovelCidade == null) || (imovelEstado == null) || (imovelVlrVenda == null)
                || (imovelVlrAluguel == null) || (imovelTransacao == null) || (imovelVagasGaragem == null) || (imovelDormitorios == null) 
                || (imovelTipo == null) || (imovelMetros == null) || (imovelDescricao == null)) {

            return false;
        } else {
            return true;
        }

    }

}

package Controller;

import DAO.ContratoDAO;
import Data.ContratoData;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "insertContrato", urlPatterns = {"/insertContrato"})
public class insertContrato extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        //Dados comprador
//        String idComprador = request.getParameter("idComprador");
//
//        //Dados imovel
//        String idImovelContrato = request.getParameter("idImovelContrato");
//
//        //Dados proprietario
//        String idProprietario = request.getParameter("idProprietario");
//
//        //Data
////        String dataContrato = request.getParameter("dataContrato");
//       
//        request.getServletContext().getRequestDispatcher("/view/realizaContrato.jsp").forward(request, response);
        
            String retorno = "";
            String proprietarioId = request.getParameter("proprietarioId");
            String compradorId = request.getParameter("compradorId");
            String filialId = request.getParameter("filialId");
            String corretorId = request.getParameter("corretorId");
            String dataContrato = request.getParameter("dataContrato");
            String tipoTransacao = request.getParameter("tipoTransacao");

                ContratoDAO dao = new ContratoDAO();

                    ContratoData novoContrato = new ContratoData();
                    
                    novoContrato.setIdProprietario(Integer.parseInt(proprietarioId));
                    novoContrato.setIdComprador(Integer.parseInt(compradorId));
                    novoContrato.setIdFilial(Integer.parseInt(filialId));
                    novoContrato.setIdCorretor(Integer.parseInt(corretorId));
                    novoContrato.setDataContrato(dataContrato);
                    novoContrato.setTipoTransacao(tipoTransacao);
                    
                    
                    dao.salvaContrato(novoContrato);
                    retorno = "criacao";
                    request.setAttribute("retorno", retorno);
                    request.getRequestDispatcher("view/gerarContrato.jsp").forward(request, response);
                
            } 
            
           

    }
            
            
            
    



//    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
//
//        try {
//
//            String retorno = "vendafeita";
//            String idImovel = request.getParameter("idImovel");
//            String cpfComprador = request.getParameter("cpfComprador");
//            if (idImovel != null) {
//
//                //Busca dados do imovel
//                ImovelData imovel = new ImovelData();
//                ImovelDAO daoImovel = new ImovelDAO();
//                imovel = daoImovel.getImovelById(Integer.parseInt(idImovel));
//
//                //Busca dados do comprador
//                ClienteData comprador = new ClienteData();
//                ClienteDAO daocliente = new ClienteDAO();
//                comprador = daocliente.getClienteByCpf(cpfComprador);
//
//                //Busca dados do proprietario
//                int idProprietario = imovel.getProprietarioImovel();
//                ClienteData proprietario = new ClienteData();
//                ClienteDAO dao = new ClienteDAO();
//                proprietario = dao.getClienteById(idProprietario);
//
//                //Verifica
//                if (comprador.getCpfCliente() == null) {
//                    retorno = "clientenaoexiste";
//                    request.setAttribute("idImovel", idImovel);
//                    request.setAttribute("cpfComprador", cpfComprador);
//
//                }
//                if (imovel.getIdImovel() == 0) {
//                    retorno = "imovelnaoexiste";
//                    request.setAttribute("idImovel", idImovel);
//                    request.setAttribute("cpfComprador", cpfComprador);
//                }
//                if (imovel.getStatusImovel().equalsIgnoreCase("indisponivel")) {
//                    retorno = "imovelnaodisponivel";
//                    request.setAttribute("idImovel", idImovel);
//                    request.setAttribute("cpfComprador", cpfComprador);
//                }
//
//                //Seta valores de imoveis
//                request.setAttribute("valorVenda", imovel.getValorVendaImovel());
//                request.setAttribute("valorAluguel", imovel.getValorAluguelmovel());
//                request.setAttribute("ruaImovel", imovel.getEndRuaImovel());
//                request.setAttribute("descImovel", imovel.getDescImovel());
//                request.setAttribute("nomeProprietario", proprietario.getNomeCliente());
//                request.setAttribute("idProprietario", proprietario.getIdCliente());
//
//                //Seta valores para cliente
//                request.setAttribute("nomeCliente", comprador.getNomeCliente());
//                request.setAttribute("cpfCliente", comprador.getCpfCliente());
//                request.setAttribute("idComprador", comprador.getIdCliente());
//
//                //Retorno pra tela
//                request.setAttribute("retorno", retorno);
//                request.getServletContext().getRequestDispatcher("/view/realizaContrato.jsp").forward(request, response);
//            }
//        } catch (IOException | NumberFormatException | ServletException e) {
//
//        }
//    }


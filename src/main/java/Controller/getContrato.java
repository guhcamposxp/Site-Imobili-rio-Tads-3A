package Controller;

import DAO.ClienteDAO;
import DAO.ContratoDAO;
import DAO.FilialDAO;
import Data.FuncionarioData;
import DAO.FuncionarioDAO;
import DAO.ImovelDAO;
import Data.ContratoData;
import Data.ContratoTemp;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "getContrato", urlPatterns = {"/getContrato"})
public class getContrato extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("idContrato");
        ContratoDAO daocontrato = new ContratoDAO();
        ClienteDAO daocliente = new ClienteDAO();
        FilialDAO daofilial = new FilialDAO();
        FuncionarioDAO daocorretor = new FuncionarioDAO();
        ImovelDAO daoimovel = new ImovelDAO();
        ContratoTemp c = new ContratoTemp();

        if (id == null) {
            List<ContratoData> lista = daocontrato.getTodosContratos();
            List<ContratoTemp> contratoObj = new ArrayList<>();
            for (int i = 0; i < lista.size(); i++) {
                
                int idComprador = lista.get(i).getIdComprador();
                int idContrato = lista.get(i).getIdContrato();
                int idImovel = lista.get(i).getIdImovel();
                int idProprietario = lista.get(i).getIdProprietario();
                int idCorretor = lista.get(i).getIdCorretor();
                int idFilial = lista.get(i).getIdFilial();
                String valor = lista.get(i).getValorContrato();
                
                
                String dataContrato = lista.get(i).getDataContrato();
                String comprador = daocliente.getClienteById(idComprador).getNomeCliente();
                String contrato = String.valueOf(idContrato);
                String descImovel = daoimovel.getImovelById(idImovel).getDescImovel();
                String proprietario = daocliente.getClienteById(idProprietario).getNomeCliente();
                String data = dataContrato;
                String corretor = daocorretor.getFuncionarioById(idCorretor).getNomeFuncionario();
                String filial = daofilial.getFilialByID(idFilial).getNomeFantasiaFilial();
                
                
                c.setComprador(comprador);
                c.setContrato(contrato);
                c.setImovel(descImovel);
                c.setProprietario(proprietario);
                c.setDataContrato(data);
                c.setCorretor(corretor);
                c.setFilial(filial);
                c.setValor(valor);
                contratoObj.add(c);
                request.setAttribute("lista", contratoObj);
            }
            
        } else {
            ContratoData lista = new ContratoData();
            lista = daocontrato.getContratoById(Integer.parseInt(id));
            request.setAttribute("lista", lista);
            response.sendRedirect("view/showContrato.jsp");
        }

    }
}

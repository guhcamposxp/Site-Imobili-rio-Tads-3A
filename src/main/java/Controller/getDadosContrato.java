/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ClienteDAO;
import DAO.FuncionarioDAO;
import DAO.ImovelDAO;
import Data.ClienteData;
import Data.FuncionarioData;
import Data.ImovelData;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Felipe Oliveira
 */
@WebServlet(name = "getDadosContrato", urlPatterns = {"/getDadosContrato"})
public class getDadosContrato extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//            //PEGANDO DADOS DO CLIENTE PROPRIETARIO
        ClienteDAO getCliente = new ClienteDAO();
        String cpf = request.getParameter("clienteProprietarioCpf");

            ClienteData lista = new ClienteData();
            lista = getCliente.getClienteByCpf(cpf);
            request.setAttribute("lista", lista);

        response.sendRedirect("view/gerarContrato.jsp");
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ClienteDAO;
import Data.ClienteData;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Felipe Oliveira
 */
@WebServlet(name = "alterarCliente", urlPatterns = {"/alterarCliente"})
public class alterarCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String retorno = "";
            String clienteId = request.getParameter("clienteId");
            String clienteNome = request.getParameter("clienteNome");
            String clienteSobrenome = request.getParameter("clienteSobrenome");
            String clienteCpf = request.getParameter("clienteCpf");
            String clienteRg = request.getParameter("clienteRg");
            String clienteRua = request.getParameter("clienteRua");
            String clienteNumero = request.getParameter("clienteNumero");
            String clienteComplemento = request.getParameter("clienteComplemento");
            String clienteBairro = request.getParameter("clienteBairro");
            String clienteCidade = request.getParameter("clienteCidade");
            String clienteCep = request.getParameter("clienteCep");
            String clienteNascimento = request.getParameter("clienteNascimento");
            String clienteEmail = request.getParameter("clienteEmail");
            String clienteSexo = request.getParameter("clienteSexo");
            String clienteCelular = request.getParameter("clienteCelular");
            String clienteTelefone = request.getParameter("clienteTelefone");


            boolean valida = validaCampos(clienteNome, clienteSobrenome, clienteCpf, clienteRg, clienteRua,
                    clienteNumero, clienteComplemento, clienteBairro, clienteCidade, clienteCep, clienteNascimento,
                    clienteEmail, clienteSexo, clienteCelular, clienteTelefone);

            if (valida) {

                ClienteDAO dao = new ClienteDAO();

                    ClienteData alteraCliente = new ClienteData();
                    int id = Integer.parseInt(clienteId);
                    alteraCliente = dao.getClienteById(id);
//                    alteraCliente.setClienteId(Integer.parseInt(clienteId));
                    alteraCliente.setClienteNome(clienteNome);
                    alteraCliente.setClienteSobrenome(clienteSobrenome);
                    alteraCliente.setClienteCpf(clienteCpf);
                    alteraCliente.setClienteRg(clienteRg);
                    alteraCliente.setClienteRua(clienteRua);
                    alteraCliente.setClienteNumero(clienteNumero);
                    alteraCliente.setClienteComplemento(clienteComplemento);
                    alteraCliente.setClienteBairro(clienteBairro);
                    alteraCliente.setClienteCidade(clienteCidade);
                    alteraCliente.setClienteCep(clienteCep);
                    alteraCliente.setClienteNascimento(clienteNascimento);
                    alteraCliente.setClienteEmail(clienteEmail);
                    alteraCliente.setClienteSexo(clienteSexo);
                    alteraCliente.setClienteCelular(clienteCelular);
                    alteraCliente.setClienteTelefone(clienteTelefone);
                    dao.atualizaCliente(alteraCliente);
                    retorno = "alteracao";
                }
            request.setAttribute("retorno", retorno);
            request.getRequestDispatcher("view/listarCliente.jsp").forward(request, response);
        } catch (IOException e) {
            System.out.println("Erro no servlet - ServletException - Classe: Cliente.java - Erro: " + e);
        }
    }
    
    private boolean validaCampos(String clienteNome, String clienteSobrenome, String clienteCpf, String clienteRg, String clienteRua,
                    String clienteNumero, String clienteComplemento, String clienteBairro, String clienteCidade, String clienteCep, String clienteNascimento,
                    String clienteEmail, String clienteSexo, String clienteCelular, String clienteTelefone) {

        if ((clienteNome == null) || (clienteSobrenome == null) || (clienteCpf == null)
                || (clienteRg == null) || (clienteRua == null) || (clienteNumero == null)
                || (clienteComplemento == null) || (clienteBairro == null) || (clienteCidade == null)
                || (clienteCep == null) || (clienteNascimento == null) || (clienteEmail == null)
                || (clienteSexo == null) || (clienteCelular == null) || (clienteTelefone == null)) {

            return false;
        } else {
            return true;
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */


}

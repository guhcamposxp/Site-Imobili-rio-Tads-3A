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

                if (clienteId != null) {
                    ClienteData alteraCliente = new ClienteData();
                    alteraCliente = dao.getClienteById(Integer.parseInt(clienteId));
                    alteraCliente.setClienteId(Integer.parseInt(clienteId));
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
                } else {
                    ClienteData novoCliente = new ClienteData();
                    //novoCliente.setClienteId(Integer.parseInt(clienteId));
                    novoCliente.setClienteNome(clienteNome);
                    novoCliente.setClienteSobrenome(clienteSobrenome);
                    novoCliente.setClienteCpf(clienteCpf);
                    novoCliente.setClienteRg(clienteRg);
                    novoCliente.setClienteRua(clienteRua);
                    novoCliente.setClienteNumero(clienteNumero);
                    novoCliente.setClienteComplemento(clienteComplemento);
                    novoCliente.setClienteBairro(clienteBairro);
                    novoCliente.setClienteCidade(clienteCidade);
                    novoCliente.setClienteCep(clienteCep);
                    novoCliente.setClienteNascimento(clienteNascimento);
                    novoCliente.setClienteEmail(clienteEmail);
                    novoCliente.setClienteSexo(clienteSexo);
                    novoCliente.setClienteCelular(clienteCelular);
                    novoCliente.setClienteTelefone(clienteTelefone);
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

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}

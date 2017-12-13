package Controller;

import DAO.ClienteDAO;
import DAO.ContratoDAO;
import DAO.FuncionarioDAO;
import DAO.ImovelDAO;
import Data.ClienteData;
import Data.ContratoData;
import Data.FuncionarioData;
import Data.ImovelData;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "insertContrato", urlPatterns = {"/insertContrato"})
public class insertContrato extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        
        try{
            String retorno = "";
            //COLETANDO DA VIEW OS IDs
            int clienteProprietarioId = Integer.parseInt(request.getParameter("proprietarioId"));
            int clienteInteressadoId = Integer.parseInt(request.getParameter("interessadoId"));
            int funcionarioId = Integer.parseInt(request.getParameter("funcionarioId"));
            int imovelId = Integer.parseInt(request.getParameter("imovelId"));
        
            //PEGA OS DADOS DO CLIENTE PROPRIETARIO
            ClienteData dadosClienteProprietario = new ClienteData();
            ClienteDAO daoProprietario = new ClienteDAO();
            dadosClienteProprietario = daoProprietario.getClienteById(clienteProprietarioId);
            
            
            //PEGA OS DADOS DO CLIENTE INTERESSADO
            ClienteData dadosClienteInteressado = new ClienteData();
            ClienteDAO daoInteressado = new ClienteDAO();
            dadosClienteInteressado = daoInteressado.getClienteById(clienteInteressadoId);
            
            //PEGA OS DADOS DO CORRETOR
            FuncionarioData dadosFuncionario = new FuncionarioData();
            FuncionarioDAO daoFuncionario = new FuncionarioDAO();
            dadosFuncionario = daoFuncionario.getFuncionarioById(funcionarioId);
            
            //DADOS DO FUNCIONARIO
            String nomeFuncionario = dadosFuncionario.getFuncionarioNome();
            String sobrenomeFuncionario = dadosFuncionario.getFuncionarioSobrenome();
            String cpfFuncionario = dadosFuncionario.getFuncionarioCpf();
            String emailFuncionario = dadosFuncionario.getFuncionarioEmail();
            String filialFuncionario = dadosFuncionario.getFuncionarioFilial();
            //DADOS DO FUNCIONARIO
            
            
            //DADOS DO IMOVEL
            
            String dataContrato = request.getParameter("dataContrato");
            String imovelRua = request.getParameter("imovelRua");
            String imovelNumero = request.getParameter("imovelNumero");
            String imovelComplemento = request.getParameter("imovelComplemento");
            String imovelCep = request.getParameter("imovelCep");
            String imovelBairro = request.getParameter("imovelBairro");
            String imovelCidade = request.getParameter("imovelCidade");
            String imovelEstado = request.getParameter("imovelEstado");
            String imovelTipoTransacao = request.getParameter("imovelTipoTransacao");
            String imovelVagasGaragem = request.getParameter("imovelVagasGaragem");
            String imovelDormitorios = request.getParameter("imovelDormitorios");
            String imovelTipo = request.getParameter("imovelTipo");
            String imovelMetros = request.getParameter("imovelMetros");
            String imovelVlrVenda = request.getParameter("imovelVlrVenda");
            String imovelVlrAluguel = request.getParameter("imovelVlrAluguel");
            String imovelDescricao = request.getParameter("imovelDescricao");
            //DADOS DO IMOVEL
            
            //DADOS DO PROPRIETARIO
            int idClienteProprietario = dadosClienteProprietario.getClienteId();
            String nomeClienteProprietario = dadosClienteProprietario.getClienteNome();
            String sobrenomeClienteProprietario = dadosClienteProprietario.getClienteSobrenome();
            String cpfClienteProprietario = dadosClienteProprietario.getClienteCpf();
            String rgClienteProprietario = dadosClienteProprietario.getClienteRg();
            String emailClienteProprietario = dadosClienteProprietario.getClienteEmail();
            String celularClienteProprietario = dadosClienteProprietario.getClienteCelular();
            String telefoneClienteProprietario = dadosClienteProprietario.getClienteTelefone();
            //DADOS DO PROPRIETARIO
            
            //DADOS DO INTERESSADO
            int idClienteInteressado = dadosClienteInteressado.getClienteId();
            String nomeClienteInteressado = dadosClienteInteressado.getClienteNome();
            String sobrenomeClienteInteressado = dadosClienteInteressado.getClienteSobrenome();
            String cpfClienteInteressado = dadosClienteInteressado.getClienteCpf();
            String rgClienteInteressado = dadosClienteInteressado.getClienteRg();
            String emailClienteInteressado = dadosClienteInteressado.getClienteEmail();
            String celularClienteInteressado = dadosClienteInteressado.getClienteCelular();
            String telefoneClienteInteressado = dadosClienteInteressado.getClienteTelefone();
            //DADOS DO INTERESSADO
            
            
            
            ContratoDAO daoContrato = new ContratoDAO();
            
            ContratoData novoContrato = new ContratoData();
            novoContrato.setContratoData(dataContrato);
            
            novoContrato.setContratoFuncionarioNome(nomeFuncionario);
            novoContrato.setContratoFuncionarioSobrenome(sobrenomeFuncionario);
            novoContrato.setContratoFuncionarioCpf(cpfFuncionario);
            novoContrato.setContratoFuncionarioEmail(emailFuncionario);
            novoContrato.setContratoFuncionarioFilial(emailFuncionario);
            
                    
            novoContrato.setContratoClienteProprietarioId(idClienteProprietario);
            novoContrato.setContratoClienteProprietarioNome(nomeClienteProprietario);
            novoContrato.setContratoClienteProprietarioSobrenome(sobrenomeClienteProprietario);
            novoContrato.setContratoClienteProprietarioCpf(cpfClienteProprietario);
            novoContrato.setContratoClienteProprietarioRg(rgClienteProprietario);
            novoContrato.setContratoClienteProprietarioEmail(emailClienteProprietario);
            novoContrato.setContratoClienteProprietarioCelular(celularClienteProprietario);
            novoContrato.setContratoClienteProprietarioTelefone(telefoneClienteProprietario);
            

            novoContrato.setContratoClienteInteressadoId(idClienteInteressado);
            novoContrato.setContratoClienteInteressadoNome(nomeClienteInteressado);
            novoContrato.setContratoClienteInteressadoSobrenome(sobrenomeClienteInteressado);
            novoContrato.setContratoClienteInteressadoCpf(cpfClienteInteressado);
            novoContrato.setContratoClienteInteressadoRg(rgClienteInteressado);
            novoContrato.setContratoClienteInteressadoEmail(emailClienteInteressado);
            novoContrato.setContratoClienteInteressadoCelular(celularClienteInteressado);
            novoContrato.setContratoClienteInteressadoTelefone(telefoneClienteInteressado);
            
            novoContrato.setContratoImovelId(imovelId);
            novoContrato.setContratoIMovelRua(imovelRua);
            novoContrato.setContratoIMovelNumero(imovelNumero);
            novoContrato.setContratoIMovelComplemento(imovelComplemento);
            novoContrato.setContratoIMovelCep(imovelCep);
            novoContrato.setContratoIMovelBairro(imovelBairro);
            novoContrato.setContratoIMovelCidade(imovelCidade);
            novoContrato.setContratoIMovelEstado(imovelEstado);
            novoContrato.setContratoIMovelTipoTransacao(imovelTipoTransacao);
            novoContrato.setContratoIMovelQtdVagasGaragem(imovelVagasGaragem);
            novoContrato.setContratoIMovelQtdQuartos(imovelDormitorios);
            novoContrato.setContratoIMovelTipo(imovelTipo);
            novoContrato.setContratoIMovelMetrosQuadrado(imovelMetros);
            novoContrato.setContratoIMovelVlrVenda(imovelVlrVenda);
            novoContrato.setContratoIMovelVlrAluguel(imovelVlrAluguel);
            novoContrato.setContratoIMovelDescricao(imovelDescricao);
            
            daoContrato.salvaContrato(novoContrato);
            retorno = "criacao";
            
            request.setAttribute("retorno", retorno);
            request.getRequestDispatcher("view/listarImovel.jsp").forward(request, response);
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

//package Controller;
//
//import DAO.ClienteDAO;
//import DAO.ContratoDAO;
//import DAO.ImovelDAO;
//import Data.ClienteData;
//import Data.ImovelData;
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet(name = "insertContrato", urlPatterns = {"/insertContrato"})
//public class insertContrato extends HttpServlet {
//
//    
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//        
//            ClienteData dadosClienteProprietario = new ClienteData();
//            ClienteDAO daoProprietario = new ClienteDAO();
//            dadosClienteProprietario = daoProprietario.getClienteById(Integer.parseInt(clienteProprietarioId));
//        
//        
//        
//        
//        
//        
//        
//            String retorno = "";
//            String clienteProprietarioId = request.getParameter("proprietarioId");
//            String clienteInteressadoId = request.getParameter("interessadoId");
//            
//            //DADOS DO IMOVEL
//            String imovelRua = request.getParameter("imovelRua");
//            String imovelNumero = request.getParameter("imovelNumero");
//            String imovelComplemento = request.getParameter("imovelComplemento");
//            String imovelCep = request.getParameter("imovelCep");
//            String imovelBairro = request.getParameter("imovelBairro");
//            String imovelCidade = request.getParameter("imovelCidade");
//            String imovelEstado = request.getParameter("imovelEstado");
//            String imovelTipoTransacao = request.getParameter("imovelTipoTransacao");
//            String imovelVagasGaragem = request.getParameter("imovelVagasGaragem");
//            String imovelDormitorios = request.getParameter("imovelDormitorios");
//            String imovelTipo = request.getParameter("imovelTipo");
//            String imovelMetros = request.getParameter("imovelMetros");
//            String imovelVlrVenda = request.getParameter("imovelVlrVenda");
//            String imovelVlrAluguel = request.getParameter("imovelVlrAluguel");
//            String imovelDescricao = request.getParameter("imovelDescricao");
//            //DADOS DO IMOVEL
//            //DADOS DO PROPRIETARIO
//            String nomeClienteProprietario = dadosClienteProprietario.getClienteNome();
//            String sobrenomeClienteProprietario = dadosClienteProprietario.getClienteSobrenome();
//            String cpfClienteProprietario = dadosClienteProprietario.getClienteCpf();
//            String rgClienteProprietario = dadosClienteProprietario.getClienteRg();
//            String emailClienteProprietario = dadosClienteProprietario.getClienteEmail();
//            
//            //DADOS DO PROPRIETARIO
//            
//            
//            
//            
//            
//            ContratoDAO daoContrato = new ContratoDAO();
//            
//            
//
////            if (valida) {
////
////                ClienteDAO dao = new ClienteDAO();
////
////                if (clienteId != null) {
////                    ClienteData alteraCliente = new ClienteData();
////                    alteraCliente = dao.getClienteById(Integer.parseInt(clienteId));
////                    alteraCliente.setClienteId(Integer.parseInt(clienteId));
////                    alteraCliente.setClienteNome(clienteNome);
////                    alteraCliente.setClienteSobrenome(clienteSobrenome);
////                    alteraCliente.setClienteCpf(clienteCpf);
////                    alteraCliente.setClienteRg(clienteRg);
////                    alteraCliente.setClienteRua(clienteRua);
////                    alteraCliente.setClienteNumero(clienteNumero);
////                    alteraCliente.setClienteComplemento(clienteComplemento);
////                    alteraCliente.setClienteBairro(clienteBairro);
////                    alteraCliente.setClienteCidade(clienteCidade);
////                    alteraCliente.setClienteCep(clienteCep);
////                    alteraCliente.setClienteNascimento(clienteNascimento);
////                    alteraCliente.setClienteEmail(clienteEmail);
////                    alteraCliente.setClienteSexo(clienteSexo);
////                    alteraCliente.setClienteCelular(clienteCelular);
////                    alteraCliente.setClienteTelefone(clienteTelefone);
////                    dao.atualizaCliente(alteraCliente);
////                    retorno = "alteracao";
////                } else {
////                    ClienteData novoCliente = new ClienteData();
////                    //novoCliente.setClienteId(Integer.parseInt(clienteId));
////                    novoCliente.setClienteNome(clienteNome);
////                    novoCliente.setClienteSobrenome(clienteSobrenome);
////                    novoCliente.setClienteCpf(clienteCpf);
////                    novoCliente.setClienteRg(clienteRg);
////                    novoCliente.setClienteRua(clienteRua);
////                    novoCliente.setClienteNumero(clienteNumero);
////                    novoCliente.setClienteComplemento(clienteComplemento);
////                    novoCliente.setClienteBairro(clienteBairro);
////                    novoCliente.setClienteCidade(clienteCidade);
////                    novoCliente.setClienteCep(clienteCep);
////                    novoCliente.setClienteNascimento(clienteNascimento);
////                    novoCliente.setClienteEmail(clienteEmail);
////                    novoCliente.setClienteSexo(clienteSexo);
////                    novoCliente.setClienteCelular(clienteCelular);
////                    novoCliente.setClienteTelefone(clienteTelefone);
////                    dao.cadastraCliente(novoCliente);
////                    retorno = "criacao";
////                }
////            } else {
////                retorno = "erro";
////            }
////            request.setAttribute("retorno", retorno);
////            request.getRequestDispatcher("view/cadastrarCliente.jsp").forward(request, response);
////        } catch (IOException e) {
////            System.out.println("Erro no servlet - ServletException - Classe: Cliente.java - Erro: " + e);
////        }
//
//    }
//
//    private boolean validaCampos(String clienteNome, String clienteSobrenome, String clienteCpf, String clienteRg, String clienteRua,
//                    String clienteNumero, String clienteComplemento, String clienteBairro, String clienteCidade, String clienteCep, String clienteNascimento,
//                    String clienteEmail, String clienteSexo, String clienteCelular, String clienteTelefone) {
//
//        if ((clienteNome == null) || (clienteSobrenome == null) || (clienteCpf == null)
//                || (clienteRg == null) || (clienteRua == null) || (clienteNumero == null)
//                || (clienteComplemento == null) || (clienteBairro == null) || (clienteCidade == null)
//                || (clienteCep == null) || (clienteNascimento == null) || (clienteEmail == null)
//                || (clienteSexo == null) || (clienteCelular == null) || (clienteTelefone == null)) {
//
//            return false;
//        } else {
//            return true;
//        }
//
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//    }
//}

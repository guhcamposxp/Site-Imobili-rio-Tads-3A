package Controller;

import Data.FuncionarioData;
import DAO.FuncionarioDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "insertFuncionario", urlPatterns = {"/insertFuncionario"})
public class insertFuncionario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
            String retorno = "";
            String funcionarioId = request.getParameter("FuncionarioId");
            String funcionarioNome = request.getParameter("funcionarioNome");
            String funcionarioSobrenome = request.getParameter("funcionarioSobrenome");
            String funcionarioCpf = request.getParameter("funcionarioCpf");
            String funcionarioRg = request.getParameter("funcionarioRg");
            String funcionarioSexo = request.getParameter("funcionarioSexo");
            String funcionarioNascimento = request.getParameter("funcionarioNascimento");
            String funcionarioEmail = request.getParameter("funcionarioEmail");
            String funcionarioSenha = request.getParameter("funcionarioSenha");
            String funcionarioFilial = request.getParameter("FuncionarioFilial");
            String funcionarioCargo = request.getParameter("funcionarioCargo");
            String funcionarioPermissao = request.getParameter("funcionarioPermissao");
                    
            boolean valida = validaCampos(funcionarioNome, funcionarioSobrenome, funcionarioCpf, funcionarioRg, funcionarioSexo,
                    funcionarioNascimento, funcionarioEmail, funcionarioCargo, funcionarioSenha, funcionarioFilial);

            System.out.println(valida);
            
            

                FuncionarioDAO dao = new FuncionarioDAO();
                System.out.println(funcionarioId + " id da ousadia aquatica");
                if (funcionarioId != null) {
                    FuncionarioData alteraFuncionario = new FuncionarioData();
                    alteraFuncionario = dao.getFuncionarioById(Integer.parseInt(funcionarioId));
                    alteraFuncionario.setFuncionarioNome(funcionarioNome);
                    alteraFuncionario.setFuncionarioSobrenome(funcionarioSobrenome);
                    alteraFuncionario.setFuncionarioCpf(funcionarioCpf);
                    alteraFuncionario.setFuncionarioRg(funcionarioRg);
                    alteraFuncionario.setFuncionarioSexo(funcionarioSexo);
                    alteraFuncionario.setFuncionarioNascimento(funcionarioNascimento);
                    alteraFuncionario.setFuncionarioEmail(funcionarioEmail);
                    alteraFuncionario.setFuncionarioSenha(funcionarioSenha);
                    alteraFuncionario.setFuncionarioFilial(funcionarioFilial);
                    alteraFuncionario.setFuncionarioCargo(funcionarioCargo);
                    alteraFuncionario.setFuncionarioPermissao(funcionarioPermissao);
                    dao.atualizaFuncionario(alteraFuncionario);
                    System.out.println("aqui foi");
                    retorno = "alteracao";
                } else {
                    FuncionarioData novoFuncionario = new FuncionarioData();
                    novoFuncionario.setFuncionarioNome(funcionarioNome);
                    novoFuncionario.setFuncionarioSobrenome(funcionarioSobrenome);
                    novoFuncionario.setFuncionarioCpf(funcionarioCpf);
                    novoFuncionario.setFuncionarioRg(funcionarioRg);
                    novoFuncionario.setFuncionarioSexo(funcionarioSexo);
                    novoFuncionario.setFuncionarioNascimento(funcionarioNascimento);
                    novoFuncionario.setFuncionarioEmail(funcionarioEmail);
                    novoFuncionario.setFuncionarioSenha(funcionarioSenha);
                    novoFuncionario.setFuncionarioFilial(funcionarioFilial);
                    novoFuncionario.setFuncionarioCargo(funcionarioCargo);
                    novoFuncionario.setFuncionarioPermissao(funcionarioPermissao);
                    dao.cadastraFuncionario(novoFuncionario);
                    retorno = "criacao";
                }

                request.setAttribute("retorno", retorno);
                request.getRequestDispatcher("view/cadastrarFuncionario.jsp").forward(request, response);
            
        } catch (IOException e) {
            System.out.println("Erro no servlet - ServletException - Classe: Funcionario.java - Erro: " + e);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private boolean validaCampos(String funcionarioNome, String funcionarioSobrenome, String funcionarioCpf,
            String funcionarioRg, String funcionarioSexo, String funcionarioNascimento, String funcionarioEmail,
            String funcionarioCargo, String funcionarioSenha, String funcionarioFilial) {

        if ((funcionarioNome == null) || (funcionarioSobrenome == null) || (funcionarioCpf == null)
                || (funcionarioRg == null) || (funcionarioSexo == null) || (funcionarioEmail == null)
                || (funcionarioNascimento == null) || (funcionarioCargo == null)
                || (funcionarioSenha == null) || (funcionarioFilial == null)) {
            return false;
        } else {

            return true;
        }

    }
}

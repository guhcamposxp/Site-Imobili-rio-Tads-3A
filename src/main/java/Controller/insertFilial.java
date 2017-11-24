package Controller;

import Data.FilialData;
import DAO.FilialDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "insertFilial", urlPatterns = {"/insertFilial"})
public class insertFilial extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String retorno = "foi";
        String filialRua = request.getParameter("filialRua");
        String filialNum = request.getParameter("filialNum");
        String filialCep = request.getParameter("filialCep");
        String filialEstado = request.getParameter("filialEstado");
        String filialCidade = request.getParameter("filialCidade");
        String filialBairro = request.getParameter("filialBairro");
        String filialCnpj = request.getParameter("filialCnpj");
        String filialNome = request.getParameter("filialNome");
        
        FilialDAO dao = new FilialDAO();
        
        FilialData novoFilial = new FilialData();
        novoFilial.setFilialRua(filialRua);
        novoFilial.setFilialNum(filialNum);
        novoFilial.setFilialCep(filialCep);
        novoFilial.setFilialEstado(filialEstado);
        novoFilial.setFilialCidade(filialCidade);
        novoFilial.setFilialBairro(filialBairro);
        novoFilial.setFilialCnpj(filialCnpj);
        novoFilial.setFilialNome(filialNome);
        dao.cadastraFilial(novoFilial);
        
        request.setAttribute("retorno", retorno);
        request.getRequestDispatcher("view/cadastrarFilial.jsp").forward(request, response);

    }

    private boolean validaCampos(String filialNome, String filialSobrenome, String filialCpf, String filialRg, String filialRua,
                    String filialNumero, String filialComplemento, String filialBairro, String filialCidade, String filialCep, String filialNascimento,
                    String filialEmail, String filialSexo, String filialCelular, String filialTelefone) {

        if ((filialNome == null) || (filialSobrenome == null) || (filialCpf == null)
                || (filialRg == null) || (filialRua == null) || (filialNumero == null)
                || (filialComplemento == null) || (filialBairro == null) || (filialCidade == null)
                || (filialCep == null) || (filialNascimento == null) || (filialEmail == null)
                || (filialSexo == null) || (filialCelular == null) || (filialTelefone == null)) {

            return false;
        } else {
            return true;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}

package Controller;

import DAO.FilialDAO;
import DAO.FuncionarioDAO;
import Data.FilialData;
import Data.FuncionarioData;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "validLogin", urlPatterns = {"/validLogin"})
public class validLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String retorno = "/view/BoasVindas.jsp";
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        FuncionarioData funcionario = new FuncionarioData();
        FuncionarioDAO dao = new FuncionarioDAO();
        funcionario = dao.loginFuncionario(usuario, senha);
        if (funcionario.getEmailFuncionario() == null) {
            retorno = "/view/index.jsp";
        } else {

        }
        /*FilialDAO daoFilial = new FilialDAO();
        FilialData filial = new FilialData();*/
        //filial = daoFilial.getFilialByID(funcionario.getFilialFuncionario());

        Date data = new Date();
        SimpleDateFormat formatador = new SimpleDateFormat("dd/MM/yyyy");

        HttpSession session = request.getSession();
        session.setAttribute("dataatual", formatador.format(data));
        session.setAttribute("nomeFuncionario", funcionario.getNomeFuncionario());
        session.setAttribute("cargoFuncionario", funcionario.getCargoFuncionario());
        //session.setAttribute("filialFuncionario", filial.getNomeFantasiaFilial());
        request.getServletContext().getRequestDispatcher(retorno).forward(request, response);
    }

}

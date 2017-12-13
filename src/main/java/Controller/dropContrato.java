/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ContratoDAO;
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
@WebServlet(name = "dropContrato", urlPatterns = {"/dropContrato"})
public class dropContrato extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id = request.getParameter("contratoId");
            ContratoDAO getContrato = new ContratoDAO();
            getContrato.excluirContrato(Integer.parseInt(id));
            response.sendRedirect("view/listarContratos.jsp");
        } catch (Exception e) {
            System.out.println("Erro Servlet - Drop Contrato");
            response.sendRedirect("view/listarContratos.jsp");
        }
    }


}

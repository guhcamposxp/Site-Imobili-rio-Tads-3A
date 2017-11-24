package DAO;

import Connection.ConnectionFactory;
import Data.ContratoData;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ContratoDAO {

    public boolean salvaContrato(ContratoData contrato) {
        Boolean retorno = false;
        try {
            String sql = "INSERT INTO CONTRATO  (ID_COMPRADOR,\n"
                    + "ID_IMOVEL,\n"
                    + "ID_PROPRIETARIO,\n"
                    + "ID_FILIAL,\n"
                    + "ID_CORRETOR,\n"
                    + "DATA_CONTRATO) VALUES (?,?,?,?,?,?)";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();

            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);

            //Captura campos e seta na query
            pstmt.setInt(1, contrato.getIdComprador());
            pstmt.setInt(2, contrato.getIdImovel());
            pstmt.setInt(3, contrato.getIdProprietario());
            pstmt.setInt(4, contrato.getIdFilial());
            pstmt.setInt(5, contrato.getIdCorretor());
            pstmt.setString(6, contrato.getDataContrato());
            pstmt.executeUpdate();
            connection.close();
            retorno = true;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ContratoDAO.java - salvaContrato - Erro: " + e);
        }
        return retorno;

    }

    public ArrayList<ContratoData> getTodosContratos() {
        ArrayList<ContratoData> listaContrato = new ArrayList<>();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM CONTRATO");
            while (rs.next()) {
                ContratoData contrato = new ContratoData();
                contrato.setIdContrato(Integer.parseInt(rs.getString("ID_CONTRATO")));
                contrato.setIdComprador(Integer.parseInt(rs.getString("ID_COMPRADOR")));
                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_PROPRIETARIO")));
                contrato.setIdFilial(Integer.parseInt(rs.getString("ID_FILIAL")));
                contrato.setIdCorretor(Integer.parseInt(rs.getString("ID_CORRETOR")));
                contrato.setDataContrato(rs.getString("DATA_CONTRATO"));
                listaContrato.add(contrato);
            }
            connection.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ContratoDAO.java - getTodosContratos - Erro: " + e);
        }
        return listaContrato;
    }

    public ArrayList<ContratoData> getTodosContratosByData(String dataInicial, String dataFinal) {
        ArrayList<ContratoData> listaContrato = new ArrayList<>();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM CONTRATO WHERE DATA_CONTRATO BETWEEN " + dataInicial + " AND +" + dataFinal);
            while (rs.next()) {
                ContratoData contrato = new ContratoData();
                contrato.setIdContrato(Integer.parseInt(rs.getString("ID_CONTRATO")));
                contrato.setIdComprador(Integer.parseInt(rs.getString("ID_COMPRADOR")));
                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_PROPRIETARIO")));
                contrato.setIdFilial(Integer.parseInt(rs.getString("ID_FILIAL")));
                contrato.setIdCorretor(Integer.parseInt(rs.getString("ID_CORRETOR")));
                contrato.setDataContrato(rs.getString("DATA_CONTRATO"));
                listaContrato.add(contrato);
            }
            connection.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ContratoDAO.java - getTodosContratosByData - Erro: " + e);
        }
        return listaContrato;
    }

    public ContratoData getContratoById(int idContrato) {
        ContratoData contrato = new ContratoData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM CONTRATO WHERE ID_CONTRATO = " + idContrato);
            while (rs.next()) {
                contrato.setIdContrato(Integer.parseInt(rs.getString("ID_CONTRATO")));
                contrato.setIdComprador(Integer.parseInt(rs.getString("ID_COMPRADOR")));
                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_PROPRIETARIO")));
                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_FILIAL")));
                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_CORRETOR")));
                contrato.setDataContrato(rs.getString("DATA_CONTRATO"));
            }
            connection.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ContratoDAO.java - getContratoById - Erro: " + e);
        }
        return contrato;
    }

}

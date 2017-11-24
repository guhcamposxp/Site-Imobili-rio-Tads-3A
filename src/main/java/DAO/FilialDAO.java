package DAO;

import Data.FilialData;
import Connection.ConnectionFactory;
import Data.FilialData;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class FilialDAO {

    public boolean cadastraFilial(FilialData Filial) {
        Boolean retorno = false;
        try {
            String sql = "INSERT INTO Filial (END_RUA_FILIAL,\n"
                    + "END_NUM_FILIAL,\n"
                    + "END_CEP_FILIAL,\n"
                    + "END_EST_FILIAL,\n"
                    + "END_CID_FILIAL,\n"
                    + "END_BAIRRO_FILIAL,\n"
                    + "END_COMP_FILIAL,\n"
                    + "CNPJ_FILIAL,\n"
                    + "NOME_FANTASIA_FILIAL) VALUES (?,?,?,?,?,?,?,?,?)";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.setString(1, Filial.getEndRuaFilial());
            pstmt.setString(2, Filial.getEndNumFilial());
            pstmt.setString(3, Filial.getEndCepFilial());
            pstmt.setString(4, Filial.getEndEstFilial());
            pstmt.setString(5, Filial.getEndCidFilial());
            pstmt.setString(6, Filial.getEndBairroFilial());
            pstmt.setString(7, Filial.getEndCompFilial());
            pstmt.setString(8, Filial.getCnpjFilial());
            pstmt.setString(9, Filial.getNomeFantasiaFilial());
            //Executa ação
            pstmt.executeUpdate();
            //Fecha o banco
            connection.close();
        } catch (SQLException ex) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FilialDAO.java - Erro: " + ex);
        } catch (ClassNotFoundException ex) {
            System.out.println("Erro no banco de dados - ClassNotFoundException - Classe: FilialDAO.java - Erro: " + ex);
        }
        return retorno;
    }

    public boolean atualizaFilial(FilialData filial) throws SQLException {
        Boolean retorno = false;
        try {

            String sql = "UPDATE FILIAL SET "
                    + "END_RUA_FILIAL = '" + filial.getEndRuaFilial() + "', \n"
                    + "END_NUM_FILIAL = " + filial.getEndNumFilial() + ", \n"
                    + "END_CEP_FILIAL = " + filial.getEndCepFilial() + ", \n"
                    + "END_EST_FILIAL = '" + filial.getEndEstFilial() + "', \n"
                    + "END_CID_FILIAL = '" + filial.getEndCidFilial() + "', \n"
                    + "END_BAIRRO_FILIAL = '" + filial.getEndBairroFilial() + "', \n"
                    + "END_COMP_FILIAL = '" + filial.getEndCompFilial() + "', \n"
                    + "CNPJ_FILIAL = '" + filial.getCnpjFilial() + "', \n"
                    + "NOME_FANTASIA_FILIAL = '" + filial.getNomeFantasiaFilial() + "'  \n"
                    + "WHERE ID_FILIAL = " + filial.getIdFilial() + "";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            System.out.println(sql);
            pstmt.execute(sql);
            connection.close();
            retorno = true;

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FilialDAO.java - atualizaFilial - Erro: " + e);
            retorno = false;
        }
        return retorno;

    }

    public ArrayList<FilialData> getTodasFiliais() {
        ArrayList<FilialData> listaFilial = new ArrayList<>();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM FILIAL");
            while (rs.next()) {
                FilialData filial = new FilialData();
                filial.setIdFilial(Integer.parseInt(rs.getString("ID_FILIAL")));
                filial.setEndRuaFilial(rs.getString("END_RUA_FILIAL"));
                filial.setEndNumFilial(rs.getString("END_NUM_FILIAL"));
                filial.setEndCepFilial(rs.getString("END_CEP_FILIAL"));
                filial.setEndEstFilial(rs.getString("END_EST_FILIAL"));
                filial.setEndCidFilial(rs.getString("END_CID_FILIAL"));
                filial.setEndBairroFilial(rs.getString("END_BAIRRO_FILIAL"));
                filial.setEndCompFilial(rs.getString("END_COMP_FILIAL"));
               filial.setCnpjFilial(rs.getString("CNPJ_FILIAL"));
                filial.setNomeFantasiaFilial(rs.getString("NOME_FANTASIA_FILIAL"));
                listaFilial.add(filial);
            }
            connection.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FilialDAO.java - getTodasFiliais - Erro: " + e);
        }
        return listaFilial;
    }

    public FilialData getFilialByID(int idFilial) {
        FilialData filial = new FilialData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM FILIAL WHERE ID_FILIAL = " + idFilial);
            while (rs.next()) {
                filial.setIdFilial(Integer.parseInt(rs.getString("ID_FILIAL")));
                filial.setEndRuaFilial(rs.getString("END_RUA_FILIAL"));
                filial.setEndNumFilial(rs.getString("END_NUM_FILIAL"));
                filial.setEndCepFilial(rs.getString("END_CEP_FILIAL"));
                filial.setEndEstFilial(rs.getString("END_EST_FILIAL"));
                filial.setEndCidFilial(rs.getString("END_CID_FILIAL"));
                filial.setEndBairroFilial(rs.getString("END_BAIRRO_FILIAL"));
                filial.setEndCompFilial(rs.getString("END_COMP_FILIAL"));
                filial.setCnpjFilial(rs.getString("CNPJ_FILIAL"));
                filial.setNomeFantasiaFilial(rs.getString("NOME_FANTASIA_FILIAL"));
            }
            connection.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FilialDAO.java - getFilialByID - Erro: " + e);
        }
        return filial;
    }
    public boolean excluirFilial(int idFilial){
        try {
            String sql = "DELETE FROM FILIAL WHERE ID_FILIAL = " + idFilial;
            Connection connection = new ConnectionFactory().getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.executeUpdate(sql);
            connection.close();
            return true;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FilialDAO.java - excluirFilial - Erro: " + e);
            return false;
        }
    }
}

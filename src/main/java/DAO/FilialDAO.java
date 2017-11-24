package DAO;

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
            String sql = "INSERT INTO Filial (FILIAL_RUA,\n"
                    + "FILIAL_NUM,\n"
                    + "FILIAL_CEP,\n"
                    + "FILIAL_ESTADO,\n"
                    + "FILIAL_CIDADE,\n"
                    + "FILIAL_BAIRRO,\n"
                    + "FILIAL_CNPJ,\n"
                    + "FILIAL_NOME) VALUES (?,?,?,?,?,?,?,?)";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.setString(1, Filial.getFilialRua());
            pstmt.setString(2, Filial.getFilialNum());
            pstmt.setString(3, Filial.getFilialCep());
            pstmt.setString(4, Filial.getFilialEstado());
            pstmt.setString(5, Filial.getFilialCidade());
            pstmt.setString(6, Filial.getFilialBairro());
            pstmt.setString(7, Filial.getFilialCnpj());
            pstmt.setString(8, Filial.getFilialNome());
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
                    + "FILIAL_RUA = '" + filial.getFilialRua()+ "', \n"
                    + "FILIAL_NUM = " + filial.getFilialNum()+ ", \n"
                    + "FILIAL_CEP = " + filial.getFilialCep()+ ", \n"
                    + "FILIAL_ESTADO = '" + filial.getFilialEstado()+ "', \n"
                    + "FILIAL_CIDADE = '" + filial.getFilialCidade() + "', \n"
                    + "FILIAL_BAIRRO = '" + filial.getFilialBairro() + "', \n"
                    + "FILIAL_CNPJ = '" + filial.getFilialCnpj() + "', \n"
                    + "FILIAL_NOME = '" + filial.getFilialNome() + "'  \n"
                    + "WHERE ID_FILIAL = " + filial.getFilialId() + "";

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
                filial.setFilialId(Integer.parseInt(rs.getString("ID_FILIAL")));
                filial.setFilialRua(rs.getString("FILIAL_RUA"));
                filial.setFilialNum(rs.getString("FILIAL_NUM"));
                filial.setFilialCep(rs.getString("FILIAL_CEP"));
                filial.setFilialEstado(rs.getString("FILIAL_ESTADO"));
                filial.setFilialCidade(rs.getString("FILIAL_CIDADE"));
                filial.setFilialBairro(rs.getString("FILIAL_BAIRRO"));
                filial.setFilialCnpj(rs.getString("FILIAL_CNPJ"));
                filial.setFilialNome(rs.getString("FILIAL_NOME"));
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
                filial.setFilialId(Integer.parseInt(rs.getString("ID_FILIAL")));
                filial.setFilialRua(rs.getString("FILIAL_RUA"));
                filial.setFilialNum(rs.getString("FILIAL_NUM"));
                filial.setFilialCep(rs.getString("FILIAL_CEP"));
                filial.setFilialEstado(rs.getString("FILIAL_ESTADO"));
                filial.setFilialCidade(rs.getString("FILIAL_CIDADE"));
                filial.setFilialBairro(rs.getString("FILIAL_BAIRRO"));
                filial.setFilialCnpj(rs.getString("FILIAL_CNPJ"));
                filial.setFilialNome(rs.getString("FILIAL_NOME"));
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

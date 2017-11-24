package DAO;

import Connection.ConnectionFactory;
import Data.ClienteData;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ClienteDAO {

    public boolean cadastraCliente(ClienteData cliente) {
        Boolean retorno = false;
        try {

            String sql = "INSERT INTO CLIENTE (NOME_CLIENTE,\n"
                    + "CPF_CLIENTE,\n"
                    + "RG_CLIENTE,\n"
                    + "SEXO_CLIENTE,\n"
                    + "EMAIL_CLIENTE,\n"
                    + "NASCIMENTO_CLIENTE,\n"
                    + "TEL_FIXO_CLIENTE,\n"
                    + "TEL_CEL_CLIENTE,\n"
                    + "END_RUA_CLIENTE,\n"
                    + "END_NUM_CLIENTE,\n"
                    + "END_BAIRRO_CLIENTE,\n"
                    + "END_CEP_CLIENTE,\n"
                    + "END_EST_CLIENTE,\n"
                    + "END_CID_CLIENTE,\n"
                    + "END_COMP_CLIENTE,\n"
                    + "EST_CIVIL_CLIENTE) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.setString(1, cliente.getNomeCliente());
            pstmt.setString(2, cliente.getCpfCliente());
            pstmt.setString(3, cliente.getRgCliente());
            pstmt.setString(4, cliente.getSexoCliente());
            pstmt.setString(5, cliente.getEmailCliente());
            pstmt.setString(6, cliente.getNascimentoCliente());
            pstmt.setString(7, cliente.getTelFixoCliente());
            pstmt.setString(8, cliente.getTelCelCliente());
            pstmt.setString(9, cliente.getEndRuaCliente());
            pstmt.setString(10, cliente.getEndNumCliente());
            pstmt.setString(11, cliente.getEndBairroCliente());
            pstmt.setString(12, cliente.getEndCepCliente());
            pstmt.setString(13, cliente.getEndEstCliente());
            pstmt.setString(14, cliente.getEndCidCliente());
            pstmt.setString(15, cliente.getEndCompCliente());
            pstmt.setString(16, cliente.getEstCivilCliente());
            pstmt.executeUpdate();
            connection.close();
            retorno = true;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - cadastraCliente - Erro: " + e);
        }
        return retorno;
    }

    public boolean atualizaCliente(ClienteData cliente) {
        Boolean retorno = false;
        try {

            String sql = "UPDATE CLIENTE SET "
                    + "NOME_CLIENTE = '" + cliente.getNomeCliente() + "', \n"
                    + "CPF_CLIENTE = '" + cliente.getCpfCliente() + "', \n"
                    + "RG_CLIENTE = '" + cliente.getRgCliente() + "', \n"
                    + "SEXO_CLIENTE = '" + cliente.getSexoCliente() + "', \n"
                    + "EMAIL_CLIENTE = '" + cliente.getEmailCliente() + "', \n"
                    + "NASCIMENTO_CLIENTE = '" + cliente.getNascimentoCliente() + "', \n"
                    + "TEL_FIXO_CLIENTE = '" + cliente.getTelFixoCliente() + "', \n"
                    + "TEL_CEL_CLIENTE = '" + cliente.getTelCelCliente() + "', \n"
                    + "END_RUA_CLIENTE = '" + cliente.getEndRuaCliente() + "', \n"
                    + "END_NUM_CLIENTE = '" + cliente.getEndNumCliente() + "', \n"
                    + "END_BAIRRO_CLIENTE = '" + cliente.getEndBairroCliente() + "', \n"
                    + "END_CEP_CLIENTE = '" + cliente.getEndCepCliente() + "', \n"
                    + "END_EST_CLIENTE = '" + cliente.getEndEstCliente() + "', \n"
                    + "END_CID_CLIENTE = '" + cliente.getEndCidCliente() + "', \n"
                    + "END_COMP_CLIENTE = '" + cliente.getEndCompCliente() + "', \n"
                    + "EST_CIVIL_CLIENTE = '" + cliente.getEstCivilCliente() + "' \n"
                    + "WHERE ID_CLIENTE = " + cliente.getIdCliente() + "";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.execute(sql);
            connection.close();
            retorno = true;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - atualizaCliente - Erro: " + e);
        }
        return retorno;
    }

    public ArrayList<ClienteData> getTodosCliente() {
        ArrayList<ClienteData> listaCliente = new ArrayList<>();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM CLIENTE");
            while (rs.next()) {
                ClienteData cliente = new ClienteData();
                String idx = rs.getString("ID_CLIENTE");
                int id = Integer.parseInt(idx);
                cliente.setIdCliente(id);
                cliente.setNomeCliente(rs.getString("NOME_CLIENTE"));
                cliente.setCpfCliente(rs.getString("CPF_CLIENTE"));
                cliente.setRgCliente(rs.getString("RG_CLIENTE"));
                cliente.setSexoCliente(rs.getString("SEXO_CLIENTE"));
                cliente.setEmailCliente(rs.getString("EMAIL_CLIENTE"));
                cliente.setNascimentoCliente(rs.getString("NASCIMENTO_CLIENTE"));
                cliente.setTelFixoCliente(rs.getString("TEL_FIXO_CLIENTE"));
                cliente.setTelCelCliente(rs.getString("TEL_CEL_CLIENTE"));
                cliente.setEndRuaCliente(rs.getString("END_RUA_CLIENTE"));
                cliente.setEndNumCliente(rs.getString("END_NUM_CLIENTE"));
                cliente.setEndCompCliente(rs.getString("END_COMP_CLIENTE"));
                cliente.setEndCepCliente(rs.getString("END_CEP_CLIENTE"));
                cliente.setEndBairroCliente(rs.getString("END_BAIRRO_CLIENTE"));
                cliente.setEndCidCliente(rs.getString("END_CID_CLIENTE"));
                cliente.setEndEstCliente(rs.getString("END_EST_CLIENTE"));
                cliente.setEstCivilCliente(rs.getString("EST_CIVIL_CLIENTE"));
                listaCliente.add(cliente);
            }
            connection.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - getTodosCliente - Erro: " + e);
        }
        return listaCliente;
    }

    public ClienteData getClienteById(int idCliente) {
        ClienteData cliente = new ClienteData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM CLIENTE WHERE ID_CLIENTE = " + idCliente);
            while (rs.next()) {
                cliente.setIdCliente(Integer.parseInt(rs.getString("ID_CLIENTE")));
                cliente.setNomeCliente(rs.getString("NOME_CLIENTE"));
                cliente.setCpfCliente(rs.getString("CPF_CLIENTE"));
                cliente.setRgCliente(rs.getString("RG_CLIENTE"));
                cliente.setSexoCliente(rs.getString("SEXO_CLIENTE"));
                cliente.setEmailCliente(rs.getString("EMAIL_CLIENTE"));
                cliente.setNascimentoCliente(rs.getString("NASCIMENTO_CLIENTE"));
                cliente.setTelFixoCliente(rs.getString("TEL_FIXO_CLIENTE"));
                cliente.setTelCelCliente(rs.getString("TEL_CEL_CLIENTE"));
                cliente.setEndRuaCliente(rs.getString("END_RUA_CLIENTE"));
                cliente.setEndNumCliente(rs.getString("END_NUM_CLIENTE"));
                cliente.setEndCompCliente(rs.getString("END_COMP_CLIENTE"));
                cliente.setEndCepCliente(rs.getString("END_CEP_CLIENTE"));
                cliente.setEndBairroCliente(rs.getString("END_BAIRRO_CLIENTE"));
                cliente.setEndCidCliente(rs.getString("END_CID_CLIENTE"));
                cliente.setEndEstCliente(rs.getString("END_EST_CLIENTE"));
                cliente.setEstCivilCliente(rs.getString("EST_CIVIL_CLIENTE"));

            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - getClienteById - Erro: " + e);
        }
        return cliente;

    }
    
    public ClienteData getClienteByCpf(String cpfCliente) {
        ClienteData cliente = new ClienteData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM CLIENTE WHERE CPF_CLIENTE = " + cpfCliente);
            while (rs.next()) {
                cliente.setIdCliente(Integer.parseInt(rs.getString("ID_CLIENTE")));
                cliente.setNomeCliente(rs.getString("NOME_CLIENTE"));
                cliente.setCpfCliente(rs.getString("CPF_CLIENTE"));
                cliente.setRgCliente(rs.getString("RG_CLIENTE"));
                cliente.setSexoCliente(rs.getString("SEXO_CLIENTE"));
                cliente.setEmailCliente(rs.getString("EMAIL_CLIENTE"));
                cliente.setNascimentoCliente(rs.getString("NASCIMENTO_CLIENTE"));
                cliente.setTelFixoCliente(rs.getString("TEL_FIXO_CLIENTE"));
                cliente.setTelCelCliente(rs.getString("TEL_CEL_CLIENTE"));
                cliente.setEndRuaCliente(rs.getString("END_RUA_CLIENTE"));
                cliente.setEndNumCliente(rs.getString("END_NUM_CLIENTE"));
                cliente.setEndCompCliente(rs.getString("END_COMP_CLIENTE"));
                cliente.setEndCepCliente(rs.getString("END_CEP_CLIENTE"));
                cliente.setEndBairroCliente(rs.getString("END_BAIRRO_CLIENTE"));
                cliente.setEndCidCliente(rs.getString("END_CID_CLIENTE"));
                cliente.setEndEstCliente(rs.getString("END_EST_CLIENTE"));
                cliente.setEstCivilCliente(rs.getString("EST_CIVIL_CLIENTE"));

            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - getClienteByCpf - Erro: " + e);
        }
        return cliente;

    }

    public boolean excluirCliente(int idCliente) {
        try {
            String sql = "DELETE FROM CLIENTE WHERE ID_CLIENTE = " + idCliente;
            Connection connection = new ConnectionFactory().getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.executeUpdate(sql);
            System.out.println("EXCLUIU");
            connection.close();
            return true;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - getClienteById - Erro: " + e);
            return false;
        }
    }
}

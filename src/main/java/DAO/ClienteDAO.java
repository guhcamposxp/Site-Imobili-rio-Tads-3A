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

            String sql = "INSERT INTO CLIENTE (CLIENTE_NOME,\n"
                    + "CLIENTE_SOBRENOME,\n"
                    + "CLIENTE_CPF,\n"
                    + "CLIENTE_RG,\n"
                    + "CLIENTE_RUA,\n"
                    + "CLIENTE_NUMERO,\n"
                    + "CLIENTE_COMPLEMENTO,\n"
                    + "CLIENTE_BAIRRO,\n"
                    + "CLIENTE_CIDADE,\n"
                    + "CLIENTE_CEP,\n"
                    + "CLIENTE_NASCIMENTO,\n"
                    + "CLIENTE_EMAIL,\n"
                    + "CLIENTE_SEXO,\n"
                    + "CLIENTE_CELULAR,\n"
                    + "CLIENTE_TELEFONE) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.setString(1, cliente.getClienteNome());
            pstmt.setString(2, cliente.getClienteSobrenome());
            pstmt.setString(3, cliente.getClienteCpf());
            pstmt.setString(4, cliente.getClienteRg());
            pstmt.setString(5, cliente.getClienteRua());
            pstmt.setString(6, cliente.getClienteNumero());
            pstmt.setString(7, cliente.getClienteComplemento());
            pstmt.setString(8, cliente.getClienteBairro());
            pstmt.setString(9, cliente.getClienteCidade());
            pstmt.setString(10, cliente.getClienteCep());
            pstmt.setString(11, cliente.getClienteNascimento());
            pstmt.setString(12, cliente.getClienteEmail());
            pstmt.setString(13, cliente.getClienteSexo());
            pstmt.setString(14, cliente.getClienteCelular());
            pstmt.setString(15, cliente.getClienteTelefone());
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
                    + "CLIENTE_NOME = '" + cliente.getClienteNome()+ "', \n"
                    + "CLIENTE_SOBRENOME = '" + cliente.getClienteSobrenome()+ "', \n"
                    + "CLIENTE_CPF = '" + cliente.getClienteCpf() + "', \n"
                    + "CLIENTE_RG = '" + cliente.getClienteRg() + "', \n"
                    + "CLIENTE_RUA = '" + cliente.getClienteRua() + "', \n"
                    + "CLIENTE_NUMERO = '" + cliente.getClienteNumero() + "', \n"
                    + "CLIENTE_COMPLEMENTO = '" + cliente.getClienteComplemento() + "', \n"
                    + "CLIENTE_BAIRRO = '" + cliente.getClienteBairro() + "', \n"
                    + "CLIENTE_CIDADE = '" + cliente.getClienteCidade() + "', \n"
                    + "CLIENTE_CEP = '" + cliente.getClienteCep() + "', \n"
                    + "ECLIENTE_NASCIMENTO = '" + cliente.getClienteNascimento() + "', \n"
                    + "CLIENTE_EMAIL = '" + cliente.getClienteEmail() + "', \n"
                    + "CLIENTE_SEXO = '" + cliente.getClienteSexo() + "', \n"
                    + "CLIENTE_CELULAR = '" + cliente.getClienteCelular() + "', \n"
                    + "CLIENTE_TELEFONE = '" + cliente.getClienteTelefone() + "' \n"
                    + "WHERE CLIENTE_ID = " + cliente.getClienteId()+ "";

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
                String idx = rs.getString("CLIENTE_ID");
                int id = Integer.parseInt(idx);
                cliente.setClienteId(id);
                cliente.setClienteNome(rs.getString("CLIENTE_NOME"));
                cliente.setClienteSobrenome(rs.getString("CLIENTE_SOBRENOME"));
                cliente.setClienteCpf(rs.getString("CLIENTE_CPF"));
                cliente.setClienteRg(rs.getString("CLIENTE_RG"));
                cliente.setClienteRua(rs.getString("CLIENTE_RUA"));
                cliente.setClienteNumero(rs.getString("CLIENTE_NUMERO"));
                cliente.setClienteComplemento(rs.getString("CLIENTE_COMPLEMENTO"));
                cliente.setClienteBairro(rs.getString("CLIENTE_BAIRRO"));
                cliente.setClienteCidade(rs.getString("CLIENTE_CIDADE"));
                cliente.setClienteCep(rs.getString("CLIENTE_CEP"));
                cliente.setClienteNascimento(rs.getString("CLIENTE_NASCIMENTO"));
                cliente.setClienteEmail(rs.getString("CLIENTE_EMAIL"));
                cliente.setClienteSexo(rs.getString("CLIENTE_SEXO"));
                cliente.setClienteCelular(rs.getString("CLIENTE_CELULAR"));
                cliente.setClienteTelefone(rs.getString("CLIENTE_TELEFONE"));
                listaCliente.add(cliente);
            }
            connection.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - getTodosCliente - Erro: " + e);
        }
        return listaCliente;
    }

    public ClienteData getClienteById(int clienteId) {
        ClienteData cliente = new ClienteData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM CLIENTE WHERE CLIENTE_ID = " + clienteId);
            while (rs.next()) {
                cliente.setClienteId(Integer.parseInt(rs.getString("ID_CLIENTE")));
                cliente.setClienteNome(rs.getString("CLIENTE_NOME"));
                cliente.setClienteSobrenome(rs.getString("CLIENTE_SOBRENOME"));
                cliente.setClienteCpf(rs.getString("CLIENTE_CPF"));
                cliente.setClienteRg(rs.getString("CLIENTE_RG"));
                cliente.setClienteRua(rs.getString("CLIENTE_RUA"));
                cliente.setClienteNumero(rs.getString("CLIENTE_NUMERO"));
                cliente.setClienteComplemento(rs.getString("CLIENTE_COMPLEMENTO"));
                cliente.setClienteBairro(rs.getString("CLIENTE_BAIRRO"));
                cliente.setClienteCidade(rs.getString("CLIENTE_CIDADE"));
                cliente.setClienteCep(rs.getString("CLIENTE_CEP"));
                cliente.setClienteNascimento(rs.getString("CLIENTE_NASCIMENTO"));
                cliente.setClienteEmail(rs.getString("CLIENTE_EMAIL"));
                cliente.setClienteSexo(rs.getString("CLIENTE_SEXO"));
                cliente.setClienteCelular(rs.getString("CLIENTE_CELULAR"));
                cliente.setClienteTelefone(rs.getString("CLIENTE_TELEFONE"));

            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - getClienteById - Erro: " + e);
        }
        return cliente;

    }
    /*
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

    }*/

    public boolean excluirCliente(int clienteId) {
        try {
            String sql = "DELETE FROM CLIENTE WHERE CLIENTE_ID = " + clienteId;
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

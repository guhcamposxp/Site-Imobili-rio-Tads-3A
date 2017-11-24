package DAO;

import Connection.ConnectionFactory;
import Data.FuncionarioData;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class FuncionarioDAO {

    public boolean cadastraFuncionario(FuncionarioData Funcionario) {
        Boolean retorno = false;
        try {

            String sql = "INSERT INTO Funcionario FUNCIONARIO \n"
                    + "(NOME_FUNCIONARIO,\n"
                    + "CPF_FUNCIONARIO,\n"
                    + "RG_FUNCIONARIO,\n"
                    + "SEXO_FUNCIONARIO,\n"
                    + "EMAIL_FUNCIONARIO,\n"
                    + "SENHA_FUNCIONARIO,\n"
                    + "NASCIMENTO_FUNCIONARIO,\n"
                    + "TEL_FIXO_FUNCIONARIO,\n"
                    + "TEL_CEL_FUNCIONARIO,\n"
                    + "END_RUA_FUNCIONARIO,\n"
                    + "END_NUM_FUNCIONARIO,\n"
                    + "END_BAIRRO_FUNCIONARIO,\n"
                    + "END_CEP_FUNCIONARIO,\n"
                    + "END_EST_FUNCIONARIO,\n"
                    + "END_CID_FUNCIONARIO,\n"
                    + "END_COMP_FUNCIONARIO,\n"
                    + "EST_CIVIL_FUNCIONARIO, \n"
                    + "ID_FILIAL, \n"
                    + "CARGO_FUNCIONARIO) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.setString(1, Funcionario.getNomeFuncionario());
            pstmt.setString(2, Funcionario.getCpfFuncionario());
            pstmt.setString(3, Funcionario.getRgFuncionario());
            pstmt.setString(4, Funcionario.getSexoFuncionario());
            pstmt.setString(5, Funcionario.getEmailFuncionario());
            pstmt.setString(6, Funcionario.getSenhaFuncionario());
            pstmt.setString(7, Funcionario.getNascimentoFuncionario());
            pstmt.setString(8, Funcionario.getTelFixoFuncionario());
            pstmt.setString(9, Funcionario.getTelCelFuncionario());
            pstmt.setString(10, Funcionario.getEndRuaFuncionario());
            pstmt.setString(11, Funcionario.getEndNumFuncionario());
            pstmt.setString(12, Funcionario.getEndBairroFuncionario());
            pstmt.setString(13, Funcionario.getEndCepFuncionario());
            pstmt.setString(14, Funcionario.getEndEstFuncionario());
            pstmt.setString(15, Funcionario.getEndCidFuncionario());
            pstmt.setString(16, Funcionario.getEndCompFuncionario());
            pstmt.setString(17, Funcionario.getEstCivilFuncionario());
            pstmt.setInt(18, Funcionario.getFilialFuncionario());
            pstmt.setString(19, Funcionario.getCargoFuncionario());
            pstmt.executeUpdate();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FuncionarioDAO.java - cadastraFuncionario - Erro: " + e);
        }
        return retorno;
    }

    public boolean atualizaFuncionario(FuncionarioData Funcionario) {
        Boolean retorno = false;
        try {

            String sql = "UPDATE Funcionario SET "
                    + "NOME_Funcionario = '" + Funcionario.getNomeFuncionario() + "', \n"
                    + "CPF_Funcionario = '" + Funcionario.getCpfFuncionario() + "', \n"
                    + "RG_Funcionario = '" + Funcionario.getRgFuncionario() + "', \n"
                    + "SEXO_Funcionario = '" + Funcionario.getSexoFuncionario() + "', \n"
                    + "EMAIL_Funcionario = '" + Funcionario.getEmailFuncionario() + "', \n"
                    + "NASCIMENTO_Funcionario = '" + Funcionario.getNascimentoFuncionario() + "', \n"
                    + "TEL_FIXO_Funcionario = '" + Funcionario.getTelFixoFuncionario() + "', \n"
                    + "TEL_CEL_Funcionario = '" + Funcionario.getTelCelFuncionario() + "', \n"
                    + "END_RUA_Funcionario = '" + Funcionario.getEndRuaFuncionario() + "', \n"
                    + "END_NUM_Funcionario = '" + Funcionario.getEndNumFuncionario() + "', \n"
                    + "END_BAIRRO_Funcionario = '" + Funcionario.getEndBairroFuncionario() + "', \n"
                    + "END_CEP_Funcionario = '" + Funcionario.getEndCepFuncionario() + "', \n"
                    + "END_EST_Funcionario = '" + Funcionario.getEndEstFuncionario() + "', \n"
                    + "END_CID_Funcionario = '" + Funcionario.getEndCidFuncionario() + "', \n"
                    + "END_COMP_Funcionario = '" + Funcionario.getEndCompFuncionario() + "', \n"
                    + "EST_CIVIL_Funcionario = '" + Funcionario.getEstCivilFuncionario() + "' \n"
                    + "SENHA_Funcionario = " + Funcionario.getSenhaFuncionario() + "' \n"
                    + "CARGO_Funcionario = '" + Funcionario.getCargoFuncionario() + "' \n"
                    + "ID_FILIAL = '" + Funcionario.getFilialFuncionario() + "' \n"
                    + "WHERE ID_FUNCIONARIO = " + Funcionario.getIdFuncionario() + "";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            System.out.println(sql);
            pstmt.execute(sql);
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FuncionarioDAO.java - atualizaFuncionario - Erro: " + e);
        }
        return retorno;
    }

    public ArrayList<FuncionarioData> getTodosFuncionario() {
        ArrayList<FuncionarioData> listaFuncionario = new ArrayList<>();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Funcionario");
            while (rs.next()) {
                FuncionarioData Funcionario = new FuncionarioData();
                String idx = rs.getString("ID_Funcionario");
                int id = Integer.parseInt(idx);
                Funcionario.setIdFuncionario(id);
                Funcionario.setNomeFuncionario(rs.getString("NOME_Funcionario"));
                Funcionario.setCpfFuncionario(rs.getString("CPF_Funcionario"));
                Funcionario.setRgFuncionario(rs.getString("RG_Funcionario"));
                Funcionario.setSexoFuncionario(rs.getString("SEXO_Funcionario"));
                Funcionario.setEmailFuncionario(rs.getString("EMAIL_Funcionario"));
                Funcionario.setNascimentoFuncionario(rs.getString("NASCIMENTO_Funcionario"));
                Funcionario.setTelFixoFuncionario(rs.getString("TEL_FIXO_Funcionario"));
                Funcionario.setTelCelFuncionario(rs.getString("TEL_CEL_Funcionario"));
                Funcionario.setEndRuaFuncionario(rs.getString("END_RUA_Funcionario"));
                Funcionario.setEndNumFuncionario(rs.getString("END_NUM_Funcionario"));
                Funcionario.setEndCompFuncionario(rs.getString("END_COMP_Funcionario"));
                Funcionario.setEndCepFuncionario(rs.getString("END_CEP_Funcionario"));
                Funcionario.setEndBairroFuncionario(rs.getString("END_BAIRRO_Funcionario"));
                Funcionario.setEndCidFuncionario(rs.getString("END_CID_Funcionario"));
                Funcionario.setEndEstFuncionario(rs.getString("END_EST_Funcionario"));
                Funcionario.setEstCivilFuncionario(rs.getString("EST_CIVIL_Funcionario"));
                Funcionario.setSenhaFuncionario(rs.getString("SENHA_FUNCIONARIO"));
                Funcionario.setCargoFuncionario(rs.getString("CARGO_FUNCIONARIO"));
                Funcionario.setFilialFuncionario(Integer.parseInt(rs.getString("ID_FILIAL")));
                listaFuncionario.add(Funcionario);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FuncionarioDAO.java - getTodosFuncionario - Erro: " + e);
        }
        return listaFuncionario;
    }

    public FuncionarioData getFuncionarioById(int idFuncionario) {
        FuncionarioData Funcionario = new FuncionarioData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Funcionario WHERE ID_Funcionario = " + idFuncionario);
            while (rs.next()) {
                String idx = rs.getString("ID_Funcionario");
                int id = Integer.parseInt(idx);
                Funcionario.setIdFuncionario(id);
                Funcionario.setNomeFuncionario(rs.getString("NOME_Funcionario"));
                Funcionario.setCpfFuncionario(rs.getString("CPF_Funcionario"));
                Funcionario.setRgFuncionario(rs.getString("RG_Funcionario"));
                Funcionario.setSexoFuncionario(rs.getString("SEXO_Funcionario"));
                Funcionario.setEmailFuncionario(rs.getString("EMAIL_Funcionario"));
                Funcionario.setNascimentoFuncionario(rs.getString("NASCIMENTO_Funcionario"));
                Funcionario.setTelFixoFuncionario(rs.getString("TEL_FIXO_Funcionario"));
                Funcionario.setTelCelFuncionario(rs.getString("TEL_CEL_Funcionario"));
                Funcionario.setEndRuaFuncionario(rs.getString("END_RUA_Funcionario"));
                Funcionario.setEndNumFuncionario(rs.getString("END_NUM_Funcionario"));
                Funcionario.setEndCompFuncionario(rs.getString("END_COMP_Funcionario"));
                Funcionario.setEndCepFuncionario(rs.getString("END_CEP_Funcionario"));
                Funcionario.setEndBairroFuncionario(rs.getString("END_BAIRRO_Funcionario"));
                Funcionario.setEndCidFuncionario(rs.getString("END_CID_Funcionario"));
                Funcionario.setEndEstFuncionario(rs.getString("END_EST_Funcionario"));
                Funcionario.setEstCivilFuncionario(rs.getString("EST_CIVIL_Funcionario"));
                Funcionario.setSenhaFuncionario(rs.getString("SENHA_FUNCIONARIO"));
                Funcionario.setCargoFuncionario(rs.getString("CARGO_FUNCIONARIO"));
                Funcionario.setFilialFuncionario(Integer.parseInt(rs.getString("ID_FILIAL")));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FuncionarioDAO.java - getFuncionarioById - Erro: " + e);
        }
        return Funcionario;

    }

    public FuncionarioData loginFuncionario(String usuario, String senha) {
        FuncionarioData Funcionario = new FuncionarioData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Funcionario WHERE EMAIL_FUNCIONARIO = '" + usuario + "' AND SENHA_FUNCIONARIO = '" + senha + "'");
            while (rs.next()) {
                Funcionario.setNomeFuncionario(rs.getString("NOME_Funcionario"));
                Funcionario.setCargoFuncionario(rs.getString("CARGO_FUNCIONARIO"));
                Funcionario.setFilialFuncionario(Integer.parseInt(rs.getString("ID_FILIAL")));
                Funcionario.setEmailFuncionario(rs.getString("EMAIL_FUNCIONARIO"));
                Funcionario.setEmailFuncionario(rs.getString("SENHA_FUNCIONARIO"));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FuncionarioDAO.java - loginFuncionario - Erro: " + e);
        }
        return Funcionario;

    }

    public boolean excluirFuncionario(int idFuncionario) {
        try {
            String sql = "DELETE FROM Funcionario WHERE ID_Funcionario = " + idFuncionario;
            Connection connection = new ConnectionFactory().getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.executeUpdate(sql);
            connection.close();
            return true;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FuncionarioDAO.java - getFuncionarioById - Erro: " + e);
            return false;
        }
    }
}

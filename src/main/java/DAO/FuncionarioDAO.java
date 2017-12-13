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
        String saida= "nao foi";
        try {
            String sql = "INSERT INTO FUNCIONARIO (FUNCIONARIO_NOME,\n"
                    + "FUNCIONARIO_SOBRENOME,\n"
                    + "FUNCIONARIO_CPF,\n"
                    + "FUNCIONARIO_RG,\n"
                    + "FUNCIONARIO_SEXO,\n"
                    + "FUNCIONARIO_EMAIL,\n"
                    + "FUNCIONARIO_NASCIMENTO,\n"
                    + "FUNCIONARIO_FILIAL,\n"
                    + "FUNCIONARIO_SENHA,\n"
                    + "FUNCIONARIO_PERMISSAO,\n"
                    + "FUNCIONARIO_CARGO)  VALUES (?,?,?,?,?,?,?,?,?,?)";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.setString(1, Funcionario.getFuncionarioNome());
            pstmt.setString(2, Funcionario.getFuncionarioSobrenome());
            pstmt.setString(3, Funcionario.getFuncionarioCpf());
            pstmt.setString(4, Funcionario.getFuncionarioRg());
            pstmt.setString(5, Funcionario.getFuncionarioSexo());
            pstmt.setString(6, Funcionario.getFuncionarioEmail());
            pstmt.setString(7, Funcionario.getFuncionarioNascimento());
            pstmt.setString(8, Funcionario.getFuncionarioFilial());
            pstmt.setString(9, Funcionario.getFuncionarioSenha());
            pstmt.setString(10, Funcionario.getFuncionarioPermissao());
            pstmt.setString(11, Funcionario.getFuncionarioCargo());
            pstmt.executeUpdate();
            saida = "foi sim";
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FuncionarioDAO.java - cadastraFuncionario - Erro: " + e);
        }
        System.out.println(saida);
        return retorno;
    }

    public boolean atualizaFuncionario(FuncionarioData Funcionario) {
        Boolean retorno = false;
        try {

            String sql = "UPDATE `FUNCIONARIO` SET \n"
                    + "`FUNCIONARIO_NOME` = '" + Funcionario.getFuncionarioNome()+ "', \n"
                    + "`FUNCIONARIO_SOBRENOME` = '" + Funcionario.getFuncionarioSobrenome()+ "', \n"
                    + "`FUNCIONARIO_CPF` = '" + Funcionario.getFuncionarioCpf()+ "', \n"
                    + "`FUNCIONARIO_RG` = '" + Funcionario.getFuncionarioRg()+ "', \n"
                    + "`FUNCIONARIO_SEXO` = '" + Funcionario.getFuncionarioSexo()+ "', \n"
                    + "`FUNCIONARIO_EMAIL` = '" + Funcionario.getFuncionarioEmail()+ "', \n"
                    + "`FUNCIONARIO_NASCIMENTO` = '" + Funcionario.getFuncionarioNascimento()+ "', \n"
                    + "`FUNCIONARIO_FILIAL` = '" + Funcionario.getFuncionarioFilial()+ "', \n"
                    + "`FUNCIONARIO_SENHA` = '" + Funcionario.getFuncionarioSenha()+ "', \n"
                    + "`FUNCIONARIO_PERMISSAO` = '" + Funcionario.getFuncionarioPermissao()+ "', \n"
                    + "`FUNCIONARIO_CARGO` = '" + Funcionario.getFuncionarioCargo()+ "'\n"
                    + "WHERE FUNCIONARIO_ID = " + Funcionario.getFuncionarioId()+ "";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.execute(sql);
            connection.close();
            retorno = true;
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
            ResultSet rs = stmt.executeQuery("SELECT * FROM FUNCIONARIO");
            while (rs.next()) {
                FuncionarioData Funcionario = new FuncionarioData();
                String idx = rs.getString("FUNCIONARIO_ID");
                int id = Integer.parseInt(idx);
                Funcionario.setFuncionarioId(id);
                Funcionario.setFuncionarioNome(rs.getString("FUNCIONARIO_NOME"));
                Funcionario.setFuncionarioSobrenome(rs.getString("FUNCIONARIO_SOBRENOME"));
                Funcionario.setFuncionarioCpf(rs.getString("FUNCIONARIO_CPF"));
                Funcionario.setFuncionarioRg(rs.getString("FUNCIONARIO_RG"));
                Funcionario.setFuncionarioSexo(rs.getString("FUNCIONARIO_SEXO"));
                Funcionario.setFuncionarioNascimento(rs.getString("FUNCIONARIO_NASCIMENTO"));
                Funcionario.setFuncionarioEmail(rs.getString("FUNCIONARIO_EMAIL"));
                Funcionario.setFuncionarioSenha(rs.getString("FUNCIONARIO_SENHA"));
                Funcionario.setFuncionarioPermissao(rs.getString("FUNCIONARIO_PERMISSAO"));
                Funcionario.setFuncionarioFilial(rs.getString("FUNCIONARIO_FILIAL"));
                Funcionario.setFuncionarioCargo(rs.getString("FUNCIONARIO_CARGO"));
                listaFuncionario.add(Funcionario);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FuncionarioDAO.java - getTodosFuncionario - Erro: " + e);
        }
        return listaFuncionario;
    }

    public FuncionarioData getFuncionarioById(int funcionarioId) {
        FuncionarioData Funcionario = new FuncionarioData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM FUNCIONARIO WHERE FUNCIONARIO_ID = " + funcionarioId);
            while (rs.next()) {
                String idx = rs.getString("FUNCIONARIO_ID");
                int id = Integer.parseInt(idx);
                Funcionario.setFuncionarioId(id);
                Funcionario.setFuncionarioNome(rs.getString("FUNCIONARIO_NOME"));
                Funcionario.setFuncionarioSobrenome(rs.getString("FUNCIONARIO_SOBRENOME"));
                Funcionario.setFuncionarioCpf(rs.getString("FUNCIONARIO_CPF"));
                Funcionario.setFuncionarioRg(rs.getString("FUNCIONARIO_RG"));
                Funcionario.setFuncionarioSexo(rs.getString("FUNCIONARIO_SEXO"));
                Funcionario.setFuncionarioNascimento(rs.getString("FUNCIONARIO_NASCIMENTO"));
                Funcionario.setFuncionarioEmail(rs.getString("FUNCIONARIO_EMAIL"));
                Funcionario.setFuncionarioSenha(rs.getString("FUNCIONARIO_SENHA"));
                Funcionario.setFuncionarioPermissao(rs.getString("FUNCIONARIO_PERMISSAO"));
                Funcionario.setFuncionarioFilial(rs.getString("FUNCIONARIO_FILIAL"));
                Funcionario.setFuncionarioCargo(rs.getString("FUNCIONARIO_CARGO"));
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
            ResultSet rs = stmt.executeQuery("SELECT * FROM Funcionario WHERE FUNCIONARIO_EMAIL = '" + usuario + "' AND FUNCIONARIO_SENHA = '" + senha + "'");
            while (rs.next()) {
                Funcionario.setFuncionarioNome(rs.getString("FUNCIONARIO_NOME"));
                Funcionario.setFuncionarioPermissao(rs.getString("FUNCIONARIO_PERMISSAO"));
                Funcionario.setFuncionarioEmail(rs.getString("FUNCIONARIO_EMAIL"));
                Funcionario.setFuncionarioSenha(rs.getString("FUNCIONARIO_SENHA"));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: FuncionarioDAO.java - loginFuncionario - Erro: " + e);
        }
        return Funcionario;

    }

    public boolean excluirFuncionario(int idFuncionario) {
        try {
            String sql = "DELETE FROM `Funcionario` WHERE FUNCIONARIO_ID = '" + idFuncionario+"'";
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

package DAO;

import Connection.ConnectionFactory;
import Data.FuncionarioData;
import Data.ImovelData;
//import Data.Imovel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ImovelDAO {

    public boolean cadastraImovel(ImovelData Imovel) {
        Boolean retorno = false;
        try {
            String sql = "INSERT INTO IMOVEL (FK_PROPRIETARIO_CPF,\n"
                    + "IMOVEL_RUA,\n"
                    + "IMOVEL_NUMERO,\n"
                    + "IMOVEL_COMPLEMENTO,\n"
                    + "IMOVEL_CEP,\n"
                    + "IMOVEL_BAIRRO,\n"
                    + "IMOVEL_CIDADE, \n"
                    + "IMOVEL_ESTADO,\n"
                    + "IMOVEL_TIPOTRANSACAO,\n"
                    + "IMOVEL_VLRVENDA,\n"
                    + "IMOVEL_VLRALUGUEL,\n"
                    + "IMOVEL_QTDVAGASGARAGEM,\n"
                    + "IMOVEL_QTDDORMITORIOS,\n"
                    + "IMOVEL_TIPO,\n"
                    + "IMOVEL_METROSQUADRADO,\n"
                    + "IMOVEL_DESCRICAO) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.setString(1, Imovel.getProprietarioCpf());
            pstmt.setString(2, Imovel.getImovelRua());
            pstmt.setString(3, Imovel.getImovelNumero());
            pstmt.setString(4, Imovel.getImovelComplemento());
            pstmt.setString(5, Imovel.getImovelCep());
            pstmt.setString(6, Imovel.getImovelBairro());
            pstmt.setString(7, Imovel.getImovelCidade());
            pstmt.setString(8, Imovel.getImovelEstado());
            pstmt.setString(9, Imovel.getImovelTipoTransacao());
            pstmt.setString(10,Imovel.getImovelVlrVenda());
            pstmt.setString(11,Imovel.getImovelVlrAluguel());
            pstmt.setString(12,Imovel.getImovelQtdVagasGaragem());
            pstmt.setString(13,Imovel.getImovelQtdDormitorios());
            pstmt.setString(14,Imovel.getImovelTipo());
            pstmt.setString(15,Imovel.getImovelMetrosQuadrado());
            pstmt.setString(16,Imovel.getImovelDescricao());
            //Executa ação
            pstmt.executeUpdate();
            //Fecha o banco
            connection.close();
        } catch (SQLException ex) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ImovelDAO.java - Erro: " + ex);
        } catch (ClassNotFoundException ex) {
            System.out.println("Erro no banco de dados - ClassNotFoundException - Classe: ImovelDAO.java - Erro: " + ex);
        }
        return retorno;
    }

    public boolean atualizaImovel(ImovelData imovel) {
        Boolean retorno = false;
        try {

            String sql = "UPDATE IMOVEL SET "
                    + "FK_PROPRIETARIO_CPF = '" + imovel.getProprietarioCpf()+ "', \n"
                    + "IMOVEL_RUA = '" + imovel.getImovelRua()+ "', \n"
                    + "IMOVEL_NUMERO = '" + imovel.getImovelNumero()+ "', \n"
                    + "IMOVEL_COMPLEMENTO = '" + imovel.getImovelComplemento()+ "', \n"
                    + "IMOVEL_CEP = '" + imovel.getImovelCep()+ "', \n"
                    + "IMOVEL_BAIRRO = '" + imovel.getImovelBairro()+ "', \n"
                    + "IMOVEL_CIDADE = '" + imovel.getImovelCidade()+ "', \n"
                    + "IMOVEL_ESTADO = '" + imovel.getImovelEstado()+ "', \n"
                    + "IMOVEL_TIPOTRANSACAO = '" + imovel.getImovelTipoTransacao()+ "', \n"
                    + "IMOVEL_VLRVENDA = '" + imovel.getImovelVlrVenda()+ "', \n"
                    + "IMOVEL_VLRALUGUEL = '" + imovel.getImovelVlrAluguel()+ "', \n"
                    + "IMOVEL_QTDVAGASGARAGEM = '" + imovel.getImovelQtdVagasGaragem()+ "', \n"
                    + "IMOVEL_QTDDORMITORIOS = '" + imovel.getImovelQtdDormitorios()+ "', \n"
                    + "IMOVEL_TIPO = '" + imovel.getImovelTipo()+ "', \n"
                    + "IMOVEL_METROSQUADRADO = '" + imovel.getImovelMetrosQuadrado()+ "', \n"
                    + "IMOVEL_DESCRICAO = '" + imovel.getImovelDescricao()+ "' \n"
                    + "WHERE IMOVEL_ID = " + imovel.getImovelId()+ "";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            System.out.println(sql);
            pstmt.execute(sql);
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ImovelDAO.java - atualizaImovel - Erro: " + e);
        }
        return retorno;
    }

    public ArrayList<ImovelData> getTodosImoveis() {
        ArrayList<ImovelData> listaImovel = new ArrayList<>();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM IMOVEL");
            while (rs.next()) {
                ImovelData imovel = new ImovelData();
                imovel.setImovelId(Integer.parseInt(rs.getString("IMOVEL_ID")));
                imovel.setImovelRua(rs.getString("IMOVEL_RUA"));
                imovel.setImovelNumero(rs.getString("IMOVEL_NUMERO"));
                imovel.setImovelBairro(rs.getString("IMOVEL_BAIRRO"));
                imovel.setImovelCep(rs.getString("IMOVEL_CEP"));
                imovel.setImovelCidade(rs.getString("IMOVEL_CIDADE"));
                imovel.setImovelEstado(rs.getString("IMOVEL_ESTADO"));
                imovel.setImovelQtdVagasGaragem(rs.getString("IMOVEL_QTDVAGASGARAGEM"));
                imovel.setImovelQtdDormitorios(rs.getString("IMOVEL_QTDDORMITORIOS"));
                imovel.setImovelTipo(rs.getString("IMOVEL_TIPO"));
                imovel.setImovelTipoTransacao(rs.getString("IMOVEL_TIPOTRANSACAO"));
                imovel.setImovelMetrosQuadrado(rs.getString("IMOVEL_METROSQUADRADO"));
                imovel.setImovelDescricao(rs.getString("IMOVEL_DESCRICAO"));
                listaImovel.add(imovel);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ImovelDAO.java - getTodosImoveis - Erro: " + e);
        }
        return listaImovel;
    }

    public ImovelData getImovelById(int imovelId) {
        ImovelData imovel = new ImovelData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM IMOVEL WHERE IMOVEL_ID = " + imovelId);
            while (rs.next()) {
//                imovel.setImovelId(Integer.parseInt(rs.getString(imovelId)));
                imovel.setImovelId(Integer.parseInt(rs.getString("IMOVEL_ID")));
                imovel.setProprietarioCpf(rs.getString("FK_PROPRIETARIO_CPF"));
                imovel.setImovelRua(rs.getString("IMOVEL_RUA"));
                imovel.setImovelNumero(rs.getString("IMOVEL_NUMERO"));
                imovel.setImovelComplemento(rs.getString("IMOVEL_COMPLEMENTO"));
                imovel.setImovelBairro(rs.getString("IMOVEL_BAIRRO"));
                imovel.setImovelCep(rs.getString("IMOVEL_CEP"));
                imovel.setImovelCidade(rs.getString("IMOVEL_CIDADE"));
                imovel.setImovelEstado(rs.getString("IMOVEL_ESTADO"));
                imovel.setImovelTipoTransacao(rs.getString("IMOVEL_TIPOTRANSACAO"));
                imovel.setImovelVlrVenda(rs.getString("IMOVEL_VLRVENDA"));
                imovel.setImovelVlrAluguel(rs.getString("IMOVEL_VLRALUGUEL"));
                imovel.setImovelQtdVagasGaragem(rs.getString("IMOVEL_QTDVAGASGARAGEM"));
                imovel.setImovelQtdDormitorios(rs.getString("IMOVEL_QTDDORMITORIOS"));
                imovel.setImovelTipo(rs.getString("IMOVEL_TIPO"));
                imovel.setImovelMetrosQuadrado(rs.getString("IMOVEL_METROSQUADRADO"));
                imovel.setImovelDescricao(rs.getString("IMOVEL_DESCRICAO"));
                
                
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ImovelDAO.java - getImovelById - Erro: " + e);
        }
        return imovel;
    }
    public boolean excluirImovel(int idImovel) {
        try {
            String sql = "DELETE FROM Imovel WHERE IMOVEL_ID = " + idImovel;
            Connection connection = new ConnectionFactory().getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.executeUpdate(sql);
            connection.close();
            return true;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ImovelDAO.java - excluirImovel - Erro: " + e);
            return false;
        }
    }

}

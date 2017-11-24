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
            String sql = "INSERT INTO Imovel (END_RUA_IMOVEL,\n"
                    + "END_NUM_IMOVEL,\n"
                    + "END_BAIRRO_IMOVEL,\n"
                    + "END_CEP_IMOVEL,\n"
                    + "END_EST_IMOVEL,\n"
                    + "END_CID_IMOVEL,\n"
                    + "END_COMP_IMOVEL, \n"
                    + "AREA_UTIL_IMOVEL,\n"
                    + "QTD_QUARTO_IMOVEL,\n"
                    + "QTD_SUITE_IMOVEL,\n"
                    + "QTD_COZINHA_IMOVEL,\n"
                    + "QTD_SALA_COMUM_IMOVEL,\n"
                    + "QTD_SALA_JANTAR_IMOVEL,\n"
                    + "QTD_BANHEIRO_IMOVEL,\n"
                    + "QTD_ VAGAS_IMOVEL,\n"
                    + "STATUS_IMOVEL, \n"
                    + "ID_PROPRIETARIO,\n"
                    + "DESC_IMOVEL, \n"
                    + "VALOR_VENDA_IMOVEL,\n"
                    + "VALOR_ALUGUEL_IMOVEL,\n"
                    + "VALOR_DEPOSITO_IMOVEL,\n"
                    + "ID_FUNCIONARIO,\n"
                    + "ID_FILIAL, \n"
                    + "TIPO_IMOVEL) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();
            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            //Captura campos e seta na query
            pstmt.setString(1, Imovel.getEndRuaImovel());
            pstmt.setString(2, Imovel.getEndNumImovel());
            pstmt.setString(3, Imovel.getEndBairroImovel());
            pstmt.setString(4, Imovel.getEndCepImovel());
            pstmt.setString(5, Imovel.getEndEstImovel());
            pstmt.setString(6, Imovel.getEndCidImovel());
            pstmt.setString(7, Imovel.getEndCompImovel());
            pstmt.setString(8, Imovel.getAreaUtilImovel());
            pstmt.setInt(9, Imovel.getQtdQuartoImovel());
            pstmt.setInt(10, Imovel.getQtdSuiteImovel());
            pstmt.setInt(11, Imovel.getQtdCozinhaImovel());
            pstmt.setInt(12, Imovel.getQtdSalaComumImovel());
            pstmt.setInt(13, Imovel.getQtdSalaJantarImovel());
            pstmt.setInt(15, Imovel.getQtdBanheiroImovel());
            pstmt.setInt(16, Imovel.getQtdVagasImovel());
            pstmt.setString(17, Imovel.getStatusImovel());
            pstmt.setObject(18, Imovel.getProprietarioImovel());
            pstmt.setString(19, Imovel.getDescImovel());
            pstmt.setString(20, Imovel.getValorVendaImovel());
            pstmt.setString(21, Imovel.getValorAluguelmovel());
            pstmt.setString(22, Imovel.getValorDepositoImovel());
            pstmt.setObject(23, Imovel.getCorretorResponsavelImovel());
            pstmt.setObject(24, Imovel.getFilialImovel());
            pstmt.setString(25, Imovel.getTipoImovel());
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

            String sql = "UPDATE Imovel SET "
                    + "(END_RUA_IMOVEL = '" + imovel.getEndRuaImovel() + "', \n"
                    + "END_NUM_IMOVEL= " + imovel.getEndNumImovel() + ", \n"
                    + "END_BAIRRO_IMOVEL= '" + imovel.getEndBairroImovel() + "', \n"
                    + "END_CEP_IMOVEL= '" + imovel.getEndCepImovel() + "', \n"
                    + "END_EST_IMOVEL= '" + imovel.getEndEstImovel() + "', \n"
                    + "END_CID_IMOVEL= '" + imovel.getEndCidImovel() + "', \n"
                    + "END_COMP_IMOVEL= '" + imovel.getEndCompImovel() + "', \n"
                    + "AREA_UTIL_IMOVEL= '" + imovel.getAreaUtilImovel() + "', \n"
                    + "QTD_QUARTO_IMOVEL= " + imovel.getQtdQuartoImovel() + ", \n"
                    + "QTD_SUITE_IMOVEL= " + imovel.getQtdSuiteImovel() + ", \n"
                    + "QTD_COZINHA_IMOVEL= " + imovel.getQtdCozinhaImovel() + ", \n"
                    + "QTD_SALA_COMUM_IMOVEL= " + imovel.getQtdSalaComumImovel() + ", \n"
                    + "QTD_SALA_JANTAR_IMOVEL= " + imovel.getQtdSalaJantarImovel() + ", \n"
                    + "QTD_BANHEIRO_IMOVEL= " + imovel.getQtdBanheiroImovel() + ", \n"
                    + "QTD_ VAGAS_IMOVEL= " + imovel.getQtdVagasImovel() + ", \n"
                    + "STATUS_IMOVEL= '" + imovel.getStatusImovel() + "', \n"
                    + "ID_PROPRIETARIO = " + imovel.getProprietarioImovel() + ", \n"
                    + "DESC_IMOVEL= '" + imovel.getDescImovel() + "', \n"
                    + "VALOR_VENDA_IMOVEL= '" + imovel.getValorVendaImovel() + "', \n"
                    + "VALOR_ALUGUEL_IMOVEL= '" + imovel.getValorAluguelmovel() + "', \n"
                    + "VALOR_DEPOSITO_IMOVEL= '" + imovel.getValorDepositoImovel() + "', \n"
                    + "ID_FUNCIONARIO= " + imovel.getCorretorResponsavelImovel() + ", \n"
                    + "ID_FILIAL= " + imovel.getFilialImovel() + ", \n"
                    + "TIPO_IMOVEL = '" + imovel.getTipoImovel() + "', \n"
                    + "WHERE ID_IMOVEL = " + imovel.getIdImovel();

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
            ResultSet rs = stmt.executeQuery("SELECT * FROM Imovel");
            while (rs.next()) {
                ImovelData imovel = new ImovelData();
                imovel.setIdImovel(Integer.parseInt(rs.getString("ID_IMOVEL")));
                imovel.setEndRuaImovel(rs.getString("END_RUA_IMOVEL"));
                imovel.setEndNumImovel(rs.getString("END_NUM_IMOVEL"));
                imovel.setEndBairroImovel(rs.getString("END_BAIRRO_IMOVEL"));
                imovel.setEndCepImovel(rs.getString("END_CEP_IMOVEL"));
                imovel.setEndEstImovel(rs.getString("END_EST_IMOVEL"));
                imovel.setEndCidImovel(rs.getString("END_CID_IMOVEL"));
                imovel.setEndCompImovel(rs.getString("END_COMP_IMOVEL"));
                imovel.setAreaUtilImovel(rs.getString("AREA_UTIL_IMOVEL"));
                imovel.setQtdQuartoImovel(Integer.parseInt(rs.getString("QTD_QUARTO_IMOVEL")));
                imovel.setQtdSuiteImovel(Integer.parseInt(rs.getString("QTD_SUITE_IMOVEL")));
                imovel.setQtdCozinhaImovel(Integer.parseInt(rs.getString("QTD_COZINHA_IMOVEL")));
                imovel.setQtdSalaComumImovel(Integer.parseInt(rs.getString("QTD_SALA_COMUM_IMOVEL")));
                imovel.setQtdSalaJantarImovel(Integer.parseInt(rs.getString("QTD_SALA_JANTAR_IMOVEL")));
                imovel.setQtdBanheiroImovel(Integer.parseInt(rs.getString("QTD_BANHEIRO_IMOVEL")));
                imovel.setQtdVagasImovel(Integer.parseInt(rs.getString("QTD_VAGAS_IMOVEL")));
                imovel.setStatusImovel(rs.getString("STATUS_IMOVEL"));
                imovel.setProprietarioImovel(Integer.parseInt(rs.getString("ID_PROPRIETARIO")));
                imovel.setDescImovel(rs.getString("DESC_IMOVEL"));
                imovel.setValorVendaImovel(rs.getString("VALOR_VENDA_IMOVEL"));
                imovel.setValorAluguelmovel(rs.getString("VALOR_ALUGUEL_IMOVEL"));
                imovel.setValorDepositoImovel(rs.getString("VALOR_DEPOSITO_IMOVEL"));
                imovel.setCorretorResponsavelImovel(Integer.parseInt(rs.getString("ID_FUNCIONARIO")));
                imovel.setFilialImovel(Integer.parseInt(rs.getString("ID_FILIAL")));
                imovel.setTipoImovel(rs.getString("TIPO_IMOVEL"));
                listaImovel.add(imovel);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ImovelDAO.java - getTodosImoveis - Erro: " + e);
        }
        return listaImovel;
    }

    public ImovelData getImovelById(int idImovel) {
        ImovelData imovel = new ImovelData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM IMOVEL WHERE ID_IMOVEL = " + idImovel);
            while (rs.next()) {
                imovel.setIdImovel(Integer.parseInt(rs.getString(idImovel)));
                imovel.setEndRuaImovel(rs.getString("END_RUA_IMOVEL"));
                imovel.setEndNumImovel(rs.getString("END_NUM_IMOVEL"));
                imovel.setEndBairroImovel(rs.getString("END_BAIRRO_IMOVEL"));
                imovel.setEndCepImovel(rs.getString("END_CEP_IMOVEL"));
                imovel.setEndEstImovel(rs.getString("END_EST_IMOVEL"));
                imovel.setEndCidImovel(rs.getString("END_CID_IMOVEL"));
                imovel.setEndCompImovel(rs.getString("END_COMP_IMOVEL"));
                imovel.setAreaUtilImovel(rs.getString("AREA_UTIL_IMOVEL"));
                imovel.setQtdQuartoImovel(Integer.parseInt(rs.getString("QTD_QUARTO_IMOVEL")));
                imovel.setQtdSuiteImovel(Integer.parseInt(rs.getString("QTD_SUITE_IMOVEL")));
                imovel.setQtdCozinhaImovel(Integer.parseInt(rs.getString("QTD_COZINHA_IMOVEL")));
                imovel.setQtdSalaComumImovel(Integer.parseInt(rs.getString("QTD_SALA_COMUM_IMOVEL")));
                imovel.setQtdSalaJantarImovel(Integer.parseInt(rs.getString("QTD_SALA_JANTAR_IMOVEL")));
                imovel.setQtdBanheiroImovel(Integer.parseInt(rs.getString("QTD_BANHEIRO_IMOVEL")));
                imovel.setQtdVagasImovel(Integer.parseInt(rs.getString("QTD_VAGAS_IMOVEL")));
                imovel.setStatusImovel(rs.getString("STATUS_IMOVEL"));
                imovel.setProprietarioImovel(Integer.parseInt(rs.getString("ID_PROPRIETARIO")));
                imovel.setDescImovel(rs.getString("DESC_IMOVEL"));
                imovel.setValorVendaImovel(rs.getString("VALOR_VENDA_IMOVEL"));
                imovel.setValorAluguelmovel(rs.getString("VALOR_ALUGUEL_IMOVEL"));
                imovel.setValorDepositoImovel(rs.getString("VALOR_DEPOSITO_IMOVEL"));
                imovel.setCorretorResponsavelImovel(Integer.parseInt(rs.getString("ID_FUNCIONARIO")));
                imovel.setFilialImovel(Integer.parseInt(rs.getString("ID_FILIAL")));
                imovel.setTipoImovel(rs.getString("TIPO_IMOVEL"));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ImovelDAO.java - getImovelById - Erro: " + e);
        }
        return imovel;
    }
    public boolean excluirImovel(int idImovel) {
        try {
            String sql = "DELETE FROM Imovel WHERE ID_Imovel = " + idImovel;
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

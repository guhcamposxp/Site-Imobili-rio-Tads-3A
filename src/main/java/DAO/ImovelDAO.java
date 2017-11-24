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

//    public boolean atualizaImovel(ImovelData imovel) {
//        Boolean retorno = false;
//        try {
//
//            String sql = "UPDATE Imovel SET "
//                    + "(END_RUA_IMOVEL = '" + imovel.getEndRuaImovel() + "', \n"
//                    + "END_NUM_IMOVEL= " + imovel.getEndNumImovel() + ", \n"
//                    + "END_BAIRRO_IMOVEL= '" + imovel.getEndBairroImovel() + "', \n"
//                    + "END_CEP_IMOVEL= '" + imovel.getEndCepImovel() + "', \n"
//                    + "END_EST_IMOVEL= '" + imovel.getEndEstImovel() + "', \n"
//                    + "END_CID_IMOVEL= '" + imovel.getEndCidImovel() + "', \n"
//                    + "END_COMP_IMOVEL= '" + imovel.getEndCompImovel() + "', \n"
//                    + "AREA_UTIL_IMOVEL= '" + imovel.getAreaUtilImovel() + "', \n"
//                    + "QTD_QUARTO_IMOVEL= " + imovel.getQtdQuartoImovel() + ", \n"
//                    + "QTD_SUITE_IMOVEL= " + imovel.getQtdSuiteImovel() + ", \n"
//                    + "QTD_COZINHA_IMOVEL= " + imovel.getQtdCozinhaImovel() + ", \n"
//                    + "QTD_SALA_COMUM_IMOVEL= " + imovel.getQtdSalaComumImovel() + ", \n"
//                    + "QTD_SALA_JANTAR_IMOVEL= " + imovel.getQtdSalaJantarImovel() + ", \n"
//                    + "QTD_BANHEIRO_IMOVEL= " + imovel.getQtdBanheiroImovel() + ", \n"
//                    + "QTD_ VAGAS_IMOVEL= " + imovel.getQtdVagasImovel() + ", \n"
//                    + "STATUS_IMOVEL= '" + imovel.getStatusImovel() + "', \n"
//                    + "ID_PROPRIETARIO = " + imovel.getProprietarioImovel() + ", \n"
//                    + "DESC_IMOVEL= '" + imovel.getDescImovel() + "', \n"
//                    + "VALOR_VENDA_IMOVEL= '" + imovel.getValorVendaImovel() + "', \n"
//                    + "VALOR_ALUGUEL_IMOVEL= '" + imovel.getValorAluguelmovel() + "', \n"
//                    + "VALOR_DEPOSITO_IMOVEL= '" + imovel.getValorDepositoImovel() + "', \n"
//                    + "ID_FUNCIONARIO= " + imovel.getCorretorResponsavelImovel() + ", \n"
//                    + "ID_FILIAL= " + imovel.getFilialImovel() + ", \n"
//                    + "TIPO_IMOVEL = '" + imovel.getTipoImovel() + "', \n"
//                    + "WHERE ID_IMOVEL = " + imovel.getIdImovel();
//
//            //Cria conexão com banco de dados
//            Connection connection = new ConnectionFactory().getConnection();
//            //Prepara a query
//            PreparedStatement pstmt = connection.prepareStatement(sql);
//            //Captura campos e seta na query
//            System.out.println(sql);
//            pstmt.execute(sql);
//            connection.close();
//        } catch (SQLException | ClassNotFoundException e) {
//            System.out.println("Erro no banco de dados - SQLException - Classe: ImovelDAO.java - atualizaImovel - Erro: " + e);
//        }
//        return retorno;
//    }

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

//    public ImovelData getImovelById(int idImovel) {
//        ImovelData imovel = new ImovelData();
//        try {
//            Connection connection = new ConnectionFactory().getConnection();
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT * FROM IMOVEL WHERE ID_IMOVEL = " + idImovel);
//            while (rs.next()) {
//                imovel.setIdImovel(Integer.parseInt(rs.getString(idImovel)));
//                imovel.setEndRuaImovel(rs.getString("END_RUA_IMOVEL"));
//                imovel.setEndNumImovel(rs.getString("END_NUM_IMOVEL"));
//                imovel.setEndBairroImovel(rs.getString("END_BAIRRO_IMOVEL"));
//                imovel.setEndCepImovel(rs.getString("END_CEP_IMOVEL"));
//                imovel.setEndEstImovel(rs.getString("END_EST_IMOVEL"));
//                imovel.setEndCidImovel(rs.getString("END_CID_IMOVEL"));
//                imovel.setEndCompImovel(rs.getString("END_COMP_IMOVEL"));
//                imovel.setAreaUtilImovel(rs.getString("AREA_UTIL_IMOVEL"));
//                imovel.setQtdQuartoImovel(Integer.parseInt(rs.getString("QTD_QUARTO_IMOVEL")));
//                imovel.setQtdSuiteImovel(Integer.parseInt(rs.getString("QTD_SUITE_IMOVEL")));
//                imovel.setQtdCozinhaImovel(Integer.parseInt(rs.getString("QTD_COZINHA_IMOVEL")));
//                imovel.setQtdSalaComumImovel(Integer.parseInt(rs.getString("QTD_SALA_COMUM_IMOVEL")));
//                imovel.setQtdSalaJantarImovel(Integer.parseInt(rs.getString("QTD_SALA_JANTAR_IMOVEL")));
//                imovel.setQtdBanheiroImovel(Integer.parseInt(rs.getString("QTD_BANHEIRO_IMOVEL")));
//                imovel.setQtdVagasImovel(Integer.parseInt(rs.getString("QTD_VAGAS_IMOVEL")));
//                imovel.setStatusImovel(rs.getString("STATUS_IMOVEL"));
//                imovel.setProprietarioImovel(Integer.parseInt(rs.getString("ID_PROPRIETARIO")));
//                imovel.setDescImovel(rs.getString("DESC_IMOVEL"));
//                imovel.setValorVendaImovel(rs.getString("VALOR_VENDA_IMOVEL"));
//                imovel.setValorAluguelmovel(rs.getString("VALOR_ALUGUEL_IMOVEL"));
//                imovel.setValorDepositoImovel(rs.getString("VALOR_DEPOSITO_IMOVEL"));
//                imovel.setCorretorResponsavelImovel(Integer.parseInt(rs.getString("ID_FUNCIONARIO")));
//                imovel.setFilialImovel(Integer.parseInt(rs.getString("ID_FILIAL")));
//                imovel.setTipoImovel(rs.getString("TIPO_IMOVEL"));
//            }
//            connection.close();
//        } catch (SQLException | ClassNotFoundException e) {
//            System.out.println("Erro no banco de dados - SQLException - Classe: ImovelDAO.java - getImovelById - Erro: " + e);
//        }
//        return imovel;
//    }
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

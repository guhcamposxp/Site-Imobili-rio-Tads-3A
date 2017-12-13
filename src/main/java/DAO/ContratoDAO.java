package DAO;

import Connection.ConnectionFactory;
import Data.ContratoData;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ContratoDAO {

    public boolean salvaContrato(ContratoData contrato) {
        Boolean retorno = false;
        try {
            String sql = "INSERT INTO CONTRATO (CONTRATO_DATA,\n"//1
                    + "CONTRATO_FUNCIONARIO_ID,\n"//2
                    + "CONTRATO_FUNCIONARIO_NOME,\n"//3
                    + "CONTRATO_FUNCIONARIO_SOBRENOME,\n"//4
                    + "CONTRATO_FUNCIONARIO_CPF,\n"//5
                    + "CONTRATO_FUNCIONARIO_EMAIL,\n"//6
                    + "CONTRATO_FUNCIONARIO_FILIAL,\n"//7
                    + "CONTRATO_CLIENTEPROPRIETARIO_PROPRIETARIO_ID,\n"//8
                    + "CONTRATO_CLIENTEPROPRIETARIO_NOME,\n"//9
                    + "CONTRATO_CLIENTEPROPRIETARIO_SOBRENOME,\n"//10
                    + "CONTRATO_CLIENTEPROPRIETARIO_CPF,\n"//11
                    + "CONTRATO_CLIENTEPROPRIETARIO_RG,\n"//12
                    + "CONTRATO_CLIENTEPROPRIETARIO_EMAIL,\n"//13
                    + "CONTRATO_CLIENTEPROPRIETARIO_CELULAR,\n"//14
                    + "CONTRATO_CLIENTEPROPRIETARIO_TELEFONE,\n"//15
                    + "CONTRATO_CLIENTEINTERESSADO_ID,\n"//16
                    + "CONTRATO_CLIENTEINTERESSADO_NOME,\n"//17
                    + "CONTRATO_CLIENTEINTERESSADO_SOBRENOME,\n"//18
                    + "CONTRATO_CLIENTEINTERESSADO_CPF,\n"//19
                    + "CONTRATO_CLIENTEINTERESSADO_RG,\n"//20
                    + "CONTRATO_CLIENTEINTERESSADO_EMAIL,\n"//21
                    + "CONTRATO_CLIENTEINTERESSADO_CELULAR,\n"//22
                    + "CONTRATO_CLIENTEINTERESSADO_TELEFONE,\n"//23
                    + "CONTRATO_IMOVEL_ID,\n"//24
                    + "CONTRATO_IMOVEL_RUA,\n"//25
                    + "CONTRATO_IMOVEL_NUMERO,\n"//26
                    + "CONTRATO_IMOVEL_COMPLEMENTO,\n"//27
                    + "CONTRATO_IMOVEL_CEP,\n"//28
//                    + "CONTRATO_IMOVEL_CEP,\n"//29
                    + "CONTRATO_IMOVEL_CIDADE,\n"//30
                    + "CONTRATO_IMOVEL_ESTADO,\n"//31
                    + "CONTRATO_IMOVEL_TIPOTRANSACAO,\n"//32
                    + "CONTRATO_IMOVEL_VLRVENDA,\n"//33
                    + "CONTRATO_IMOVEL_VLRALUGUEL,\n"//34
                    + "CONTRATO_IMOVEL_QTDVAGASGARAGEM,\n"//35
                    + "CONTRATO_IMOVEL_QTDDORMITORIOS,\n"//36
                    + "CONTRATO_IMOVEL_TIPO,\n"//37
                    + "CONTRATO_IMOVEL_METROSQUADRADO,\n"//38
                    + "CONTRATO_IMOVEL_DESCRICAO) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; //39

            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();

            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);

            //Captura campos e seta na query
            pstmt.setString(1, contrato.getContratoData());
            pstmt.setInt(2, contrato.getContratoFuncionarioId());
            pstmt.setString(3, contrato.getContratoFuncionarioNome());
            pstmt.setString(4, contrato.getContratoFuncionarioSobrenome());
            pstmt.setString(5, contrato.getContratoFuncionarioCpf());
            pstmt.setString(6, contrato.getContratoFuncionarioEmail());
            pstmt.setString(7, contrato.getContratoFuncionarioFilial());
            pstmt.setInt(8, contrato.getContratoClienteProprietarioId());
            pstmt.setString(9, contrato.getContratoClienteProprietarioNome());
            pstmt.setString(10, contrato.getContratoClienteProprietarioSobrenome());
            pstmt.setString(11, contrato.getContratoClienteProprietarioCpf());
            pstmt.setString(12, contrato.getContratoClienteProprietarioRg());
            pstmt.setString(13, contrato.getContratoClienteProprietarioEmail());
            pstmt.setString(14, contrato.getContratoClienteProprietarioCelular());
            pstmt.setString(15, contrato.getContratoClienteProprietarioTelefone());
            pstmt.setInt(16, contrato.getContratoClienteInteressadoId());
            pstmt.setString(17, contrato.getContratoClienteInteressadoNome());
            pstmt.setString(18, contrato.getContratoClienteInteressadoSobrenome());
            pstmt.setString(19, contrato.getContratoClienteInteressadoCpf());
            pstmt.setString(20, contrato.getContratoClienteInteressadoRg());
            pstmt.setString(21, contrato.getContratoClienteInteressadoEmail());
            pstmt.setString(22, contrato.getContratoClienteInteressadoCelular());
            pstmt.setString(23, contrato.getContratoClienteInteressadoTelefone());
            pstmt.setInt(24, contrato.getContratoImovelId());
            pstmt.setString(25, contrato.getContratoIMovelRua());
            pstmt.setString(26, contrato.getContratoIMovelNumero());
            pstmt.setString(27, contrato.getContratoIMovelComplemento());
//            pstmt.setString(28, contrato.getContratoIMovelCep());
            pstmt.setString(28, contrato.getContratoIMovelCep());
            pstmt.setString(29, contrato.getContratoIMovelCidade());
            pstmt.setString(30, contrato.getContratoIMovelEstado());
            pstmt.setString(31, contrato.getContratoIMovelTipoTransacao());
            pstmt.setString(32, contrato.getContratoIMovelVlrVenda());
            pstmt.setString(33, contrato.getContratoIMovelVlrAluguel());
            pstmt.setString(34, contrato.getContratoIMovelQtdVagasGaragem());
            pstmt.setString(35, contrato.getContratoIMovelQtdQuartos());
            pstmt.setString(36, contrato.getContratoIMovelTipo());
            pstmt.setString(37, contrato.getContratoIMovelMetrosQuadrado());
            pstmt.setString(38, contrato.getContratoIMovelDescricao());

            pstmt.executeUpdate();
            connection.close();
            retorno = true;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ContratoDAO.java - salvaContrato - Erro: " + e);
        }
        return retorno;

    }

//    public ArrayList<ContratoData> getTodosContratos() {
//        ArrayList<ContratoData> listaContrato = new ArrayList<>();
//        try {
//            Connection connection = new ConnectionFactory().getConnection();
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT * FROM CONTRATO");
//            while (rs.next()) {
//                ContratoData contrato = new ContratoData();
//                contrato.setIdContrato(Integer.parseInt(rs.getString("ID_CONTRATO")));
//                contrato.setIdComprador(Integer.parseInt(rs.getString("ID_COMPRADOR")));
//                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_PROPRIETARIO")));
//                contrato.setIdFilial(Integer.parseInt(rs.getString("ID_FILIAL")));
//                contrato.setIdCorretor(Integer.parseInt(rs.getString("ID_CORRETOR")));
//                contrato.setDataContrato(rs.getString("DATA_CONTRATO"));
//                listaContrato.add(contrato);
//            }
//            connection.close();
//
//        } catch (SQLException | ClassNotFoundException e) {
//            System.out.println("Erro no banco de dados - SQLException - Classe: ContratoDAO.java - getTodosContratos - Erro: " + e);
//        }
//        return listaContrato;
//    }

//    public ArrayList<ContratoData> getTodosContratosByData(String dataInicial, String dataFinal) {
//        ArrayList<ContratoData> listaContrato = new ArrayList<>();
//        try {
//            Connection connection = new ConnectionFactory().getConnection();
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT * FROM CONTRATO WHERE DATA_CONTRATO BETWEEN " + dataInicial + " AND +" + dataFinal);
//            while (rs.next()) {
//                ContratoData contrato = new ContratoData();
//                contrato.setIdContrato(Integer.parseInt(rs.getString("ID_CONTRATO")));
//                contrato.setIdComprador(Integer.parseInt(rs.getString("ID_COMPRADOR")));
//                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_PROPRIETARIO")));
//                contrato.setIdFilial(Integer.parseInt(rs.getString("ID_FILIAL")));
//                contrato.setIdCorretor(Integer.parseInt(rs.getString("ID_CORRETOR")));
//                contrato.setDataContrato(rs.getString("DATA_CONTRATO"));
//                listaContrato.add(contrato);
//            }
//            connection.close();
//
//        } catch (SQLException | ClassNotFoundException e) {
//            System.out.println("Erro no banco de dados - SQLException - Classe: ContratoDAO.java - getTodosContratosByData - Erro: " + e);
//        }
//        return listaContrato;
//    }

//    public ContratoData getContratoById(int idContrato) {
//        ContratoData contrato = new ContratoData();
//        try {
//            Connection connection = new ConnectionFactory().getConnection();
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT * FROM CONTRATO WHERE ID_CONTRATO = " + idContrato);
//            while (rs.next()) {
//                contrato.setIdContrato(Integer.parseInt(rs.getString("ID_CONTRATO")));
//                contrato.setIdComprador(Integer.parseInt(rs.getString("ID_COMPRADOR")));
//                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_PROPRIETARIO")));
//                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_FILIAL")));
//                contrato.setIdImovel(Integer.parseInt(rs.getString("ID_CORRETOR")));
//                contrato.setDataContrato(rs.getString("DATA_CONTRATO"));
//            }
//            connection.close();
//
//        } catch (SQLException | ClassNotFoundException e) {
//            System.out.println("Erro no banco de dados - SQLException - Classe: ContratoDAO.java - getContratoById - Erro: " + e);
//        }
//        return contrato;
//    }

}

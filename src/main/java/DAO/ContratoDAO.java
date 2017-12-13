package DAO;

import Connection.ConnectionFactory;
import Data.ClienteData;
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
            
            int idImovel = contrato.getContratoImovelId();
            String sqlExcluir = "DELETE FROM IMOVEL WHERE IMOVEL_ID = " + idImovel;
            
            
            
            //Cria conexão com banco de dados
            Connection connection = new ConnectionFactory().getConnection();

            //Prepara a query
            PreparedStatement pstmt = connection.prepareStatement(sql);
            PreparedStatement pstmtExcluir = connection.prepareStatement(sqlExcluir);
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
            pstmtExcluir.executeUpdate();
            connection.close();
            retorno = true;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ContratoDAO.java - salvaContrato - Erro: " + e);
        }
        return retorno;

    }
    
    public ArrayList<ContratoData> getTodosContratos() {
        ArrayList<ContratoData> listaContratos = new ArrayList<>();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM CONTRATO");
            while (rs.next()) {
                ContratoData contrato = new ContratoData();
                String idx = rs.getString("CONTRATO_ID");
                int id = Integer.parseInt(idx);
                contrato.setContratoId(id);
                contrato.setContratoData(rs.getString("CONTRATO_DATA"));
                contrato.setContratoFuncionarioNome(rs.getString("CONTRATO_FUNCIONARIO_NOME"));
                contrato.setContratoFuncionarioSobrenome(rs.getString("CONTRATO_FUNCIONARIO_SOBRENOME"));
                contrato.setContratoFuncionarioCpf(rs.getString("CONTRATO_FUNCIONARIO_CPF"));
                contrato.setContratoFuncionarioEmail(rs.getString("CONTRATO_FUNCIONARIO_EMAIL"));
                contrato.setContratoFuncionarioFilial(rs.getString("CONTRATO_FUNCIONARIO_FILIAL"));

                contrato.setContratoClienteProprietarioNome(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_NOME"));
                contrato.setContratoClienteProprietarioSobrenome(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_SOBRENOME"));
                contrato.setContratoClienteProprietarioCpf(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_CPF"));
                contrato.setContratoClienteProprietarioRg(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_RG"));
                contrato.setContratoClienteProprietarioEmail(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_EMAIL"));
                contrato.setContratoClienteProprietarioCelular(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_CELULAR"));
                contrato.setContratoClienteProprietarioTelefone(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_TELEFONE"));
                
                contrato.setContratoClienteInteressadoNome(rs.getString("CONTRATO_CLIENTEINTERESSADO_NOME"));
                contrato.setContratoClienteInteressadoSobrenome(rs.getString("CONTRATO_CLIENTEINTERESSADO_SOBRENOME"));
                contrato.setContratoClienteInteressadoCpf(rs.getString("CONTRATO_CLIENTEINTERESSADO_CPF"));
                contrato.setContratoClienteInteressadoRg(rs.getString("CONTRATO_CLIENTEINTERESSADO_RG"));
                contrato.setContratoClienteInteressadoEmail(rs.getString("CONTRATO_CLIENTEINTERESSADO_EMAIL"));
                contrato.setContratoClienteInteressadoCelular(rs.getString("CONTRATO_CLIENTEINTERESSADO_CELULAR"));
                contrato.setContratoClienteInteressadoTelefone(rs.getString("CONTRATO_CLIENTEINTERESSADO_TELEFONE"));
                
                contrato.setContratoIMovelRua(rs.getString("CONTRATO_IMOVEL_RUA"));
                contrato.setContratoIMovelNumero(rs.getString("CONTRATO_IMOVEL_NUMERO"));
                contrato.setContratoIMovelComplemento(rs.getString("CONTRATO_IMOVEL_COMPLEMENTO"));
                contrato.setContratoIMovelCep(rs.getString("CONTRATO_IMOVEL_CEP"));
                contrato.setContratoIMovelBairro(rs.getString("CONTRATO_IMOVEL_BAIRRO"));
                contrato.setContratoIMovelCidade(rs.getString("CONTRATO_IMOVEL_CIDADE"));
                contrato.setContratoIMovelEstado(rs.getString("CONTRATO_IMOVEL_ESTADO"));
                contrato.setContratoIMovelTipoTransacao(rs.getString("CONTRATO_IMOVEL_TIPOTRANSACAO"));
                contrato.setContratoIMovelVlrVenda(rs.getString("CONTRATO_IMOVEL_VLRVENDA"));
                contrato.setContratoIMovelVlrAluguel(rs.getString("CONTRATO_IMOVEL_VLRALUGUEL"));
                contrato.setContratoIMovelQtdVagasGaragem(rs.getString("CONTRATO_IMOVEL_QTDVAGASGARAGEM"));
                contrato.setContratoIMovelQtdQuartos(rs.getString("CONTRATO_IMOVEL_QTDDORMITORIOS"));
                contrato.setContratoIMovelTipo(rs.getString("CONTRATO_IMOVEL_TIPO"));
                contrato.setContratoIMovelMetrosQuadrado(rs.getString("CONTRATO_IMOVEL_METROSQUADRADO"));
                contrato.setContratoIMovelDescricao(rs.getString("CONTRATO_IMOVEL_DESCRICAO"));

                listaContratos.add(contrato);
            }
            connection.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - getTodosCliente - Erro: " + e);
        }
        return listaContratos;
    }
    
    public ContratoData getContratoById(int contratoId) {
        ContratoData contrato = new ContratoData();
        try {
            Connection connection = new ConnectionFactory().getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM CONTRATO WHERE CONTRATO_ID = " + contratoId);
            while (rs.next()) {
                contrato.setContratoId(Integer.parseInt(rs.getString("CONTRATO_ID")));
                contrato.setContratoData(rs.getString("CONTRATO_DATA"));
                contrato.setContratoFuncionarioNome(rs.getString("CONTRATO_FUNCIONARIO_NOME"));
                contrato.setContratoFuncionarioSobrenome(rs.getString("CONTRATO_FUNCIONARIO_SOBRENOME"));
                contrato.setContratoFuncionarioCpf(rs.getString("CONTRATO_FUNCIONARIO_CPF"));
                contrato.setContratoFuncionarioEmail(rs.getString("CONTRATO_FUNCIONARIO_EMAIL"));
                contrato.setContratoFuncionarioFilial(rs.getString("CONTRATO_FUNCIONARIO_FILIAL"));

                contrato.setContratoClienteProprietarioNome(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_NOME"));
                contrato.setContratoClienteProprietarioSobrenome(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_SOBRENOME"));
                contrato.setContratoClienteProprietarioCpf(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_CPF"));
                contrato.setContratoClienteProprietarioRg(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_RG"));
                contrato.setContratoClienteProprietarioEmail(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_EMAIL"));
                contrato.setContratoClienteProprietarioCelular(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_CELULAR"));
                contrato.setContratoClienteProprietarioTelefone(rs.getString("CONTRATO_CLIENTEPROPRIETARIO_TELEFONE"));
                
                contrato.setContratoClienteInteressadoNome(rs.getString("CONTRATO_CLIENTEINTERESSADO_NOME"));
                contrato.setContratoClienteInteressadoSobrenome(rs.getString("CONTRATO_CLIENTEINTERESSADO_SOBRENOME"));
                contrato.setContratoClienteInteressadoCpf(rs.getString("CONTRATO_CLIENTEINTERESSADO_CPF"));
                contrato.setContratoClienteInteressadoRg(rs.getString("CONTRATO_CLIENTEINTERESSADO_RG"));
                contrato.setContratoClienteInteressadoEmail(rs.getString("CONTRATO_CLIENTEINTERESSADO_EMAIL"));
                contrato.setContratoClienteInteressadoCelular(rs.getString("CONTRATO_CLIENTEINTERESSADO_CELULAR"));
                contrato.setContratoClienteInteressadoTelefone(rs.getString("CONTRATO_CLIENTEINTERESSADO_TELEFONE"));
                
                contrato.setContratoIMovelRua(rs.getString("CONTRATO_IMOVEL_RUA"));
                contrato.setContratoIMovelNumero(rs.getString("CONTRATO_IMOVEL_NUMERO"));
                contrato.setContratoIMovelComplemento(rs.getString("CONTRATO_IMOVEL_COMPLEMENTO"));
                contrato.setContratoIMovelCep(rs.getString("CONTRATO_IMOVEL_CEP"));
                contrato.setContratoIMovelBairro(rs.getString("CONTRATO_IMOVEL_BAIRRO"));
                contrato.setContratoIMovelCidade(rs.getString("CONTRATO_IMOVEL_CIDADE"));
                contrato.setContratoIMovelEstado(rs.getString("CONTRATO_IMOVEL_ESTADO"));
                contrato.setContratoIMovelTipoTransacao(rs.getString("CONTRATO_IMOVEL_TIPOTRANSACAO"));
                contrato.setContratoIMovelVlrVenda(rs.getString("CONTRATO_IMOVEL_VLRVENDA"));
                contrato.setContratoIMovelVlrAluguel(rs.getString("CONTRATO_IMOVEL_VLRALUGUEL"));
                contrato.setContratoIMovelQtdVagasGaragem(rs.getString("CONTRATO_IMOVEL_QTDVAGASGARAGEM"));
                contrato.setContratoIMovelQtdQuartos(rs.getString("CONTRATO_IMOVEL_QTDDORMITORIOS"));
                contrato.setContratoIMovelTipo(rs.getString("CONTRATO_IMOVEL_TIPO"));
                contrato.setContratoIMovelMetrosQuadrado(rs.getString("CONTRATO_IMOVEL_METROSQUADRADO"));
                contrato.setContratoIMovelDescricao(rs.getString("CONTRATO_IMOVEL_DESCRICAO"));
                return contrato;
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Erro no banco de dados - SQLException - Classe: ClienteDAO.java - getClienteById - Erro: " + e);
        }
        return contrato;

    }
    
        public boolean excluirContrato(int contratoId) {
        try {
            String sql = "DELETE FROM CONTRATO WHERE CONTRATO_ID = " + contratoId;
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

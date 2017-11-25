package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    public  Connection getConnection() throws SQLException, ClassNotFoundException {
        try {
            Connection connection = null;
            String driverName = "com.mysql.jdbc.Driver";
            Class.forName(driverName);
            String nomeBD = "mysql";
            String url = "jdbc:mysql://localhost:3305/" + nomeBD + "?zeroDateTimeBehavior=convertToNull";
            String username = "root";
            String password = "";
            connection = DriverManager.getConnection(url, username, password);
            return connection;

        } catch (SQLException e) {
            System.out.println("Erro na conexão do banco de dados: " + e);
            return null;
        }
    }

    public void restartConnection() throws SQLException, ClassNotFoundException {
        getConnection().close();
        getConnection();
    }
}

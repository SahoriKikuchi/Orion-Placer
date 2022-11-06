/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Amanda e Lucas
 */
public class User {

    public Connection conectarBD() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.Driver.Manager").newInstance();
            String url = "jdbc:mysql//127.0.0.1/test?user=root$password=";
            conn = DriverManager.getConnection(url);
        } catch (Exception e) {
        }
        return conn;
    }
    public String nome = "";
    public boolean result = false;

    public boolean verificarUsuario(String login, String senha) throws SQLException {
        String sql = "";
        String sqlpj = "";
        Connection conn = conectarBD();
        // SQL
        sql = "SELECT email FROM usuario_pf "
                + "WHERE Email = "
                + "'"
                + login
                + "'"
                + " AND senha = "
                + "'"
                + senha
                + "';";

        sqlpj = "SELECT email FROM usuario_pj "
                + "WHERE Email = "
                + "'"
                + login
                + "'"
                + " AND senha = "
                + "'"
                + senha
                + "';";
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                result = true;
                nome = rs.getString("nome");

            }
        } catch (Exception e) {
            try {
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(sqlpj);
                if (rs.next()) {
                    result = true;
                    nome = rs.getString("nome");

                }

            } catch (Exception epj) {

            }
        }
        return result;
    }

}

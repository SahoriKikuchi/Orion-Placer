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
import cadastrosclientes.jdbc.ConnectionFactory;

/**
 *
 * @author Amanda e Lucas
 */
public class User {

    public Connection conectarBD() {
        Connection conn = null;

        try {
            conn = ConnectionFactory.getConnection();
        } catch (Exception e) {
        }
        return conn;
    }
    public String nome = "";
    public boolean result = false;
    public boolean pj = false;
    public boolean pf = false;
    public boolean erro = true;

    public boolean verificarSenha(String email, String senha) throws SQLException {
        String sql = "";
        String sqlpj = "";
        Connection conn = conectarBD();
        // SQL
        sql = "UPDATE Email FROM usuario_pf "
                + "SET senha = "
                + "'"
                + senha
                + "' "
                + "WHERE Email = "
                + "'"
                + email
                + "';";

        sqlpj = "SELECT email FROM usuario_pj "
                + "WHERE email = "
                + "SET senha = "
                + "'"
                + senha
                + "' "
                + "'"
                + email
                + "';";
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                result = true;
                pf = true;
                erro = false;
            }
        } catch (Exception e) {
        }
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sqlpj);
            if (rs.next()) {
                result = true;
                pj = true;
                erro = false;
            }

        } catch (Exception epj) {

        }
        return result;
    }

    public boolean verificarUsuario(String login, String senha) throws SQLException {
        String sql = "";
        String sqlpj = "";
        Connection conn = conectarBD();
        // SQL
        sql = "SELECT Email FROM usuario_pf "
                + "WHERE Email = "
                + "'"
                + login
                + "'"
                + " AND senha = "
                + "'"
                + senha
                + "';";

        sqlpj = "SELECT email FROM usuario_pj "
                + "WHERE email = "
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
                pf = true;
                erro = false;
            }
        } catch (Exception e) {
        }
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sqlpj);
            if (rs.next()) {
                result = true;
                pj = true;
                erro = false;
            }

        } catch (Exception epj) {

        }
        return result;
    }

}

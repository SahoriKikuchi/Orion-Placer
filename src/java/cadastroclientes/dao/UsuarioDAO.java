/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cadastroclientes.dao;

import cadastroclientes.entidades.Usuario;
import static cadastrosclientes.jdbc.ConnectionFactory.getConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Amanda e Lucas
 */
public class UsuarioDAO extends DAO<Usuario> {

    public UsuarioDAO() throws SQLException {
    }

    @Override
    public void salvar(Usuario obj) throws SQLException {

        PreparedStatement stmt = getConnection().prepareStatement(
                "INSERT INTO "
                + "usuario_pf( nomeCompleto, CPF, dataDeNascimento, "
                + "Email, senha, image) "
                + "VALUES (?, ?, ?, ?, ?, ?);");

        stmt.setString(1, obj.getNomeCompleto());
        stmt.setString(2, obj.getCpf());
        stmt.setDate(3, obj.getDataDeNascimento());
        stmt.setString(4, obj.getEmail());
        stmt.setString(5, obj.getSenha());
        stmt.setBlob(6, obj.getImage());

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public void atualizar(Usuario obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "UPDATE usuario_pf "
                + "SET"
                + " Email = ?,"
                + " image = ? "
                + "WHERE"
                + " id = ?;");

        stmt.setString(1, obj.getEmail());
        stmt.setBlob(2, obj.getImage());
        stmt.setInt(3, obj.getId());

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public void excluir(Usuario obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "DELETE FROM usuario_pf "
                + "WHERE"
                + " id = ?;");

        stmt.setInt(1, obj.getId());

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public List<Usuario> listarTodos() throws SQLException {
        List<Usuario> lista = new ArrayList<>();
        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT"
                + "u.id idUsuario_pf, "
                + "u.nomeCompleto nomeCompletoUsuario_pf, "
                + "u.cpf cpfUsuario_pf, "
                + "u.email emailUsuario_pf, "
                + "u.senha senhaUsuario_pf, "
                + "u.image imageUsuario_pf "
                + "FROM"
                + " usuario_pf u "
                + "ORDER BY u.nomeCompleto;");

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {

            Usuario u = new Usuario();

            u.setId(rs.getInt("idUsuario_pf"));
            u.setNomeCompleto(rs.getString("nomeCompletoUsuario_pf"));
            u.setCpf(rs.getString("cpfUsuario_pf"));
            u.setEmail(rs.getString("emailUsuario_pf"));
            u.setSenha(rs.getString("senhaUsuario_pf"));
            u.setImage(rs.getBlob("imageUsuario_pf"));

            lista.add(u);

        }

        rs.close();
        stmt.close();

        return lista;
    }

    @Override
    public Usuario obterPorId(int id) throws SQLException {
        Usuario u = null;
        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT"
                + "u.id idUsuario_pf, "
                + "u.nomeCompleto nomeCompletoUsuario_pf, "
                + "u.cpf cpfUsuario_pf, "
                + "u.email emailUsuario_pf, "
                + "u.senha senhaUsuario_pf, "
                + "u.image imageUsuario_pf "
                + "FROM"
                + " usuario_pf u "
                + "WHERE"
                + " u.id = ?;");

        stmt.setInt(1, id);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {

            u = new Usuario();

            u.setId(rs.getInt("idUsuario_pf"));
            u.setNomeCompleto(rs.getString("nomeCompletoUsuario_pf"));
            u.setCpf(rs.getString("cpfUsuario_pf"));
            u.setEmail(rs.getString("emailUsuario_pf"));
            u.setSenha(rs.getString("senhaUsuario_pf"));
            u.setImage(rs.getBlob("imageUsuario_pf"));

        }

        rs.close();
        stmt.close();

        return u;

    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cadastroclientes.dao;

import cadastroclientes.entidades.Usuario;
import static cadastrosclientes.jdbc.ConnectionFactory.getConnection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Amanda e Lucas
 */
public class UsuarioDAO extends DAO<Usuario>{
    public UsuarioDAO() throws SQLException {
    }
    
    @Override
    public void salvar( Usuario obj ) throws SQLException {

        PreparedStatement stmt = getConnection().prepareStatement(
                "INSERT INTO " + 
                "cidade( nome, estado_id ) " + 
                "VALUES( ?, ? );" );

        stmt.setString( 1, obj.getNomeCompleto() );
        
        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public void atualizar(Usuario obj) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void excluir(Usuario obj) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Usuario> listarTodos() throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Usuario obterPorId(int id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
}

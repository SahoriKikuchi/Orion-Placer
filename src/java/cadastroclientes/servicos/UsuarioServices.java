/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cadastroclientes.servicos;

import cadastroclientes.dao.UsuarioDAO;
import cadastroclientes.entidades.Usuario;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Amanda E Lucas
 */
public class UsuarioServices {

    /**
     * Usa o CidadeDAO para obter todos os Cidades.
     *
     * @return Lista de Cidades.
     */
    public List<Usuario> getTodos() {

        List<Usuario> lista = new ArrayList<>();
        UsuarioDAO dao = null;

        try {
            dao = new UsuarioDAO();
            lista = dao.listarTodos();
        } catch (SQLException exc) {
            exc.printStackTrace();
        } finally {
            if (dao != null) {
                try {
                    dao.fecharConexao();
                } catch (SQLException exc) {
                    exc.printStackTrace();
                }
            }
        }

        return lista;

    }
}

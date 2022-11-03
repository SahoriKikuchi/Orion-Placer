/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cadastroclientes.servicos;

import cadastroclientes.dao.EmpresaDAO;
import cadastroclientes.entidades.Empresa;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Amanda e Lucas
 */
public class EmpresaServices {
    public List<Empresa> getTodos() {

        List<Empresa> lista = new ArrayList<>();
        EmpresaDAO dao = null;

        try {
            dao = new EmpresaDAO();
            lista = dao.listarTodos();
        } catch ( SQLException exc ) {
            exc.printStackTrace();
        } finally {
            if ( dao != null ) {
                try {
                    dao.fecharConexao();
                } catch ( SQLException exc ) {
                    exc.printStackTrace();
                }
            }
        }

        return lista;

    }
}

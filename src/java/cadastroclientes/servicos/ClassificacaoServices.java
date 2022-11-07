/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cadastroclientes.servicos;

import cadastroclientes.dao.ClassificacaoDAO;
import cadastroclientes.dao.EmpresaDAO;
import cadastroclientes.entidades.Classificacao;
import cadastroclientes.entidades.Empresa;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lpcor
 */
public class ClassificacaoServices {

    public List<Classificacao> getTodos() {

        List<Classificacao> lista = new ArrayList<>();
        ClassificacaoDAO dao = null;

        try {
            dao = new ClassificacaoDAO();
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

package cadastroeventos.servicos;

import cadastroeventos.dao.EventosDAO;
import cadastroeventos.entidades.Eventos;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EventosServices {

    public List<Eventos> getTodos() {

        List<Eventos> lista = new ArrayList<>();
        EventosDAO dao = null;

        try {
            dao = new EventosDAO();
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

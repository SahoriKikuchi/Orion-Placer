package cadastroeventos.controladores;

import cadastroeventos.dao.EventosDAO;
import cadastroeventos.entidades.Eventos;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet( name = "EventosServlet", 
             urlPatterns = { "/processaEventos" } )
public class EventosServlet extends HttpServlet {

    protected void processRequest( 
            HttpServletRequest request, 
            HttpServletResponse response )
            throws ServletException, IOException {
        
        String acao = request.getParameter( "acao" );
        EventosDAO dao = null;
        RequestDispatcher disp = null;

        try {

            dao = new EventosDAO();

            if ( acao.equals( "inserir" ) ) {

                String nome = request.getParameter( "nome" );
                String localizacao = request.getParameter( "localizacao" );
                String data = request.getParameter( "data" );
                String responsavel = request.getParameter( "responsavel" );
                String obs = request.getParameter( "obs" );

                Eventos e = new Eventos();
                e.setNome( nome );
                e.setLocalizacao( localizacao );
                e.setData( data );
                e.setResponsavel( responsavel );
                e.setObservacao( obs );

                dao.salvar( e );

                disp = request.getRequestDispatcher(
                        "/formularios/eventos/listagem.jsp" );

            } else if ( acao.equals( "alterar" ) ) {

                int id = Integer.parseInt(request.getParameter( "id" ));
                String nome = request.getParameter( "nome" );
                String localizacao = request.getParameter( "localizacao" );
                String data = request.getParameter( "data" );
                String responsavel = request.getParameter( "responsavel" );
                String obs = request.getParameter( "obs" );

                Eventos c = new Eventos();
                c.setId( id );
                c.setNome( nome );
                c.setLocalizacao( localizacao );
                c.setData( data );
                c.setResponsavel( responsavel );
                c.setObservacao( obs );

                dao.atualizar( c );

                disp = request.getRequestDispatcher(
                        "/formularios/eventos/listagem.jsp" );

            } else if ( acao.equals( "excluir" ) ) {

                int id = Integer.parseInt(request.getParameter( "id" ));

                Eventos c = new Eventos();
                c.setId( id );

                dao.excluir( c );

                disp = request.getRequestDispatcher(
                        "/formularios/eventos/listagem.jsp" );

            } else {
                
                int id = Integer.parseInt(request.getParameter( "id" ));
                Eventos c = dao.obterPorId( id );
                request.setAttribute( "eventos", c );
                
                if ( acao.equals( "prepararAlteracao" ) ) {
                    disp = request.getRequestDispatcher( 
                            "/formularios/eventos/alterar.jsp" );
                } else if ( acao.equals( "prepararExclusao" ) ) {
                    disp = request.getRequestDispatcher( 
                            "/formularios/eventos/excluir.jsp" );
                }
                
            }

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

        if ( disp != null ) {
            disp.forward( request, response );
        }
        
    }

    @Override
    protected void doGet( 
            HttpServletRequest request, 
            HttpServletResponse response )
            throws ServletException, IOException {
        processRequest( request, response );
    }

    @Override
    protected void doPost( 
            HttpServletRequest request, 
            HttpServletResponse response )
            throws ServletException, IOException {
        processRequest( request, response );
    }

    @Override
    public String getServletInfo() {
        return "EventosServlet";
    }

}

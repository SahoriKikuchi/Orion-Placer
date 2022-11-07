package cadastroeventos.dao;

import cadastroeventos.entidades.Eventos;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class EventosDAO extends DAO<Eventos> {

    private Eventos eventos;

       
    public EventosDAO() throws SQLException {
    }

    @Override
    public void salvar( Eventos obj ) throws SQLException {

        PreparedStatement stmt = getConnection().prepareStatement(
                "INSERT INTO " + 
                "estado( nome, localizacao, data, responsavel, obs ) " + 
                "VALUES( ?, ?, ?, ?, ? );" );

        stmt.setString( 1, obj.getNome() );
        stmt.setString( 2, obj.getLocalizacao() );
        stmt.setString( 3, obj.getData() );
        stmt.setString( 4, obj.getResponsavel() );
        stmt.setString( 5, obj.getObservacao() );

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public void atualizar( Eventos obj ) throws SQLException {

        PreparedStatement stmt = getConnection().prepareStatement(
                "UPDATE eventos " + 
                "SET" + 
                "    nome = ?," + 
                "    localizacao = ? " + 
                "    data = ?" +
                "    responsavel = ? " +
                "    obs = ?; ");       

        stmt.setString( 1, obj.getNome() );
        stmt.setString( 2, obj.getLocalizacao() );
        stmt.setString( 3, obj.getData() );
        stmt.setString( 4, obj.getResponsavel() );
        stmt.setString( 5, obj.getObservacao() );
        stmt.setInt( 6, obj.getId() );

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public void excluir( Eventos obj ) throws SQLException {

        PreparedStatement stmt = getConnection().prepareStatement(
                "DELETE FROM eventos " + 
                "WHERE" + 
                "    id = ?;" );

        stmt.setInt( 1, obj.getId() );

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public List<Eventos> listarTodos() throws SQLException {

        List<Eventos> lista = new ArrayList<>();

        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT * FROM eventos " + 
                "ORDER BY nome, localizacao, data, responsavel, obs;" );

        ResultSet rs = stmt.executeQuery();

        while ( rs.next() ) {

            Eventos e = new Eventos();

            e.setId( rs.getInt( "id" ) );
            e.setNome( rs.getString( "nome" ) );
            e.setLocalizacao( rs.getString( "localizacao" ) );
            e.setData( rs.getString( "data" ) );
            e.setResponsavel( rs.getString( "responsavel" ) );
            e.setObservacao( rs.getString( "obs" ) );
            
            lista.add( e );

        }

        rs.close();
        stmt.close();

        return lista;

    }

    @Override
    public Eventos obterPorId( int id ) throws SQLException {

        Eventos e = null;

        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT * FROM eventos " + 
                "ORDER BY nome, localizacao, data, responsavel, obs;" );

        stmt.setInt( 1, id );

        ResultSet rs = stmt.executeQuery();

        if ( rs.next() ) {

            eventos  = new Eventos();

            eventos.setId( rs.getInt( "id" ) );
            eventos.setNome( rs.getString( "nome" ) );
            eventos.setLocalizacao( rs.getString( "localizacao" ) );
            eventos.setData( rs.getString( "data" ) );
            eventos.setResponsavel( rs.getString( "responsavel" ) );
            eventos.setObservacao( rs.getString( "obs" ) );
        }

        rs.close();
        stmt.close();

        return eventos;

    }

    }


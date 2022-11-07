package cadastroclientes.dao;

import cadastroclientes.entidades.Classificacao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lpcor
 */
public class ClassificacaoDAO extends DAO<Classificacao> {

    public ClassificacaoDAO() throws SQLException {
    }
    
    @Override
    public void salvar(Classificacao obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "INSERT INTO "
                + "classificacao( classificacao ) "
                + "VALUES (Pubs & Bares), (Festas Universitárias), (Restaurantes), (Eventos), (Atividade Recreativa);");

//        stmt.setString(1, obj.getClassificacao());

        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public void atualizar(Classificacao obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "UPDATE classificacao "
                + "SET"
                + " classificacao = ? "
                + "WHERE"
                + " id = ?;");

        stmt.setString(1, obj.getClassificacao());
        stmt.setInt(2, obj.getId());

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public void excluir(Classificacao obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "DELETE FROM classificacao "
                + "WHERE"
                + " id = ?;");

        stmt.setInt(1, obj.getId());

        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public List<Classificacao> listarTodos() throws SQLException {
        List<Classificacao> lista = new ArrayList<>();
        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT * "
                + "FROM"
                + " classificacao "
                + "ORDER BY classificacao;");

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {

            Classificacao c = new Classificacao();

            c.setId(rs.getInt("idClassificacao"));
            c.setClassificacao(rs.getString("classificacaoClassificacao"));

            lista.add(c);

        }

        rs.close();
        stmt.close();

        return lista;
    }

    @Override
    public Classificacao obterPorId(int id) throws SQLException {
        Classificacao c = null;

        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT"
                + "c.id idClassificacao, "
                + "c.classificacao classificacaoClassificacao "
                + "FROM"
                + " classificacao c "
                + "WHERE"
                + " c.id = ?;");

        stmt.setInt(1, id);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {

            c = new Classificacao();

            c.setId(rs.getInt("idClassificacao"));
            c.setClassificacao(rs.getString("classificacaoClassificacao"));

        }

        rs.close();
        stmt.close();

        return c;

    }

}

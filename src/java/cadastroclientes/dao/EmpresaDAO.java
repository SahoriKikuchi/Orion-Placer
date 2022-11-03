/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cadastroclientes.dao;

import cadastroclientes.entidades.Classificacao;
import cadastroclientes.entidades.Empresa;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Amanda e Lucas
 */
public class EmpresaDAO extends DAO<Empresa> {

    public EmpresaDAO() throws SQLException {
    }

    @Override
    public void salvar(Empresa obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "INSERT INTO "
                + "usuario_pj( nomeEmpresa, cnpj, telefone, "
                + "cep, Endereco, classificacao_id, email, senha, imagem) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);");

        stmt.setString(1, obj.getNomeEmpresa());
        stmt.setString(2, obj.getCnpj());
        stmt.setInt(3, obj.getNumeroDeTelefone());
        stmt.setInt(4, obj.getCep());
        stmt.setString(5, obj.getEndereco());
        stmt.setInt(6, obj.getClassificacao().getId());
        stmt.setString(7, obj.getEmail());
        stmt.setString(8, obj.getSenha());
        stmt.setBlob(9, obj.getImagem());

        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public void atualizar(Empresa obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "UPDATE usuario_pj "
                + "SET"
                + " email = ?,"
                + " telefone = ?,"
                + " imagem = ? "
                + "WHERE"
                + " id = ?;");

        stmt.setString(1, obj.getEmail());
        stmt.setInt(2, obj.getNumeroDeTelefone());
        stmt.setBlob(3, obj.getImagem());
        stmt.setInt(4, obj.getId());

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public void excluir(Empresa obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "DELETE FROM usuario_pj "
                + "WHERE"
                + " id = ?;");

        stmt.setInt(1, obj.getId());

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public List<Empresa> listarTodos() throws SQLException {

        List<Empresa> lista = new ArrayList<>();
        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT"
                + "e.id idUsuario_pj, "
                + "e.nome nomeEmpresaUsuario_pj, "
                + "e.cnpj cnpjUsuario_pj, "
                + "e.telefone telefoneUsuario_pj, "
                + "e.cep cepUsuario_pj, "
                + "e.Endereco EnderecoUsuario_pj, "
                + "c.id idClassificacao, "
                + "e.email emailUsuario_pj, "
                + "e.senha senhaUsuario_pj, "
                + "e.imagem imagemUsuario_pj "
                + "FROM"
                + " usuario_pj e, "
                + " classificacao c "
                + "WHERE"
                + " e.classificacao_id = c.id "
                + "ORDER BY e.nome;");

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {

            Empresa e = new Empresa();
            Classificacao c = new Classificacao();

            e.setId(rs.getInt("idUsuario_pj"));
            e.setNomeEmpresa(rs.getString("nomeUsuario_pj"));
            e.setCnpj(rs.getString("cnpjUsuario_pj"));
            e.setNumeroDeTelefone(rs.getInt("telefoneUsuario_pj"));
            e.setCep(rs.getInt("cepUsuario_pj"));
            e.setEndereco(rs.getString("enderecoUsuario_pj"));
            e.setEmail(rs.getString("emailUsuario_pj"));
            e.setSenha(rs.getString("senhaUsuario_pj"));
            e.setImagem(rs.getBlob("imagemUsuario_pj"));
            e.setClassificacao(c);

            c.setId(rs.getInt("idClassificacao"));

            lista.add(e);

        }

        rs.close();
        stmt.close();

        return lista;

    }

    @Override
    public Empresa obterPorId(int id) throws SQLException {
        Empresa e = null;

        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT"
                + "e.id idUsuario_pj, "
                + "e.nome nomeEmpresaUsuario_pj, "
                + "e.cnpj cnpjUsuario_pj, "
                + "e.telefone telefoneUsuario_pj, "
                + "e.cep cepUsuario_pj, "
                + "e.Endereco EnderecoUsuario_pj, "
                + "c.id idClassificacao, "
                + "e.email emailUsuario_pj, "
                + "e.senha senhaUsuario_pj, "
                + "e.imagem imagemUsuario_pj "
                + "FROM"
                + " usuario_pj e, "
                + " classificacao c "
                + "WHERE"
                + " e.classificacao_id = c.id AND "
                + " e.id = ?;");

        stmt.setInt(1, id);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {

            e = new Empresa();
            Classificacao c = new Classificacao();

            e.setId(rs.getInt("idUsuario_pj"));
            e.setNomeEmpresa(rs.getString("nomeUsuario_pj"));
            e.setCnpj(rs.getString("cnpjUsuario_pj"));
            e.setNumeroDeTelefone(rs.getInt("telefoneUsuario_pj"));
            e.setCep(rs.getInt("cepUsuario_pj"));
            e.setEndereco(rs.getString("enderecoUsuario_pj"));
            e.setEmail(rs.getString("emailUsuario_pj"));
            e.setSenha(rs.getString("senhaUsuario_pj"));
            e.setImagem(rs.getBlob("imagemUsuario_pj"));
            e.setClassificacao(c);

            c.setId(rs.getInt("idClassificacao"));

        }

        rs.close();
        stmt.close();

        return e;
    }

}

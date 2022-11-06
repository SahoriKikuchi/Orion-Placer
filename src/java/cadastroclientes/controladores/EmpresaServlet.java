/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package cadastroclientes.controladores;

import cadastroclientes.dao.EmpresaDAO;
import cadastroclientes.entidades.Classificacao;
import cadastroclientes.entidades.Empresa;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Date;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author amand
 */
@WebServlet(name = "EmpresaServlet", urlPatterns = {"/processaEmpresa"})
public class EmpresaServlet extends HttpServlet {

    private Blob blob = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private boolean uploadF(InputStream is, String path) {
        boolean test = false;
        try {
            byte[] byt = new byte[is.available()];
            is.read();
            FileOutputStream fops = new FileOutputStream(path);
            fops.write(byt);
            blob = null;
            blob.setBytes(0, byt);
            fops.flush();
            test = true;
            return test;
        } catch (Exception e) {
            return test;
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acao = request.getParameter("acao");
        EmpresaDAO dao = null;
        RequestDispatcher disp = null;

        try {

            dao = new EmpresaDAO();

            if (acao.equals("inserir")) {

                String nome = request.getParameter("nome");
                String cnpj = request.getParameter("cnpj");
                String telefone = request.getParameter("tel");

                telefone = telefone.replaceAll("[\\D]+$", " ");
                telefone = telefone.trim();
                int tel = Integer.parseInt(telefone);

                String cep1 = request.getParameter("cep");
                cep1 = cep1.replaceAll("[\\D]+$", " ");
                cep1 = cep1.trim();
                int cep = Integer.parseInt(cep1);

                String endereco = request.getParameter("endereco");
                Classificacao c = null;
                c.setClassificacao(request.getParameter("classificacao"));
                String email = request.getParameter("email");
                String senha = request.getParameter("senha");
                String cSenha = request.getParameter("cSenha");
//                String image = u.getParameter("arquivos");

                Part part = request.getPart("arquivos");
                String nomeArquivo = part.getSubmittedFileName();
                String path = getServletContext().getRealPath("/" + "files" + File.separator + nomeArquivo);
                InputStream is = part.getInputStream();

                uploadF(is, path);

                Empresa u = new Empresa();
                u.setNomeEmpresa(nome);
                u.setCnpj(cnpj);
                u.setNumeroDeTelefone(tel);
                u.setCep(cep);
                u.setEndereco(endereco);
                u.setClassificacao(c);
                u.setEmail(email);
                if (senha.equals(cSenha)) {
                    u.setSenha(senha);
                }
                u.setImagem(blob);

                dao.salvar(u);

                disp = request.getRequestDispatcher(
                        "/formularios/cidades/listagem.jsp");

            } else if (acao.equals("alterar")) {

                String email = request.getParameter("email");
                Part part = request.getPart("arquivos");
                String nomeArquivo = part.getSubmittedFileName();
                String path = getServletContext().getRealPath("/" + "files" + File.separator + nomeArquivo);
                InputStream is = part.getInputStream();

                uploadF(is, path);

                Empresa u = new Empresa();
                u.setEmail(email);
                u.setImagem(blob);

                dao.atualizar(u);

                disp = request.getRequestDispatcher(
                        "/formularios/cidades/listagem.jsp");

            } else if (acao.equals("excluir")) {

                int id = Integer.parseInt(request.getParameter("id"));

                Empresa u = new Empresa();
                u.setId(id);

                dao.excluir(u);

                disp = request.getRequestDispatcher(
                        "/formularios/cidades/listagem.jsp");

            } else {

                int id = Integer.parseInt(request.getParameter("id"));
                Empresa u = dao.obterPorId(id);
                request.setAttribute("empresa", u);

                if (acao.equals("prepararAlteracao")) {
                    disp = request.getRequestDispatcher(
                            "/formularios/cidades/alterar.jsp");
                } else if (acao.equals("prepararExclusao")) {
                    disp = request.getRequestDispatcher(
                            "/formularios/cidades/excluir.jsp");
                }

            }

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

        if (disp != null) {
            disp.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "EmpresaServlet";
    }// </editor-fold>

}

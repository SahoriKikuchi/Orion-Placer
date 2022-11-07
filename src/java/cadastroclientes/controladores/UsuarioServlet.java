/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package cadastroclientes.controladores;

import cadastroclientes.dao.UsuarioDAO;
import cadastroclientes.entidades.Usuario;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Date;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Amanda e Lucas
 */
@MultipartConfig(
        location = "",
        fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)
@WebServlet(name = "UsuarioServlet", urlPatterns = {"/processaUsuario"})
public class UsuarioServlet extends HttpServlet {

    public Blob b = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private boolean uploadF(FileInputStream is, String path) {
        boolean test = false;
        try {
            System.out.println(path);
            byte[] byt = new byte[is.available()];
            is.read(byt);
            b.setBytes(1, byt);
            System.out.println(byt.length + "  +  " + byt.toString() + " aa");
            FileOutputStream fops = new FileOutputStream(path);
            fops.write(byt);
            fops.flush();
            fops.close();
            test = true;
            return test;
        } catch (Exception e) {
            return test;
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acao = request.getParameter("acao");
        UsuarioDAO dao = null;
        RequestDispatcher disp = null;
        boolean certo = false;

        try {

            dao = new UsuarioDAO();

            if (acao.equals("inserir")) {

                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                cpf = cpf.replaceAll("[\\D]+$", " ");
                cpf = cpf.trim();
                String email = request.getParameter("email");
                Date dataDeNascimento = Date.valueOf(request.getParameter("dataDeNascimento"));
                String senha = request.getParameter("senha");
                String cSenha = request.getParameter("cSenha");

                Part part = request.getPart("file");
                String nomeArquivo = part.getSubmittedFileName();
                
//                String path = getServletContext().getRealPath("")+"\\files\\" + nomeArquivo;

//                String appPath = request.getServletContext().getRealPath("");
//                String savePath = appPath + File.separator + "files";
//                part.write(savePath + File.separator + nomeArquivo);
//                FileInputStream is = (FileInputStream)part.getInputStream();
//                uploadF(is, path);

                Usuario u = new Usuario();
                u.setNomeCompleto(nome);
                u.setCpf(cpf);
                u.setEmail(email);
                u.setDataDeNascimento(dataDeNascimento);
                if (senha.equals(cSenha)) {
                    u.setSenha(senha);
                    certo = true;
                }
//                u.setImage(b);

                if (certo) {
                    dao.salvar(u);
                    disp = request.getRequestDispatcher(
                            "/index.jsp");
                } else {
                    disp = request.getRequestDispatcher(
                            "/erro.jsp");
                }

            } else if (acao.equals("alterar")) {

                String email = request.getParameter("email");
                Part part = request.getPart("file");
                String nomeArquivo = part.getSubmittedFileName();
                String path = getServletContext().getRealPath("/" + "files" + File.separator + nomeArquivo);
//                InputStream is = part.getInputStream();

//                uploadF(is, path);

                Usuario u = new Usuario();
                u.setEmail(email);
                u.setImage(b);

                dao.atualizar(u);

                disp = request.getRequestDispatcher(
                        "/formularios/cidades/listagem.jsp");

            } else if (acao.equals("excluir")) {

                int id = Integer.parseInt(request.getParameter("id"));

                Usuario u = new Usuario();
                u.setId(id);

                dao.excluir(u);

                disp = request.getRequestDispatcher(
                        "/formularios/cidades/listagem.jsp");

            } else {

                int id = Integer.parseInt(request.getParameter("id"));
                Usuario u = dao.obterPorId(id);
                request.setAttribute("usuario", u);

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
        return "UsuarioServlet";
    }// </editor-fold>

}

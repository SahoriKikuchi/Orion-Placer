/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cadastroclientes.entidades;

import java.io.File;

/**
 *
 * @author Amanda e Lucas
 */
public class Empresa {

    private int id;
    private String nomeEmpresa;
    private int cnpj;
    private int numeroDeTelefone;
    private int cep;
    private String endereco;
    private Classificacao classificacao;
    private String email;
    private String senha;
    private String confirmarSenha;
    private File imagem;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeEmpresa() {
        return nomeEmpresa;
    }

    public void setNomeEmpresa(String nomeEmpresa) {
        this.nomeEmpresa = nomeEmpresa;
    }

    public int getCnpj() {
        return cnpj;
    }

    public void setCnpj(int cnpj) {
        this.cnpj = cnpj;
    }

    public int getNumeroDeTelefone() {
        return numeroDeTelefone;
    }

    public void setNumeroDeTelefone(int numeroDeTelefone) {
        this.numeroDeTelefone = numeroDeTelefone;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public Classificacao getClassificacao() {
        return classificacao;
    }

    public void setClassificacao(Classificacao classificacao) {
        this.classificacao = classificacao;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getConfirmarSenha() {
        return confirmarSenha;
    }

    public void setConfirmarSenha(String confirmarSenha) {
        this.confirmarSenha = confirmarSenha;
    }

    public File getImagem() {
        return imagem;
    }

    public void setImagem(File imagem) {
        this.imagem = imagem;
    }

}

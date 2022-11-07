package cadastroeventos.entidades;

import java.sql.Date;

public class Eventos {

    private int id;
    private String nome;
    private String localizacao;
    private String data;
    private String responsavel;
    private String obs;
    

    public int getId() {
        return id;
    }

    public void setId( int id ) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome( String nome ) {
        this.nome = nome;
    }

    public String getLocalizacao() {
        return localizacao;
    }

    public void setLocalizacao( String localizacao ) {
        this.localizacao = localizacao;
    }
    
     public String getData() {
        return data;
    }

    public void setData( String data ) {
        this.data = data;
    }
     public String getResponsavel() {
        return responsavel;
    }

    public void setResponsavel( String responsavel ) {
        this.responsavel = responsavel;
    }
     public String getObservacao() {
        return obs;
    }

    public void setObservacao( String obs ) {
        this.obs = obs;
    }

    public void setEvento(Eventos e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

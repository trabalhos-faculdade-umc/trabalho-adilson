package model;

import java.util.Date;
/**
 *
 * @author alunocmc
 */
public class Pesquisa {
    // Atrib
    private int id;
    private String nome;
    private String tipo;           
    private int quant;
    
    //Métodos
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getQuant() {
        return quant;
    }

    public void setQuant(int quant) {
        this.quant = quant;
    }       
}

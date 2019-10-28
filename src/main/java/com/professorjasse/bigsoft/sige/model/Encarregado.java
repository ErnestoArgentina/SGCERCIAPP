/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professorjasse.bigsoft.sige.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
//import org.hibernate.validator.constraints.Email;


/**
 *
 * @author Erminio Jasse
 */
@Entity
//@Table (name="tb_professor")
/*, uniqueConstraints={
    @UniqueConstraint(columnNames={"usu_telefone1", "usu_telefone2"}, name="uk_usuariotelefone")
})*/

public class Encarregado implements Serializable{

    @Id
    @GeneratedValue private Integer id; 
    private String nome; 
    private String senha;
    private String telefone1;  
    private String perfil;
    private String genero;
    

    public Encarregado() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public String getTelefone1() {
        return telefone1;
    }

    public void setTelefone1(String telefone1) {
        this.telefone1 = telefone1;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }



    
    @Override
    public String toString() {
        return "Usuario{" + "nome=" + nome + ", senha=" + senha + ", telefone1=" + telefone1 + ", perfil=" + perfil + ", genero=" + genero + '}';
    }
    
}

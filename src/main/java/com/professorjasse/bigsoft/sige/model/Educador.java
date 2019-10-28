/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professorjasse.bigsoft.sige.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
//import org.hibernate.validator.constraints.Email;


/**
 *
 * @author Erminio Jasse
 */
@Entity
@Table (name="tb_Educador")/*, uniqueConstraints={
    @UniqueConstraint(columnNames={"usu_telefone1", "usu_telefone2"}, name="uk_usuariotelefone")
})*/

public class Educador implements Serializable{

    @Id
    @GeneratedValue
    private Integer id;
     private String nome; 
     private String senha;
     private String telefone1;  
     private String genero;
     String data_nascimento;
     private String especialidade;
     private String observacoes;
     private String nacionalidade;


    public Educador() {
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNacionalidade() {
        return nacionalidade;
    }

    public void setNacionalidade(String nacionalidade) {
        this.nacionalidade = nacionalidade;
    }
    
    
    public String getData_nascimento() {
        return data_nascimento;
    }

    public void setData_nascimento(String data_nascimento) {
        this.data_nascimento = data_nascimento;
    }

    public String getEspecialidade() {
        return especialidade;
    }

    public void setEspecialidade(String especialidade) {
        this.especialidade = especialidade;
    }

    public String getObservacoes() {
        return observacoes;
    }

    public void setObservacoes(String observacoes) {
        this.observacoes = observacoes;
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
        return "Educador{" + "id=" + id + ", nome=" + nome + ", senha=" + senha + ", telefone1=" + telefone1 +  ", genero=" + genero + ", data_nascimento=" + data_nascimento + ", especialidade=" + especialidade + ", observacoes=" + observacoes + ", nacionalidade=" + nacionalidade + '}';
    }

   
    
}

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
@Table (name="tb_Evento")/*, uniqueConstraints={
    @UniqueConstraint(columnNames={"usu_telefone1", "usu_telefone2"}, name="uk_usuariotelefone")
})*/

public class Evento implements Serializable{

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY) 
    @Column(name="id") private Integer id;
    @Column (name="Titulo", length=60, nullable = false) 
     private String titulo; 
    @Column (name="descricao", length=15, nullable=false) private String descricao;  
    @Column (name="data", length=15, nullable=false) private String data;


    public Evento() {
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
    
    

   
    @Override
    public String toString() {
        return titulo;
    }

   
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professorjasse.bigsoft.sige.app.controller;

//import javax.enterprise.context.SessionScoped;

import javax.faces.bean.SessionScoped;
import javax.inject.Named;


/**
 *
 * @author ernesto
 */
@SessionScoped
@Named("usuario")
public class Usuario {
    private final String nome = "anonimo";
    
    
    private String getNome() {
        return nome;
    }

//    private void setNome(String nome) {
//        this.nome = nome;
//    }
    
}

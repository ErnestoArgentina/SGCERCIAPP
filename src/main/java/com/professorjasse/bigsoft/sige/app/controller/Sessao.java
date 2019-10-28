/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professorjasse.bigsoft.sige.app.controller;

import session.*;
import com.professorjasse.bigsoft.sige.model.Educador;
import com.professorjasse.bigsoft.sige.model.Usuario;
import java.io.Serializable;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import org.graalvm.compiler.lir.CompositeValue.Component;

/**
 *
 * @author ernesto
 */
//@Component
@SessionScoped
@Named("sessao")
public class Sessao implements Serializable{
    
    private static Usuario usuario;
    private static Educador educador;
    public static String nomeEducadorLogado="Ninguem";

    public Sessao() {
    }

    public static String getNomeEducadorLogado() {
        return nomeEducadorLogado;
    }

    public static void setNomeEducadorLogado(String nomeEducadorLogado) {
        Sessao.nomeEducadorLogado = nomeEducadorLogado;
    }
    
    
    
    /**
     * 
     * @param educador 
     */
    public static void logarEducador(Educador educado){
        educador = educado;
        nomeEducadorLogado = educado.getNome();
    }
    
    /**
     * 
     * @param educador 
     */
    public void logoutEducador(Educador educador){
        Sessao.educador = null;
    }

    public Usuario getUsuario() {
        return usuario;
    }
    
    public static String getNome(){
        return educador.getNome();
    }

    public Educador getEducador() {
        return educador;
    }
    
        
    
}

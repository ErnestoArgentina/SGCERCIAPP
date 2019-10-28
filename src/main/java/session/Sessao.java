/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import com.professorjasse.bigsoft.sige.model.Educador;
import com.professorjasse.bigsoft.sige.model.Usuario;
import java.io.Serializable;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author ernesto
 */
@SessionScoped
public class Sessao implements Serializable{
    
    private static Usuario usuario;
    private static Educador educador;
    private static String nomeEducadorLogado="Ninguem";

    public Sessao() {
    }
    
    /**
     * 
     * @param educador 
     */
    public static void logarEducador(Educador educador){
        Sessao.educador = educador;
    }
    
    /**
     * 
     * @param educador 
     */
    public static void logoutEducador(){
        Sessao.educador = null;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public Educador getEducador() {
        return educador;
    }
    
        
    
}

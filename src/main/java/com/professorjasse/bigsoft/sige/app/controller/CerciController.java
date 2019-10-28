/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professorjasse.bigsoft.sige.app.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import com.professorjasse.bigsoft.sige.dao.DoenteDAO;
import com.professorjasse.bigsoft.sige.dao.EducadorDAO;
import com.professorjasse.bigsoft.sige.dao.EncarregadoDAO;
import com.professorjasse.bigsoft.sige.dao.UsuarioDAO;
import com.professorjasse.bigsoft.sige.model.Usuario;
import com.professorjasse.bigsoft.sige.dao.PessoaDAO;
import com.professorjasse.bigsoft.sige.model.Pessoa;
import com.professorjasse.bigsoft.sige.model.Doente;
import com.professorjasse.bigsoft.sige.dao.EventoDAO;
import java.util.List;
import javax.inject.Inject;
import javax.swing.JOptionPane;

/**
 *
 * @author bONGANI
 */
@Controller
@Path("/cerci")
//@Path("")
public class CerciController {
    
    @Inject private Result result;
    @Inject private UsuarioDAO dao;
    @Inject private PessoaDAO dao1;
    @Inject private DoenteDAO dao2;    
    @Inject private EducadorDAO educadprDao;    
    @Inject private EncarregadoDAO encarregadoDao;    
    @Inject private EventoDAO daoEvento;    
    
    @Path("/index")
    public void index() {
        result.include("alunos", dao2.findAllUsers().size());
        result.include("encarregados", encarregadoDao.findAllUsers().size());
        result.include("educadores", educadprDao.findAllUsers().size());
    }
    @Path("/utente")
    public void breadcrumbs() {
        
    }
    @Path("/area")
    public void listgroup() {
        
    }
    @Path("/perfilaluno")
    public void tabs() {
        
    }
    @Path("/adicionar")
    public void form() {
       result.include("list", dao.findAllUsers());
       
    }
    @Path("/editared")
    public void editared() {
       result.include("list", dao.findAllUsers());
       
    }
    @Path("/editarenc")
    public void editarenc() {
       result.include("list", dao.findAllUsers());
       
    }
    @Path("/editaral")
    public void editaral() {
       result.include("list", dao.findAllUsers());
       
    }
    @Path("/novopai")
    public void encarregado() {
//       result.include("list", dao1.findAllUsers());
       
    }
    
    @Path("/novoaluno")
    public void aluno() {
       result.include("list", dao2.findAllUsers());
       
    }
//    @Path("/addaluno")
//    public void addaluno() {
//       result.include("list", dao2.findAllUsers());
//       
//    }
    
    @Path("/add")
   public void add(Usuario entity) {
        dao.create(entity);
        result.redirectTo(CerciController.class).form();
    }
   @Path("/addpai")
   public void addpai(Pessoa entity) {
        dao1.create(entity);
        result.redirectTo(CerciController.class).encarregado();
    }
   @Path("/addaluno")
   public void addaluno(Doente entity) {
        dao2.create(entity);
        result.redirectTo(CerciController.class).aluno();
    }
   
    public void editarencarregado(Integer id){
       Pessoa adm =dao1.find(id); 
       JOptionPane.showMessageDialog(null, adm.getId());
//       dao1.update(pessoa);
       result.include("entity", dao1.find(adm.getId()));
       result.redirectTo(CerciController.class).editarenc();
   }
    public void editareducador(Integer id){
       Usuario adm =dao.find(id); 
       JOptionPane.showMessageDialog(null, adm.getId());
//       dao1.update(pessoa);
       result.include("entity", dao.find(adm.getId()));
       result.redirectTo(CerciController.class).editared();
   }
    public void editaraluno(Integer id){
       Doente adm =dao2.find(id); 
       JOptionPane.showMessageDialog(null, adm.getId());
//       dao1.update(pessoa);
       result.include("entity", dao2.find(adm.getId()));
       result.redirectTo(CerciController.class).editaral();
   }
    public void remove(Integer id){
       Pessoa adm =dao1.find(id); 
       dao1.delete(adm);
 
       result.redirectTo(CerciController.class).listencarregado();
   }
     public void removeal(Integer id){
       Doente adm =dao2.find(id); 
       dao2.delete(adm);
 
       result.redirectTo(CerciController.class).listencarregado();
   }
      public void removeed(Integer id){
       Usuario adm =dao.find(id); 
       dao.delete(adm);
 
       result.redirectTo(CerciController.class).listencarregado();
   }
   
   @Path("/editarencarregado1")
   public void editarencarregado1(Pessoa entity, Integer id, String nome, String perfil){
       entity = dao1.find(id);
       entity.setNome(nome);
       entity.setPerfil(perfil);
       dao1.update(entity);
       result.redirectTo(CerciController.class).listencarregado();
   }
   @Path("/editareducador1")
   public void editareducador1(Usuario entity, Integer id, String nome, String perfil){
       entity = dao.find(id);
       entity.setNome(nome);
       entity.setPerfil(perfil);
       dao.update(entity);
       result.redirectTo(CerciController.class).table();
   }
   
   @Path("/editaraluno1")
   public void editaraluno1(Doente entity, Integer id, String nome, String perfil){
       entity = dao2.find(id);
       entity.setNome(nome);
       entity.setPerfil(perfil);
       dao2.update(entity);
       result.redirectTo(CerciController.class).listaluno();
   }
    
    @Path("/listar")
    public void table() {
       result.include("list", dao.findAllUsers());
    }
   
    public void totaled() {
       result.include("list", dao.totaleducador());
    }
    
    @Path("/listarpai")
    public void listencarregado() {
       result.include("list", dao1.findAllUsers());
    }
    @Path("/listaluno")
    public void listaluno() {
       result.include("list", dao2.findAllUsers());
    }
    @Path("/grafico")
    public void chart() {
        
    }
    @Path("/evento")
    public void eventos() {
//        result.include("list", daoEvento.findAllUsers());
    }
//    @Path("/evento")
//    public void changelogs() {
//        
//    }
    @Path("/perfil")
    public void profile() {
        
    }
    @Path("/login")
    public void signin() {
        
    }
    @Path("/entrar")
    public void entrar( String telefone1, String senha) {
        /*if (entity.getTelefone1().equalsIgnoreCase("bioten11@gmail.com") && entity.getSenha().equals("0000")) {
//                            JOptionPane.showMessageDialog(null, "Nome do usuario ou senha INVALIDO!", "Erro ao entrar", JOptionPane.ERROR_MESSAGE, null);

            result.redirectTo(CerciController.class).index();
        } else {

                    JOptionPane.showMessageDialog(null, "Nome do usuario ou senha INVALIDO!", "Erro ao entrar", JOptionPane.ERROR_MESSAGE, null);
        result.redirectTo(CerciController.class).signup();

                }
//   */             result.redirectTo(CerciController.class).index();

    }
    @Path("/registar")
    public void signup() {
        
    }
    @Path("/senha")
    public void forgotpassword() {
        
    }
    @Path("/inicio")
    public void inicial() {
        
    }
   
}

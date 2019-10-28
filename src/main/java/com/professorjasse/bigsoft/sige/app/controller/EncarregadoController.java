
package com.professorjasse.bigsoft.sige.app.controller;

import br.com.caelum.vraptor.*;
import com.professorjasse.bigsoft.sige.dao.AvaliacaoPeriodicaDAO;
import com.professorjasse.bigsoft.sige.dao.AvaliacaoPorAreaDAO;
import com.professorjasse.bigsoft.sige.dao.DoenteDAO;
import com.professorjasse.bigsoft.sige.dao.EncarregadoDAO;
import com.professorjasse.bigsoft.sige.model.AvaliacaoPeriodica;
import com.professorjasse.bigsoft.sige.model.AvaliacaoPorArea;
import com.professorjasse.bigsoft.sige.model.Doente;
import com.professorjasse.bigsoft.sige.model.Encarregado;
import com.professorjasse.bigsoft.sige.model.Professor;
import java.util.Date;
import javax.inject.Inject;
import javax.swing.JOptionPane;


/**
 *
 * @author Jasse
 */

@Controller
@Path("/encarregado")
public class EncarregadoController {

    @Inject private Result result;
    @Inject private EncarregadoDAO dao;
    @Inject
    private DoenteDAO alunoDao;
    @Inject
    private AvaliacaoPeriodicaDAO avaliacaoPeriodicaDao;
    @Inject
    private AvaliacaoPorAreaDAO avaliacaoPorAreaDAO;
    
    
    
    @Path("/create")
    public void encarregado() {
        result.include("list", dao.findAllUsers());
    }
    @Path("/lista")
    public void listencarregado() {
        result.include("list", dao.findAllUsers());
    }
    
    @Path("/editar")
    public void editarenc(int id) {
        result.include("encarregado", dao.find(id));
    }
    
    @Path("/add")
    public void add(Encarregado entity) {
        dao.create(entity);
        result.redirectTo(EncarregadoController.class).encarregado();
    }
    @Path("")
    public void signin() {
//        result.redirectTo(EncarregadoController.class).encarregado();
    }
    
     @Path("/entrar")
    public void entrar(Encarregado entity) {
        for (Encarregado encarre : dao.findAllUsers()) {
            if (encarre.getNome().equals(entity.getNome())) {
                result.redirectTo(EncarregadoController.class).avaliacaoPeriodica(encarre.getId());
                result.include("encarregado", encarre);
            } else {
                JOptionPane.showMessageDialog(null, "Nome ou palavra chave invalida");
            }
        }
    }
    
    
    
    @Get
    @Path("/avaliacaoPeriodica")
    public void avaliacaoPeriodica(int id) {
        result.include("list", alunoDao.getByEncarregadoId(id));
        result.include("id", id);
    }

    @Get
    @Path("/avaliacaoPorArea")
    public void avaliacaoPorArea(int id) {
        result.include("list", alunoDao.getByEncarregadoId(id));
        result.include("id", id);
//        result.include("educador", idEducadorLogado);
    }

    @Get
    @Path("/avPeriodicaAluno")
    public void avPeriodicaAluno(int id) {
        result.include("aluno", alunoDao.find(id));
        result.include("id", id);
    }
   

    @Get
    @Path("/avPeriodicaAlunoLista")
    public void avaliacaoPeriodicaAlunoLista(int id) {
        result.include("list", avaliacaoPeriodicaDao.getByIdAluno(id));
        result.include("id", id);
    }

    @Get
    @Path("/avaliacaoPorAreaAluno")
    public void avaliacaoPorAreaAluno(int id) {
        result.include("aluno", alunoDao.find(id));
        result.include("id", id);
    }

    @Get
    @Path("/avaliacaoPorAreaAlunoLista")
    public void avaliacaoPorAreaAlunoLista(int id) {
        result.include("list", avaliacaoPorAreaDAO.getByIdAluno(id));
        result.include("id", id);
    }
    @Get
    @Path("/avaliacaoPorAreaAlunoDetalhes")
    public void avaliacaoPorAreaAlunoDetalhes(int id) {
        result.include("avaliacao", avaliacaoPorAreaDAO.find(id));
        result.include("aluno", avaliacaoPorAreaDAO.find(id).getDoente());
        result.include("id", id);
    }

//    @Post
//    @Path("/addAvaliacaoPeriodica")
//    public void addAvaliacaoPeriodica(AvaliacaoPeriodica entity) {
//        JOptionPane.showMessageDialog(null, "Salvo com sucesso");
//        Doente doente = new Doente();
//        doente.setId(entity.getIdAluno());
//        entity.setDoente(doente);
//        entity.setData(new Date());
//        avaliacaoPeriodicaDao.create(entity);
//        result.redirectTo(EncarregadoController.class).avaliacaoPeriodica();
//        
//    }
//
//    @Path("/addAvaliacaoPorArea")
//    public void addAvaliacaoPorArea(AvaliacaoPorArea entity) {
//        Doente doente = new Doente();
//        doente.setId(entity.getIdAluno());
//        entity.setDoente(doente);
//        entity.setData(new Date());
//        if (avaliacaoPorAreaDAO.create(entity) != null) {
//            JOptionPane.showMessageDialog(null, "Salvo com sucesso");
//        }else{
//            JOptionPane.showMessageDialog(null, "Falha ao salvar");
//        }
//        result.redirectTo(EncarregadoController.class).avaliacaoPorArea();
//    }

}

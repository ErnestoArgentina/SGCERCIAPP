package com.professorjasse.bigsoft.sige.app.controller;

import br.com.caelum.vraptor.*;
import com.professorjasse.bigsoft.sige.dao.AvaliacaoPeriodicaDAO;
import com.professorjasse.bigsoft.sige.dao.DoenteDAO;
import com.professorjasse.bigsoft.sige.dao.EducadorDAO;
import com.professorjasse.bigsoft.sige.model.AvaliacaoPeriodica;
import com.professorjasse.bigsoft.sige.model.Doente;
import com.professorjasse.bigsoft.sige.model.Educador;
import javax.inject.Inject;
import javax.swing.JOptionPane;
import com.professorjasse.bigsoft.sige.app.controller.Sessao;
import com.professorjasse.bigsoft.sige.dao.AvaliacaoPorAreaDAO;
import com.professorjasse.bigsoft.sige.model.AvaliacaoPorArea;
import java.util.Date;

/**
 *
 * @author Jasse
 */
@Controller
@Path("/admin")
public class AdminController {

    @Inject
    private Result result;
    @Inject
    private EducadorDAO dao;
    @Inject
    private DoenteDAO alunoDao;
    @Inject
    private AvaliacaoPeriodicaDAO avaliacaoPeriodicaDao;
    @Inject
    private AvaliacaoPorAreaDAO avaliacaoPorAreaDAO;
    private String nomeEducadorLogado = null;
    private String idEducadorLogado = null;
    private String fotoEducadorLogado = null;
    public static Educador educador = null;

    @Path("/create")
    public void create() {
        result.include("list", dao.findAllUsers());
    }

    @Get
    @Path("")
    public void signin() {

    }

//    @Get
    @Path("/entrar")
    public void entrar(Educador entity) {
//        for (Educador educa : dao.findAllUsers()) {
            if ("biote".equals(entity.getNome().toLowerCase()) || "ernesto".equals(entity.getNome().toLowerCase())) {
                result.redirectTo(CerciController.class).index();

            } else {
                JOptionPane.showMessageDialog(null, "Nome ou palavra chave invalida");
            }
//        }
    }

    @Path("/add")
    public void add(Educador entity, String nome) {
        JOptionPane.showMessageDialog(null, nome);
        entity.setNome(nome);
        dao.create(entity);
        result.redirectTo(AdminController.class).create();
    }

    @Get
    @Path("/avaliacaoPeriodica")
    public void avaliacaoPeriodica() {
        result.include("list", alunoDao.findAllUsers());
//        result.include("educador", idEducadorLogado);
    }

    @Get
    @Path("/avaliacaoPorArea")
    public void avaliacaoPorArea() {
        result.include("list", alunoDao.findAllUsers());
//        result.include("educador", idEducadorLogado);
    }

    @Get
    @Path("/avPeriodicaAluno")
    public void avPeriodicaAluno(int id) {
        result.include("aluno", alunoDao.find(id));
    }
   

    @Get
    @Path("/avPeriodicaAlunoLista")
    public void avaliacaoPeriodicaAlunoLista(int id) {
        result.include("list", avaliacaoPeriodicaDao.getByIdAluno(id));
    }

    @Get
    @Path("/avaliacaoPorAreaAluno")
    public void avaliacaoPorAreaAluno(int id) {
        result.include("aluno", alunoDao.find(id));
    }

    @Get
    @Path("/avaliacaoPorAreaAlunoLista")
    public void avaliacaoPorAreaAlunoLista(int id) {
        result.include("list", avaliacaoPorAreaDAO.getByIdAluno(id));
    }
    @Get
    @Path("/avaliacaoPorAreaAlunoDetalhes")
    public void avaliacaoPorAreaAlunoDetalhes(int id) {
        result.include("avaliacao", avaliacaoPorAreaDAO.find(id));
        result.include("aluno", avaliacaoPorAreaDAO.find(id).getDoente());
    }

//    @Post
    @Path("/addAvaliacaoPeriodica")
    public void addAvaliacaoPeriodica(AvaliacaoPeriodica entity) {
        JOptionPane.showMessageDialog(null, "Salvo com sucesso");
        Doente doente = new Doente();
        doente.setId(entity.getIdAluno());
        entity.setDoente(doente);
        entity.setData(new Date());
        avaliacaoPeriodicaDao.create(entity);
        result.redirectTo(AdminController.class).avaliacaoPeriodica();
    }

    @Path("/addAvaliacaoPorArea")
    public void addAvaliacaoPorArea(AvaliacaoPorArea entity) {
        Doente doente = new Doente();
        doente.setId(entity.getIdAluno());
        entity.setDoente(doente);
        entity.setData(new Date());
        if (avaliacaoPorAreaDAO.create(entity) != null) {
            JOptionPane.showMessageDialog(null, "Salvo com sucesso");
        }else{
            JOptionPane.showMessageDialog(null, "Falha ao salvar");
        }
        result.redirectTo(AdminController.class).avaliacaoPorArea();
    }

}


package com.professorjasse.bigsoft.sige.app.controller;

import br.com.caelum.vraptor.*;
import com.professorjasse.bigsoft.sige.dao.DoenteDAO;
import com.professorjasse.bigsoft.sige.dao.EncarregadoDAO;
import com.professorjasse.bigsoft.sige.dao.UsuarioDAO;
import com.professorjasse.bigsoft.sige.model.Doente;
import com.professorjasse.bigsoft.sige.model.Encarregado;
import com.professorjasse.bigsoft.sige.model.Usuario;
import javax.inject.Inject;


/**
 *
 * @author Jasse
 */

@Controller
@Path("/aluno")
public class AlunoController {

    @Inject private Result result;
    @Inject private DoenteDAO dao;
    @Inject private EncarregadoDAO encdao;
    
    @Path("/create")
    public void create() {
        result.include("list", encdao.findAllUsers());
    }
    
    @Path("/lista")
    public void lista() {
        result.include("list", dao.findAllUsers());
    }
    
    @Path("/add")
    public void add(Doente entity) {
        Encarregado encarregado = new Encarregado();
        encarregado.setId(entity.getIdEncarregado());
        entity.setEncarregado(encarregado);
        dao.create(entity);
        result.redirectTo(AlunoController.class).create();
    }

    
}


package com.professorjasse.bigsoft.sige.app.controller;

import br.com.caelum.vraptor.*;
import com.professorjasse.bigsoft.sige.dao.ProfessorDAO;
import com.professorjasse.bigsoft.sige.model.Professor;
import javax.inject.Inject;


/**
 *
 * @author Jasse
 */

@Controller
@Path("/professor")
public class ProfessorController {

    @Inject private Result result;
    @Inject private ProfessorDAO dao;
    
    @Path("/create")
    public void create() {
        result.include("list", dao.findAllUsers());
    }
    
    @Path("/add")
    public void add(Professor entity) {
        dao.create(entity);
        result.redirectTo(ProfessorController.class).create();
    }
}

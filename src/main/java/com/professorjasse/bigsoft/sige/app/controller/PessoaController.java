
package com.professorjasse.bigsoft.sige.app.controller;

import br.com.caelum.vraptor.*;
import com.professorjasse.bigsoft.sige.dao.PessoaDAO;
import com.professorjasse.bigsoft.sige.model.Pessoa;
import javax.inject.Inject;


/**
 *
 * @author Jasse
 */

@Controller
@Path("/pessoa")
public class PessoaController {

    @Inject private Result result;
    @Inject private PessoaDAO dao;
    
    @Path("/create")
    public void create() {
        result.include("list", dao.findAllUsers());
    }
    
    @Path("/add")
    public void add(Pessoa entity) {
        dao.create(entity);
        result.redirectTo(PessoaController.class).create();
    }

    
}

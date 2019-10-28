
package com.professorjasse.bigsoft.sige.app.controller;

import br.com.caelum.vraptor.*;
import com.professorjasse.bigsoft.sige.dao.UsuarioDAO;
import com.professorjasse.bigsoft.sige.model.Usuario;
import javax.inject.Inject;


/**
 *
 * @author Jasse
 */

@Controller
@Path("/usuario")
public class UsuarioController {

    @Inject private Result result;
    @Inject private UsuarioDAO dao;
    
    @Path("/create")
    public void create() {
        result.include("list", dao.findAllUsers());
    }
    
    @Path("/add")
    public void add(Usuario entity) {
        dao.create(entity);
        result.redirectTo(UsuarioController.class).create();
    }

    
}

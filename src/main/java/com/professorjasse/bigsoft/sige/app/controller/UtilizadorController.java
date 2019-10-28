
package com.professorjasse.bigsoft.sige.app.controller;

import br.com.caelum.vraptor.*;
import com.professorjasse.bigsoft.sige.dao.UsuarioDAO;
import com.professorjasse.bigsoft.sige.dao.UtilizadorDAO;
import model.User;
import javax.inject.Inject;


/**
 *
 * @author Biote Ngovene
 */

@Controller
@Path("/utilizador")
public class UtilizadorController {

    @Inject private Result result;
    @Inject private UtilizadorDAO dao;
    
    @Path("/criarutilizador")
    public void criar() {
        result.include("list", dao.findAllUsers());
    }
    
    @Path("/adicionar")
    public void adicionar(User entidade) {
        dao.create(entidade);
        result.redirectTo(UtilizadorController.class).criar();
    }
}


package com.professorjasse.bigsoft.sige.app.controller;

import br.com.caelum.vraptor.*;
import javax.inject.Inject;


/**
 *
 * @author Jasse
 */
/*Login da API e nao da APP*/

@Controller
@Path("")
public class LoginController {

    @Inject private Result result;

    protected LoginController() {
	this(null);
    }
	
    @Inject
    public LoginController(Result result) {
        this.result = result;
    }

    @Path({"/login"})
    public void login() {
    }
    @Path({"/"})
    public void home() {
    }
}

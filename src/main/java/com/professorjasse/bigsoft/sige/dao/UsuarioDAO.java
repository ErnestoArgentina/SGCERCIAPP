
package com.professorjasse.bigsoft.sige.dao;

import com.professorjasse.bigsoft.sige.model.Usuario;
import java.util.List;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.enterprise.context.RequestScoped;

/**
 *
 * @author Jasse
 */
@RequestScoped
public class UsuarioDAO {

    @Inject 
    private EntityManager manager;
    
    public UsuarioDAO() {
    }

    
    public Usuario create(Usuario entity) {
        try {
            entity.setId(null);
            manager.persist(entity);
        } catch (Exception e) {
            return null;
        }
        return entity;
    }

    public Usuario update(Usuario entity) {
        manager.merge(entity);
        return entity;
    }

    public Usuario find(Integer id) {
        return manager.find(Usuario.class, id);
    }

    public boolean delete(Usuario entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<Usuario> findAllUsers() {
        try {
            List<Usuario> lista = manager.createQuery("from Usuario e order by e.id").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    public List<Usuario> getByNome(String nome){
        Query q = manager.createQuery("SELECT u FROM Usuario u WHERE lower(u.nome) LIKE lower(:nome)");
        q.setParameter("nome", "%" + nome + "%");
        List<Usuario> u = q.getResultList();
        return u;
    }
    
    public String totaleducador(){
//        Integer q = manager.createQuery("SELECT COUNT(*) FROM Usuario");
      try {
            List<Usuario> lista = manager.createQuery("from Usuario e order by e.id").getResultList();
            return lista.size()+"";
        } catch (Exception e) {
            throw e;
        } 
    }
    
}

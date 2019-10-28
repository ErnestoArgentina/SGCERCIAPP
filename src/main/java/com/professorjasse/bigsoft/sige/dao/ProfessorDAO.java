
package com.professorjasse.bigsoft.sige.dao;

import com.professorjasse.bigsoft.sige.model.Professor;
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
public class ProfessorDAO {

    @Inject 
    private EntityManager manager;
    
    public ProfessorDAO() {
    }

    
    public Professor create(Professor entity) {
        try {
            entity.setId(null);
            manager.persist(entity);
        } catch (Exception e) {
            return null;
        }
        return entity;
    }

    public Professor update(Professor entity) {
        manager.merge(entity);
        return entity;
    }

    public Professor find(Integer id) {
        return manager.find(Professor.class, id);
    }

    public boolean delete(Professor entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<Professor> findAllUsers() {
        try {
            List<Professor> lista = manager.createQuery("from Professor e order by e.id").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    public List<Professor> getByNome(String nome){
        Query q = manager.createQuery("SELECT u FROM Professor u WHERE lower(u.nome) LIKE lower(:nome)");
        q.setParameter("nome", "%" + nome + "%");
        List<Professor> u = q.getResultList();
        return u;
    }
}

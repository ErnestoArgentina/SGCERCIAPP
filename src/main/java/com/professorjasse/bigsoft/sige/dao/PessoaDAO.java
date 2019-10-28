
package com.professorjasse.bigsoft.sige.dao;

import com.professorjasse.bigsoft.sige.model.Pessoa;
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
public class PessoaDAO {

    @Inject 
    private EntityManager manager;
    
    public PessoaDAO() {
    }

    
    public Pessoa create(Pessoa entity) {
        try {
            entity.setId(null);
            manager.persist(entity);
        } catch (Exception e) {
            return null;
        }
        return entity;
    }

    public Pessoa update(Pessoa entity) {
        manager.merge(entity);
        return entity;
    }

    public Pessoa find(Integer id) {
        return manager.find(Pessoa.class, id);
    }

    public boolean delete(Pessoa entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<Pessoa> findAllUsers() {
        try {
            List<Pessoa> lista = manager.createQuery("from Pessoa e order by e.id").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    public List<Pessoa> getByNome(String nome){
        Query q = manager.createQuery("SELECT u FROM Pessoa u WHERE lower(u.nome) LIKE lower(:nome)");
        q.setParameter("nome", "%" + nome + "%");
        List<Pessoa> u = q.getResultList();
        return u;
    }
}

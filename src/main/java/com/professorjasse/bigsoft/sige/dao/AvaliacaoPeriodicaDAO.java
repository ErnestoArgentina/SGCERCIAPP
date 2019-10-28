
package com.professorjasse.bigsoft.sige.dao;

import com.professorjasse.bigsoft.sige.model.AvaliacaoPeriodica;
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
public class AvaliacaoPeriodicaDAO {

    @Inject 
    private EntityManager manager;
    
    public AvaliacaoPeriodicaDAO() {
    }

    
    public AvaliacaoPeriodica create(AvaliacaoPeriodica entity) {
        try {
//            entity.setId(null);
            manager.persist(entity);
        } catch (Exception e) {
            return null;
        }
        return entity;
    }

    public AvaliacaoPeriodica update(AvaliacaoPeriodica entity) {
        manager.merge(entity);
        return entity;
    }

    public AvaliacaoPeriodica find(Integer id) {
        return manager.find(AvaliacaoPeriodica.class, id);
    }

    public boolean delete(AvaliacaoPeriodica entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<AvaliacaoPeriodica> findAllUsers() {
        try {
            List<AvaliacaoPeriodica> lista = manager.createQuery("from AvaliacaoPeriodica e order by e.id").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    public List<AvaliacaoPeriodica> getByNome(String nome){
        Query q = manager.createQuery("SELECT u FROM AvaliacaoPeriodica u WHERE lower(u.nome) LIKE lower(:nome)");
        q.setParameter("nome", "%" + nome + "%");
        List<AvaliacaoPeriodica> u = q.getResultList();
        return u;
    }
    
    public List<AvaliacaoPeriodica> getByIdAluno(int id){
        Query q = manager.createQuery("SELECT u FROM AvaliacaoPeriodica u WHERE lower(u.idAluno) LIKE lower(:idAluno)");
        q.setParameter("idAluno", "%" + id + "%");
        List<AvaliacaoPeriodica> u = q.getResultList();
        return u;
    }
}

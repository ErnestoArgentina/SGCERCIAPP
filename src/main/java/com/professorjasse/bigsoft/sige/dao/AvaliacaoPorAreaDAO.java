
package com.professorjasse.bigsoft.sige.dao;

import com.professorjasse.bigsoft.sige.model.AvaliacaoPeriodica;
import com.professorjasse.bigsoft.sige.model.AvaliacaoPorArea;
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
public class AvaliacaoPorAreaDAO {

    @Inject 
    private EntityManager manager;
    
    public AvaliacaoPorAreaDAO() {
    }

    
    public AvaliacaoPorArea create(AvaliacaoPorArea entity) {
        try {
//            entity.setId(null);
            manager.persist(entity);
        } catch (Exception e) {
            return null;
        }
        return entity;
    }

    public AvaliacaoPorArea update(AvaliacaoPorArea entity) {
        manager.merge(entity);
        return entity;
    }

    public AvaliacaoPorArea find(Integer id) {
        return manager.find(AvaliacaoPorArea.class, id);
    }

    public boolean delete(AvaliacaoPorArea entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<AvaliacaoPorArea> findAllUsers() {
        try {
            List<AvaliacaoPorArea> lista = manager.createQuery("from Doente e order by e.id").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    public List<AvaliacaoPorArea> getByNome(String nome){
        Query q = manager.createQuery("SELECT u FROM AvaliacaoPorArea u WHERE lower(u.nome) LIKE lower(:nome)");
        q.setParameter("nome", "%" + nome + "%");
        List<AvaliacaoPorArea> u = q.getResultList();
        return u;
    }
    
    public List<AvaliacaoPorArea> getByAluno(int id){
        Query q = manager.createQuery("SELECT u FROM AvaliacaoPorArea u WHERE lower(u.idAluno) LIKE lower(:idAluno)");
        q.setParameter("idAluno", "%" + id + "%");
        List<AvaliacaoPorArea> u = q.getResultList();
        return u;
    }
    
      public List<AvaliacaoPorArea> getByIdAluno(int id){
        Query q = manager.createQuery("SELECT u FROM AvaliacaoPorArea u WHERE lower(u.idAluno) LIKE lower(:idAluno)");
        q.setParameter("idAluno", "%" + id + "%");
        List<AvaliacaoPorArea> u = q.getResultList();
        return u;
    }
}

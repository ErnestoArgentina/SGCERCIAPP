
package com.professorjasse.bigsoft.sige.dao;

import com.professorjasse.bigsoft.sige.model.Doente;
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
public class DoenteDAO {

    @Inject 
    private EntityManager manager;
    
    public DoenteDAO() {
    }

    
    public Doente create(Doente entity) {
        try {
            entity.setId(null);
            manager.persist(entity);
        } catch (Exception e) {
            return null;
        }
        return entity;
    }

    public Doente update(Doente entity) {
        manager.merge(entity);
        return entity;
    }

    public Doente find(Integer id) {
        return manager.find(Doente.class, id);
    }

    public boolean delete(Doente entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<Doente> findAllUsers() {
        try {
            List<Doente> lista = manager.createQuery("from Doente e order by e.id").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    public List<Doente> getByNome(String nome){
        Query q = manager.createQuery("SELECT u FROM Doente u WHERE lower(u.nome) LIKE lower(:nome)");
        q.setParameter("nome", "%" + nome + "%");
        List<Doente> u = q.getResultList();
        return u;
    }
    
    public List<Doente> getByEncarregadoId(int id){
        Query q = manager.createQuery("SELECT u FROM Doente u WHERE lower(u.idEncarregado) LIKE lower(:idEncarregado)");
        q.setParameter("idEncarregado", "%" + id + "%");
        List<Doente> u = q.getResultList();
        return u;
    }
}


package com.professorjasse.bigsoft.sige.dao;

import com.professorjasse.bigsoft.sige.model.Doente;
import com.professorjasse.bigsoft.sige.model.Evento;
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
public class EventoDAO {

    @Inject 
    private EntityManager manager;
    
    public EventoDAO() {
    }

    
    public Evento create(Evento entity) {
        try {
            entity.setId(null);
            manager.persist(entity);
        } catch (Exception e) {
            return null;
        }
        return entity;
    }

    public Evento update(Evento entity) {
        manager.merge(entity);
        return entity;
    }

    public Evento find(Integer id) {
        return manager.find(Evento.class, id);
    }

    public boolean delete(Evento entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<Doente> findAll() {
        try {
            List<Doente> lista = manager.createQuery("from Evento e order by e.id").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    public List<Doente> getByTitulo(String titulo){
        Query q = manager.createQuery("SELECT u FROM Evento u WHERE lower(u.titulo) LIKE lower(:titulo)");
        q.setParameter("nome", "%" + titulo + "%");
        List<Doente> u = q.getResultList();
        return u;
    }
}

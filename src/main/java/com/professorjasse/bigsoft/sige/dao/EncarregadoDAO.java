
package com.professorjasse.bigsoft.sige.dao;

import com.professorjasse.bigsoft.sige.model.Encarregado;
import java.util.List;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.enterprise.context.RequestScoped;
import javax.swing.JOptionPane;

/**
 *
 * @author Jasse
 */
@RequestScoped
public class EncarregadoDAO {

    @Inject 
    private EntityManager manager;
    
    public EncarregadoDAO() {
    }

    
    public Encarregado create(Encarregado entity) {
        try {
            manager.persist(entity);
//            JOptionPane.showMessageDialog(null, "ACERTO");

            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
        return entity;
    }

    public Encarregado update(Encarregado entity) {
        manager.merge(entity);
        return entity;
    }

    public Encarregado find(Integer id) {
        return manager.find(Encarregado.class, id);
    }

    public boolean delete(Encarregado entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<Encarregado> findAllUsers() {
        try {
            List<Encarregado> lista = manager.createQuery("from Encarregado e order by e.id").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    public List<Encarregado> getByNome(String nome){
        Query q = manager.createQuery("SELECT u FROM Encarregado u WHERE lower(u.nome) LIKE lower(:nome)");
        q.setParameter("nome", "%" + nome + "%");
        List<Encarregado> u = q.getResultList();
        return u;
    }
}

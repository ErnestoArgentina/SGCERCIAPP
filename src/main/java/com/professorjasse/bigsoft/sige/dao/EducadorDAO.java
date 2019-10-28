
package com.professorjasse.bigsoft.sige.dao;

import com.professorjasse.bigsoft.sige.model.Educador;
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
public class EducadorDAO {

    @Inject 
    private EntityManager manager;
    
    public EducadorDAO() {
    }

    
    public Educador create(Educador entity) {
        try {
            manager.persist(entity);
            JOptionPane.showMessageDialog(null, "ACERTO");

            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
        return entity;
    }

    public Educador update(Educador entity) {
        manager.merge(entity);
        return entity;
    }

    public Educador find(Integer id) {
        return manager.find(Educador.class, id);
    }

    public boolean delete(Educador entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<Educador> findAllUsers() {
        try {
            List<Educador> lista = manager.createQuery("from Educador e order by e.id").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    public List<Educador> getByNome(String nome){
        Query q = manager.createQuery("SELECT u FROM Educador u WHERE lower(u.nome) LIKE lower(:nome)");
        q.setParameter("nome", "%" + nome + "%");
        List<Educador> u = q.getResultList();
        return u;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professorjasse.bigsoft.sige.dao;

import model.User;
import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author bONGANI
 */
@RequestScoped
public class UtilizadorDAO {
    @Inject 
    private EntityManager manager;
    
    public UtilizadorDAO() {
    }

    
    public User create(User entity) {
        try {
            entity.setId(null);
            manager.persist(entity);
        } catch (Exception e) {
            return null;
        }
        return entity;
    }

    public User update(User entity) {
        manager.merge(entity);
        return entity;
    }

    public User find(Integer id) {
        return manager.find(User.class, id);
    }

    public boolean delete(User entity) {
        try {
            manager.remove(entity);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    public List<User> findAllUsers() {
        try {
            List<User> lista = manager.createQuery("from User").getResultList();
            return lista;
        } catch (Exception e) {
            throw e;
        }
    }
    
    /*public List<User> getByNome(String nome){
        Query q = manager.createQuery("SELECT u FROM User u WHERE lower(u.nome) LIKE lower(:nome)");
        q.setParameter("nome", "%" + nome + "%");
        List<User> u = q.getResultList();
        return u;
    }*/
    
}

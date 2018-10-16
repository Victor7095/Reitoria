/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Entidade;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author vinic
 */
public class CampusDAO {

    HibernateUtil<Entidade> hue;
    Session s;

    public CampusDAO() {
        HibernateFactory.initSessionFactory();
        hue = new HibernateUtil<>();
    }

    public String salvar(Entidade e) {
        return hue.salvar(e);
    }

    public String atualizar(Entidade e) {
        return hue.atualizar(e);
    }

    public String deletar(Entidade e) {
        return hue.deletar(e);
    }
    
    public List<Entidade> listar() {
        List<Entidade> entidades = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Entidade e");
            entidades = query.getResultList();
            s.getTransaction().commit();
            return entidades;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }
    
    public List<Entidade> listarCampus() {
        List<Entidade> entidades = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Entidade e where e.tipo='C'");
            entidades = query.getResultList();
            s.getTransaction().commit();
            return entidades;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public Entidade findByCNPJ(String cnpj) {
        Entidade e = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Entidade e where e.CNPJ =:cnpj");
            query.setParameter("cnpj", cnpj);
            e = (Entidade) query.getSingleResult();
            s.getTransaction().commit();
            return e;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Discente;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author vinic
 */
public class DiscenteDAO {

    HibernateUtil<Discente> hud;
    Session s;

    public DiscenteDAO() {
        HibernateFactory.initSessionFactory();
        s = HibernateFactory.getSessionFactory().openSession();
        hud = new HibernateUtil<>();
    }

    public String salvar(Discente discente) {
        return hud.salvar(discente);
    }

    public Discente buscarById(Long id) {
        Discente d = null;
        try {
            s.beginTransaction();
            Query query = s.createQuery("from Discente d where d.id =:id");
            query.setParameter("id", id);
            d = (Discente) query.getSingleResult();
            s.getTransaction().commit();
            return d;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public Discente loginByCPF(String cpf, String senha) {
        Discente d = null;
        try {
            s.beginTransaction();
            Query query = s.createQuery("from Discente d where d.CPF =:cpf and d.senha = :senha");
            query.setParameter("cpf", cpf);
            query.setParameter("senha", senha);
            d = (Discente) query.getSingleResult();
            s.getTransaction().commit();
            return d;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public Discente loginByMatricula(String matricula, String senha) {
        Discente d = null;
        try {
            s.beginTransaction();
            Query query = s.createQuery("from Discente d where d.usuario =:matricula and d.senha = :senha");
            query.setParameter("matricula", matricula);
            query.setParameter("senha", senha);
            d = (Discente) query.getSingleResult();
            s.getTransaction().commit();
            return d;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.Utils.Criptografia;
import com.br.OMT.models.Discente;
import java.util.Random;
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
        hud = new HibernateUtil<>();
    }

    public String salvar(Discente discente) throws Exception {
        return hud.salvar(discente);
    }

    public Discente buscarById(Long id) throws Exception {
        Discente d = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Discente d where d.id =:id");
            query.setParameter("id", id);
            d = (Discente) query.getSingleResult();
            d.setSenha(new Criptografia().decrypt(d.getSenhaBanco()));
            s.getTransaction().commit();
            return d;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public Long loginByCPF(String cpf, String senha) {
        Discente d = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Discente d where d.CPF =:cpf");
            query.setParameter("cpf", cpf);
            d = (Discente) query.getSingleResult();
            s.getTransaction().commit();
            d.setSenha(new Criptografia().decrypt(d.getSenhaBanco()));
            if (d.getSenha().equals(senha)) {
                return d.getId();
            } else {
                return new Long(-1);
            }
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } catch (Exception ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public Long loginByMatricula(String matricula, String senha) {
        Discente d = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Discente d where d.usuario =:matricula");
            query.setParameter("matricula", matricula);
            d = (Discente) query.getSingleResult();
            s.getTransaction().commit();
            d.setSenha(new Criptografia().decrypt(d.getSenhaBanco()));
            if (d.getSenha().equals(senha)) {
                return d.getId();
            } else {
                return new Long(-1);
            }
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } catch (Exception ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }
}

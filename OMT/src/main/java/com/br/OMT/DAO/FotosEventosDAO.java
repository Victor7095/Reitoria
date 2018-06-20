/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.FotosEventos;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author vinic
 */
public class FotosEventosDAO {

    HibernateUtil<FotosEventos> hue;
    Session s;

    public FotosEventosDAO() {
        HibernateFactory.initSessionFactory();
        hue = new HibernateUtil<>();
        s = HibernateFactory.getSessionFactory().openSession();
    }

    public String salvar(FotosEventos e) {
        return hue.salvar(e);
    }

    public String atualizar(FotosEventos e) {
        return hue.atualizar(e);
    }

    public String deletar(FotosEventos e) {
        return hue.deletar(e);
    }

    public FotosEventos fotosEventosById(Long id) {
        FotosEventos fe = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from FotosEventos fe where fe.id =:id");
            query.setParameter("id", id);
            fe = (FotosEventos) query.getSingleResult();
            s.getTransaction().commit();
            return fe;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public List<FotosEventos> listFotosEventos(Long id) {
        List<FotosEventos> lfe = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from FotosEventos fe where fe.evento.id =:id");
            query.setParameter("id", id);
            lfe = query.getResultList();
            s.getTransaction().commit();
            return lfe;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }
}

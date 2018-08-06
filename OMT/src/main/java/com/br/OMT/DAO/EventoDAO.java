/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Evento;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author vinic
 */
public class EventoDAO {

    private HibernateUtil<Evento> hue;
    private Session s;

    public EventoDAO() {
        HibernateFactory.initSessionFactory();
        hue = new HibernateUtil<>();
        s = HibernateFactory.getSessionFactory().openSession();
    }

    public String salvar(Evento evento) {
        return hue.salvar(evento);
    }

    public String atualizar(Evento evento) {
        return hue.atualizar(evento);
    }

    public String deletar(Evento evento) {
        return hue.deletar(evento);
    }
    
    public Evento buscarPorNome(String nome) {
        Evento e = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Evento e where e.nome =:nome");
            query.setParameter("nome", nome);
            e = (Evento) query.getSingleResult();
            s.getTransaction().commit();
            return e;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }
    
    public Evento buscarPorURL(String url) {
        Evento e = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Evento e where e.URL =:URL");
            query.setParameter("URL", url);
            e = (Evento) query.getSingleResult();
            s.getTransaction().commit();
            return e;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public List<Evento> listEventos() {
        List<Evento> le = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Evento e");
            le = query.getResultList();
            s.getTransaction().commit();
            return le;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Eventos;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author vinic
 */
public class EventoDAO {

    private HibernateUtil<Eventos> hue;
    private Session s;

    public EventoDAO() {
        HibernateFactory.initSessionFactory();
        hue = new HibernateUtil<>();
        s = HibernateFactory.getSessionFactory().openSession();
    }

    public String salvar(Eventos evento) {
        return hue.salvar(evento);
    }

    public String atualizar(Eventos evento) {
        return hue.atualizar(evento);
    }

    public String deletar(Eventos evento) {
        return hue.deletar(evento);
    }

    public List<Eventos> listEventos() {
        List<Eventos> le = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Eventos e");
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

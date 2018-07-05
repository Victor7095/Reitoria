/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Trabalho;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author vinic
 */
public class TrabalhoDAO {

    private HibernateUtil<Trabalho> hut;
    private Session s;

    public TrabalhoDAO() {
        HibernateFactory.initSessionFactory();
        hut = new HibernateUtil<>();
        s = HibernateFactory.getSessionFactory().openSession();
    }

    public String salvar(Trabalho t) {
        return hut.salvar(t);
    }

    public String atualizar(Trabalho t) {
        return hut.atualizar(t);
    }

    public String deletar(Trabalho t) {
        return hut.deletar(t);
    }

    public List<Trabalho> listTrabalho() {
        List<Trabalho> le = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Trabalho t");
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

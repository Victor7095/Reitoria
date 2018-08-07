/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Formacao;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author vinic
 */
public class FormacaoDAO {

    HibernateUtil<Formacao> huf;
    Session s;

    public FormacaoDAO() {
        HibernateFactory.initSessionFactory();
        huf = new HibernateUtil<>();
    }

    public String salvar(Formacao f) {
        return huf.salvar(f);
    }

    public String atualizar(Formacao f) {
        return huf.atualizar(f);
    }

    public String deletar(Formacao f) {
        return huf.deletar(f);
    }
    
    public List<Formacao> listarPorID(Long id){
        List<Formacao> le = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Formacao f where f.discente.id =:id");
            query.setParameter("id", id);
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

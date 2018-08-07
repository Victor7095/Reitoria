/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Projetos;
import java.util.List;
import org.hibernate.HibernateException;
import javax.persistence.Query;
import org.hibernate.Session;

/**
 *
 * @author vinic
 */
public class ProjetosDAO {

    HibernateUtil<Projetos> hup;
    Session s;

    public ProjetosDAO() {
        HibernateFactory.initSessionFactory();
        hup = new HibernateUtil<>();
    }

    public String salvar(Projetos p) {
        return hup.salvar(p);
    }

    public String atualizar(Projetos p) {
        return hup.atualizar(p);
    }

    public String deletar(Projetos p) {
        return hup.deletar(p);
    }
    
    public List<Projetos> listByDiscente(Long id){
        List<Projetos> le = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Projetos p where p.discente.id =:id");
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

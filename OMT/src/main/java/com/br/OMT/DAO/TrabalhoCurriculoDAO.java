/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.TrabalhoCurriculo;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author vinic
 */
public class TrabalhoCurriculoDAO {

    private HibernateUtil<TrabalhoCurriculo> hut;
    private Session s;

    public TrabalhoCurriculoDAO() {
        HibernateFactory.initSessionFactory();
        hut = new HibernateUtil<>();
    }

    public String salvar(TrabalhoCurriculo tc) {
        return hut.salvar(tc);
    }

    public String atualizar(TrabalhoCurriculo tc) {
        return hut.atualizar(tc);
    }

    public String deletar(TrabalhoCurriculo tc) {
        return hut.deletar(tc);
    }

    public List<TrabalhoCurriculo> listTrabalhoCurriculo() {
        List<TrabalhoCurriculo> trabalhosCurriculo = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from TrabalhoCurriculo tc");
            trabalhosCurriculo = query.getResultList();
            s.getTransaction().commit();
            return trabalhosCurriculo;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public List<TrabalhoCurriculo> listTrabalhoCurriculoByDiscente(Long idDiscente) {
        List<TrabalhoCurriculo> trabalhosCurriculo = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from TrabalhoCurriculo tc where tc.discente.id =:id");
            query.setParameter("id", idDiscente);
            trabalhosCurriculo = query.getResultList();
            s.getTransaction().commit();
            return trabalhosCurriculo;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }
}

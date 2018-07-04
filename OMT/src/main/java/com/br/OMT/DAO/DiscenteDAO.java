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
import java.util.ArrayList;
import java.util.List;
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

    public String atualizar(Discente discente) {
        return hud.atualizar(discente);
    }

    public String deletar(Discente discente) {
        return hud.deletar(discente);
    }
    
    public List<Discente> listar() {
        List<Discente> le = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Discente d");
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

    public Discente buscarById(Long id) throws Exception {
        Discente d = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Discente d where d.id =:id");
            query.setParameter("id", id);
            d = (Discente) query.getSingleResult();
            s.getTransaction().commit();
            d.setNome(Criptografia.decrypt(d.getNomeBanco()));
            d.setUsuario(Criptografia.decrypt(d.getUsuarioBanco()));
            d.setCPF(Criptografia.decrypt(d.getCPFbanco()));
            d.setRG(Criptografia.decrypt(d.getRGbanco()));
            return d;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public Long login(String login, String senha) {
        Discente d = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Criptografia c = new Criptografia();
            Query query = s.createQuery("from Discente d where d.CPFbanco =:login or d.usuarioBanco =:login");
            query.setParameter("login", c.encrypt(login));
            d = (Discente) query.getSingleResult();
            s.getTransaction().commit();
            d.setSenha(c.decrypt(d.getSenhaBanco()));
            System.out.println("Helloooooooo!");
            System.out.println(d.getSenha());
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

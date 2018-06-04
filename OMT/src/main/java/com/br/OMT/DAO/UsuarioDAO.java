package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.models.Usuario;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author vinic
 */
public class UsuarioDAO {

    HibernateUtil<Usuario> huu;
    Session s;

    public UsuarioDAO() {
        HibernateFactory.initSessionFactory();
        huu = new HibernateUtil<>();
        s = HibernateFactory.getSessionFactory().openSession();
    }

    public String salvar(Usuario usuario) {
        return huu.salvar(usuario);
    }

    public Usuario login(String usuario, String senha) {
        Usuario u = null;
        try {
            s.beginTransaction();
            Query query = s.createQuery("from Usuario u where u.usuario =:usuario and u.senha=:senha");
            query.setParameter("usuario", usuario);
            query.setParameter("senha", senha);
            u = (Usuario) query.getSingleResult();
            s.getTransaction().commit();
            return u;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }
}

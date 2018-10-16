package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.Utils.Criptografia;
import com.br.OMT.models.Usuario;
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
    }

    public String salvar(Usuario usuario) {
        return huu.salvar(usuario);
    }

    public String atualizar(Usuario usuario) {
        return huu.atualizar(usuario);
    }

    public String deletar(Usuario usuario) {
        return huu.deletar(usuario);
    }

    public Usuario buscarById(Long id) throws Exception {
        Usuario u = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            Query query = s.createQuery("from Usuario u where u.id =:id");
            query.setParameter("id", id);
            u = (Usuario) query.getSingleResult();
            s.getTransaction().commit();
            u.setNome(Criptografia.decrypt(u.getNomeBanco()));
            u.setUsuario(Criptografia.decrypt(u.getUsuarioBanco()));
            return u;
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            return null;
        } finally {
            s.close();
        }
    }

    public Long login(String usuario, String senha) {
        Usuario u = null;
        try {
            s = HibernateFactory.getSessionFactory().openSession();
            s.beginTransaction();
            System.out.println("heloooooooooooo "+usuario+" "+senha);
            Query query = s.createQuery("from Usuario u where u.usuarioBanco =:usuario");
            query.setParameter("usuario", Criptografia.encrypt(usuario));
            u = (Usuario) query.getSingleResult();
            u.setSenha(Criptografia.decrypt(u.getSenhaBanco()));
            s.getTransaction().commit();
            System.out.println(Criptografia.decrypt(u.getNomeBanco()));
            System.out.println(u.getSenha());
            if (u.getSenha().equals(senha)) {
                return u.getId();
            } else {
                return new Long(-1);
            }
        } catch (HibernateException ex) {
            s.getTransaction().rollback();
            System.out.println(ex.getMessage());
            return null;
        } catch (Exception ex) {
            s.getTransaction().rollback();
            System.out.println(ex.getMessage());
            return null;
        } finally {
            s.close();
        }
    }
}

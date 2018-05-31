package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Usuario;

/**
 *
 * @author vinic
 */
public class UsuarioDAO {

    HibernateUtil<Usuario> huu;

    public UsuarioDAO() {
        huu = new HibernateUtil<>();
    }

    public String salvar(Usuario usuario) {
        return huu.salvar(usuario);
    }
}

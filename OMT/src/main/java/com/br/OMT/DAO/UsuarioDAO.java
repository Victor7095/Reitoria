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

    public int salvar(Usuario usuario) {
        String s = huu.salvar(usuario);
        if (s.equals("")) {
            return 1;
        } else {
            return 0;
        }
    }
}

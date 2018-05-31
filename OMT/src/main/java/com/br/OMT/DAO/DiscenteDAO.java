/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Discente;

/**
 *
 * @author vinic
 */
public class DiscenteDAO {

    HibernateUtil<Discente> hud;

    public DiscenteDAO() {
        hud = new HibernateUtil<>();
    }

    public String salvar(Discente discente) {
        return hud.salvar(discente);
    }

}

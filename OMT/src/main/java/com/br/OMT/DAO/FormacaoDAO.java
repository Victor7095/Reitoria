/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateUtil;
import com.br.models.Formacao;

/**
 *
 * @author vinic
 */
public class FormacaoDAO {

    HibernateUtil<Formacao> huf;

    public FormacaoDAO() {
        huf = new HibernateUtil<>();
    }

    public String salvar(Formacao f) {
        return huf.salvar(f);
    }
}

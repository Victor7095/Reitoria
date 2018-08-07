/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.DiscenteEstagio;
import org.hibernate.Session;

/**
 *
 * @author vinic
 */
public class DiscenteEstagioDAO {

    HibernateUtil<DiscenteEstagio> hude;
    private Session s;

    public DiscenteEstagioDAO() {
        hude = new HibernateUtil<>();
    }

    public String salvar(DiscenteEstagio de) {
        return hude.salvar(de);
    }

    public String atualizar(DiscenteEstagio de) {
        return hude.atualizar(de);
    }

    public String deletar(DiscenteEstagio de) {
        return hude.deletar(de);
    }
}

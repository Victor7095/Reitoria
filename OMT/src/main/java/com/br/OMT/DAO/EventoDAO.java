/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateUtil;
import com.br.models.Eventos;

/**
 *
 * @author vinic
 */
public class EventoDAO {

    HibernateUtil<Eventos> hue;

    public EventoDAO() {
        hue = new HibernateUtil<>();
    }

    public String salvar(Eventos evento) {
        return hue.salvar(evento);
    }
}

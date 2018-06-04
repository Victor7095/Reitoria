/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateUtil;
import com.br.models.Projetos;

/**
 *
 * @author vinic
 */
public class ProjetosDAO {
    HibernateUtil<Projetos> hup;
    
    public ProjetosDAO(){
        hup = new HibernateUtil<>();
    }
    
    public String salvar(Projetos p){
        return hup.salvar(p);
    }
}

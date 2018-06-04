/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateUtil;
import com.br.models.Trabalho;

/**
 *
 * @author vinic
 */
public class TrabalhoDAO {
    private HibernateUtil<Trabalho> hut;
    
    public TrabalhoDAO(){
        hut = new HibernateUtil<>();
    }
    
    public String salvar(Trabalho t){
        return hut.salvar(t);
    }
}

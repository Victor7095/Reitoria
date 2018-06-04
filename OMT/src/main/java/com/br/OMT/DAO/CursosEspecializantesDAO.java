/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateUtil;
import com.br.models.CursosEspecializantes;

/**
 *
 * @author vinic
 */
public class CursosEspecializantesDAO {
    HibernateUtil<CursosEspecializantes> huce;
    
    public CursosEspecializantesDAO(){
        huce = new HibernateUtil<>();
    }
    
    public String salvar(CursosEspecializantes ce){
        return huce.salvar(ce);
    }
}

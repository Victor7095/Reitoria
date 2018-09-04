/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Beans;

import com.br.OMT.models.EstadoCivil;

/**
 *
 * @author user
 */
public class EstadoCivilBean {
    public String[] getValues(){
        String[] values = new String[EstadoCivil.values().length];
        int i = 0;
        for(EstadoCivil s : EstadoCivil.values()){
            values[i] = s.toString();
            i++;
        }
        return values;
    }
}

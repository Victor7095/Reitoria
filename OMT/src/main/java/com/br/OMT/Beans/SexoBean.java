/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Beans;

import com.br.OMT.models.Sexo;

/**
 *
 * @author user
 */
public class SexoBean {
    public String[] getValues(){
        String[] values = new String[Sexo.values().length];
        int i = 0;
        for(Sexo s : Sexo.values()){
            values[i] = s.toString();
            i++;
        }
        return values;
    }
}

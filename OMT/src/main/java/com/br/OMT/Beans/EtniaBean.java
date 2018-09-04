/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Beans;

import com.br.OMT.models.Etnia;

/**
 *
 * @author user
 */
public class EtniaBean {
    public String[] getValues(){
        String[] values = new String[Etnia.values().length];
        int i = 0;
        for(Etnia s : Etnia.values()){
            values[i] = s.toString();
            i++;
        }
        return values;
    }
}

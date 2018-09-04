/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.models;

/**
 *
 * @author user
 */
public enum EstadoCivil {
    SOLTEIRO("Solteiro"),CASADO("Casado"),DIVORCIADO("Outro"),VIUVO("Viúvo"),SEPARADO("Separado");
    
    private final String text;

    /**
     * @param text
     */
    EstadoCivil(final String text) {
        this.text = text;
    }

    /* (non-Javadoc)
     * @see java.lang.Enum#toString()
     */
    @Override
    public String toString() {
        return text;
    }
    
    public EstadoCivil[] toArray(){
        return EstadoCivil.values();
    }
}

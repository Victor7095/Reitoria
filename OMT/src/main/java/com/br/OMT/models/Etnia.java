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
public enum Etnia {
    BRANCA("Branca"),NEGRA("Negra"),AMARELA("Amarela"),PARDA("Parda"),INDIGENA("Indigena"),NAO_DECLARADO("Não Declarado");
    
    private final String text;

    /**
     * @param text
     */
    Etnia(final String text) {
        this.text = text;
    }

    /* (non-Javadoc)
     * @see java.lang.Enum#toString()
     */
    @Override
    public String toString() {
        return text;
    }
}

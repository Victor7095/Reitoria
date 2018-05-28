/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.models;

import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author vinic
 */
@Entity
@Table(name = "cursosespecializantes")
public class CursosEspecializantes implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nome", nullable = false, length = 50)
    private String nome;
    @Column(name = "nivel", nullable = false)
    private int nivel;

    @ManyToOne
    @JoinColumn(name = "discente", nullable = true)
    private Discente discente;

    @Transient
    private CursosEspecializantes getInstance;

    private CursosEspecializantes() {
    }

    public CursosEspecializantes getInstance() {
        if (getInstance == null) {
            getInstance = new CursosEspecializantes();
        }
        return getInstance;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    public Discente getDiscente() {
        return discente;
    }

    public void setDiscente(Discente discente) {
        this.discente = discente;
    }

}

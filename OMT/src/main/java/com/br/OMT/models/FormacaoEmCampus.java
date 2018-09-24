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
@Table(name = "formacaoEmCampus")
public class FormacaoEmCampus implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "nome", nullable = false, length = 50)
    private String nome;

    @Column(name = "escola", nullable = false, length = 50)
    private String escola;

    @Column(name = "anoTermino", nullable = false)
    private int anoTermino;

    @OneToOne
    private Discente discente;

    @Transient
    private static FormacaoEmCampus getInstance;

    private FormacaoEmCampus() {
    }

    public static FormacaoEmCampus getInstance() {
        if (getInstance == null) {
            getInstance = new FormacaoEmCampus();
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

    public String getEscola() {
        return escola;
    }

    public void setEscola(String escola) {
        this.escola = escola;
    }

    public int getAnoTermino() {
        return anoTermino;
    }

    public void setAnoTermino(int anoTermino) {
        this.anoTermino = anoTermino;
    }

    public Discente getDiscente() {
        return discente;
    }

    public void setDiscente(Discente discente) {
        this.discente = discente;
    }

}

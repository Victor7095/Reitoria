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
@Table(name = "projetos")
public class Projetos implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "nome", nullable = false, length = 50)
    private String nome;
    @Column(name = "descricao", nullable = false, length = 100)
    private String descricao;
    @Column(name = "area", nullable = false, length = 20)
    private String area;//area de conhecimenti

    @ManyToOne
    @JoinColumn(name = "discente", nullable = true)
    private Discente discente;

    @Transient
    private static Projetos getInstance;

    private Projetos() {
    }

    public static Projetos getInstance() {
        if (getInstance == null) {
            getInstance = new Projetos();
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

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Discente getDiscente() {
        return discente;
    }

    public void setDiscente(Discente discente) {
        this.discente = discente;
    }

}

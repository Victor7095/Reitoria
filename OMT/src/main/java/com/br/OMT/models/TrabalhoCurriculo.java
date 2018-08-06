/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.models;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "trabalhoCurriculo")
public class TrabalhoCurriculo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "profissao", nullable = false, length = 60)
    private String profissao;

    @Column(name = "descricao", nullable = false)
    private String descricao;
    
    @Column(name = "duracao", nullable = false)
    private Long duracao;

    @Column(name = "tempoInicio", nullable = true)
    @Temporal(TemporalType.DATE)
    private Date tempoInicio;

    @Column(name = "tempoFinal", nullable = true)
    @Temporal(TemporalType.DATE)
    private Date tempoFinal;

    @ManyToOne
    @JoinColumn(name = "discente")
    private Discente discente;

    @Transient
    private static TrabalhoCurriculo getInstance;

    private TrabalhoCurriculo() {
    }

    public static TrabalhoCurriculo getInstance() {
        if (getInstance == null) {
            getInstance = new TrabalhoCurriculo();
        }
        return getInstance;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProfissao() {
        return profissao;
    }

    public void setProfissao(String profissao) {
        this.profissao = profissao;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Long getDuracao() {
        return duracao;
    }

    public void setDuracao(Long duracao) {
        this.duracao = duracao;
    }

    public Date getTempoInicio() {
        return tempoInicio;
    }

    public void setTempoInicio(Date tempoInicio) {
        this.tempoInicio = tempoInicio;
    }

    public Date getTempoFinal() {
        return tempoFinal;
    }

    public void setTempoFinal(Date tempoFinal) {
        this.tempoFinal = tempoFinal;
    }

    public Discente getDiscente() {
        return discente;
    }

    public void setDiscente(Discente discente) {
        this.discente = discente;
    }

}

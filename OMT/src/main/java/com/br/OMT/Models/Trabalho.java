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
@Table(name = "trabalho")
public class Trabalho implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "profissao", nullable = false, length = 50)
    private String profissao;

    @Column(name = "salario", nullable = false)
    private Double salario;

    @Column(name = "descricao", nullable = false)
    private String descricao;

    @Column(name = "tempoInicio", nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date tempoInicio;

    @Column(name = "tempoFinal", nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date tempoFinal;

    @OneToOne(mappedBy = "trabalho")
    private DiscenteEstagio discenteEstagio;

    @ManyToOne
    @JoinColumn(name = "entidade")
    private Entidade entidade;

    @Transient
    private Trabalho getInstance;

    private Trabalho() {
    }

    public Trabalho getInstance() {
        if (getInstance == null) {
            getInstance = new Trabalho();
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

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
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

    public DiscenteEstagio getDiscenteEstagio() {
        return discenteEstagio;
    }

    public void setDiscenteEstagio(DiscenteEstagio discenteEstagio) {
        this.discenteEstagio = discenteEstagio;
    }

    public Entidade getEntidade() {
        return entidade;
    }

    public void setEntidade(Entidade entidade) {
        this.entidade = entidade;
    }

}

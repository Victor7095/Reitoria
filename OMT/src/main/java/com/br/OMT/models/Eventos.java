/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.models;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.*;
import static javax.persistence.CascadeType.ALL;

@Entity
@Table(name = "eventos")
public class Eventos implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nome", nullable = false, length = 50)
    private String nome;

    @Column(name = "descricao", nullable = false, length = 100)
    private String descricao;

    @Column(name = "local", nullable = false, length = 200)
    private String local;

    @Column(name = "dataInicioInscricao", nullable = true)
    @Temporal(TemporalType.DATE)
    private Date dataInicioIncricao;

    @Column(name = "dataFinalInscricao", nullable = true)
    @Temporal(TemporalType.DATE)
    private Date dataFinalIncricao;

    @Column(name = "dataInicioEvento", nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataInicioEvento;

    @Column(name = "dataFinalEvento", nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataFinalEvento;

    @ManyToOne
    @JoinColumn(name = "entidade")
    private Entidade entidade;

    @OneToMany(mappedBy = "evento", cascade = ALL)
    private List<FotosEventos> fotos;

    @Transient
    private static Eventos getInstance;

    private Eventos() {
    }

    public static Eventos getInstance() {
        if (getInstance == null) {
            getInstance = new Eventos();
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

    public Date getDataInicioIncricao() {
        return dataInicioIncricao;
    }

    public void setDataInicioIncricao(Date dataInicioIncricao) {
        this.dataInicioIncricao = dataInicioIncricao;
    }

    public Date getDataFinalIncricao() {
        return dataFinalIncricao;
    }

    public void setDataFinalIncricao(Date dataFinalIncricao) {
        this.dataFinalIncricao = dataFinalIncricao;
    }

    public Date getDataInicioEvento() {
        return dataInicioEvento;
    }

    public void setDataInicioEvento(Date dataInicioEvento) {
        this.dataInicioEvento = dataInicioEvento;
    }

    public Date getDataFinalEvento() {
        return dataFinalEvento;
    }

    public void setDataFinalEvento(Date dataFinalEvento) {
        this.dataFinalEvento = dataFinalEvento;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public List<FotosEventos> getFotos() {
        return fotos;
    }

    public void setFotos(List<FotosEventos> fotos) {
        this.fotos = fotos;
    }

    public Entidade getEntidade() {
        return entidade;
    }

    public void setEntidade(Entidade entidade) {
        this.entidade = entidade;
    }

}

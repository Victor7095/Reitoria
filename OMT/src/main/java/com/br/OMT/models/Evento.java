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
public class Evento implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nome", nullable = false, length = 50)
    private String nome;
    
    @Column(name = "url", nullable = false, length = 50, unique = true)
    private String URL;

    @Column(name = "descricao", nullable = false, length = 100)
    private String descricao;

    @Column(name = "local", nullable = false, length = 200)
    private String local;

    @Column(name = "dataInicioInscricao", nullable = true)
    @Temporal(TemporalType.DATE)
    private Date dataInicioInscricao;

    @Column(name = "dataFinalInscricao", nullable = true)
    @Temporal(TemporalType.DATE)
    private Date dataFinalInscricao;

    @Column(name = "dataInicioEvento", nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataInicioEvento;

    @Column(name = "dataFinalEvento", nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataFinalEvento;

    @ManyToOne
    @JoinColumn(name = "entidade", nullable = true)
    private Entidade entidade;

    @OneToMany(mappedBy = "evento", cascade = ALL)
    private List<FotosEventos> fotos;

    @Transient
    private static Evento getInstance;

    private Evento() {
    }

    public static Evento getInstance() {
        if (getInstance == null) {
            getInstance = new Evento();
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

    public Date getDataInicioInscricao() {
        return dataInicioInscricao;
    }

    public void setDataInicioInscricao(Date dataInicioIncricao) {
        this.dataInicioInscricao = dataInicioIncricao;
    }

    public Date getDataFinalInscricao() {
        return dataFinalInscricao;
    }

    public void setDataFinalInscricao(Date dataFinalIncricao) {
        this.dataFinalInscricao = dataFinalIncricao;
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

    public String getURL() {
        return URL;
    }

    public void setURL(String URL){
        this.URL = URL;
    }

}

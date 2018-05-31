/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.models;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

/**
 *
 * @author vinic
 */
@Entity
@Table(name = "discenteestagio")
public class DiscenteEstagio implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "dataRelatorio", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataRelatorio;

    @OneToOne
    private Discente discente;

    @OneToOne
    private Trabalho trabalho;

    @Transient
    private static DiscenteEstagio getInstance;

    private DiscenteEstagio() {
    }

    public static DiscenteEstagio getInstance() {
        if (getInstance == null) {
            getInstance = new DiscenteEstagio();
        }
        return getInstance;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDataRelatorio() {
        return dataRelatorio;
    }

    public void setDataRelatorio(Date dataRelatorio) {
        this.dataRelatorio = dataRelatorio;
    }

    public Discente getDiscente() {
        return discente;
    }

    public void setDiscente(Discente discente) {
        this.discente = discente;
    }

    public Trabalho getTrabalho() {
        return trabalho;
    }

    public void setTrabalho(Trabalho trabalho) {
        this.trabalho = trabalho;
    }

}

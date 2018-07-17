/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.models;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "fotoseventos")
public class FotosEventos implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Lob
    @Column(name = "foto", nullable = true,  columnDefinition = "longblob")
    private byte[] foto;

    @ManyToOne
    @JoinColumn(name = "evento", nullable = true)
    private Evento evento;

    @Transient
    private static FotosEventos getInstance;

    public static FotosEventos getInstance() {
        if (getInstance == null) {
            getInstance = new FotosEventos();
        }
        return getInstance;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public Evento getEvento() {
        return evento;
    }

    public void setEvento(Evento evento) {
        this.evento = evento;
    }

}

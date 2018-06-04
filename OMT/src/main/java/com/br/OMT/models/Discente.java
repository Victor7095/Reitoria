/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.models;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;
import static javax.persistence.CascadeType.ALL;

/**
 *
 * @author vinic
 */
@Entity
@Table(name = "discente")
public class Discente extends Usuario implements Serializable {

    @Column(name = "rg", nullable = false, length = 15)
    private String RG;
    @Column(name = "cpf", nullable = false, length = 15)
    private String CPF;
    @Lob
    @Column(name = "foto", nullable = true, length = 255, columnDefinition = "longblob")
    private byte[] foto;

    @OneToMany(cascade = ALL, mappedBy = "discente")
    private List<Projetos> projetos;

    @OneToMany(cascade = ALL, mappedBy = "discente")
    private List<CursosEspecializantes> cursos;

    @OneToOne(mappedBy = "discente")
    private DiscenteEstagio discenteEstagio;

    @Transient
    private static Discente getInstance;

    private Discente() {
    }

    public static Discente getInstance() {
        if (getInstance == null) {
            getInstance = new Discente();
        }
        return getInstance;
    }

    public String getRG() {
        return RG;
    }

    public void setRG(String RG) {
        this.RG = RG;
    }

    public String getCPF() {
        return CPF;
    }

    public void setCPF(String CPF) {
        this.CPF = CPF;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public List<Projetos> getProjetos() {
        return projetos;
    }

    public void setProjetos(List<Projetos> projetos) {
        this.projetos = projetos;
    }

    public List<CursosEspecializantes> getCursos() {
        return cursos;
    }

    public void setCursos(List<CursosEspecializantes> cursos) {
        this.cursos = cursos;
    }

    public DiscenteEstagio getDiscenteEstagio() {
        return discenteEstagio;
    }

    public void setDiscenteEstagio(DiscenteEstagio discenteEstagio) {
        this.discenteEstagio = discenteEstagio;
    }

}

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
@Table(name = "entidade")
public class Entidade implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "cnpj", nullable = false, length = 20, unique = true)
    private String CNPJ;

    @Column(name = "cnae", nullable = false, length = 14)
    private String CNAE;

    @Column(name = "nomeFantasi", nullable = false, length = 100)
    private String nomeFantasia;

    @Column(name = "nome", nullable = false, length = 50)
    private String nome;

    @Column(name = "cep", nullable = false, length = 15)
    private String CEP;

    @Column(name = "estado", nullable = false, length = 2)
    private String estado;

    @Column(name = "cidade", nullable = false, length = 20)
    private String cidade;

    @Column(name = "bairro", nullable = false, length = 50)
    private String bairro;

    @Column(name = "rua", nullable = true, length = 50)
    private String rua;

    @Column(name = "numero", nullable = true, length = 5)
    private String numero;

    @Column(name = "complemento", nullable = true, length = 100)
    private String complemento;

    @Column(name = "tipo", nullable = false, length = 1)
    private char tipo;

    @OneToMany(cascade = ALL, mappedBy = "campus")
    private List<FormacaoEmCampus> cursosOfertados;
    @OneToMany(cascade = ALL, mappedBy = "entidade")
    private List<Usuario> usuarios;
    @OneToMany(cascade = ALL, mappedBy = "entidade")
    private List<Trabalho> trabalhos;
    @OneToMany(cascade = ALL, mappedBy = "entidade")
    private List<Evento> eventos;

    @Transient
    private static Entidade getInstance;

    private Entidade() {
    }

    public static Entidade getInstance() {
        if (getInstance == null) {
            getInstance = new Entidade();
        }
        return getInstance;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCNPJ() {
        return CNPJ;
    }

    public void setCNPJ(String CNPJ) {
        this.CNPJ = CNPJ;
    }

    public String getCNAE() {
        return CNAE;
    }

    public void setCNAE(String CNAE) {
        this.CNAE = CNAE;
    }

    public String getNomeFantasia() {
        return nomeFantasia;
    }

    public void setNomeFantasia(String nomeFantasia) {
        this.nomeFantasia = nomeFantasia;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCEP() {
        return CEP;
    }

    public void setCEP(String CEP) {
        this.CEP = CEP;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public char getTipo() {
        return tipo;
    }

    public void setTipo(char tipo) {
        this.tipo = tipo;
    }

    public List<Usuario> getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(List<Usuario> usuarios) {
        this.usuarios = usuarios;
    }

    public List<Trabalho> getTrabalhos() {
        return trabalhos;
    }

    public void setTrabalhos(List<Trabalho> trabalhos) {
        this.trabalhos = trabalhos;
    }

    public List<Evento> getEventos() {
        return eventos;
    }

    public void setEventos(List<Evento> eventos) {
        this.eventos = eventos;
    }

}

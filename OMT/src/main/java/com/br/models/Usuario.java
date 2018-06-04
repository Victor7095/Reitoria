/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.models;

import java.io.Serializable;
import javax.persistence.*;
import static javax.persistence.CascadeType.ALL;

/**
 *
 * @author vinic
 */
@Entity
@Table(name = "usuario")
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class Usuario implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "nome", nullable = false, length = 100)
    private String nome;

    @Column(name = "usuario", nullable = false, length = 100)
    private String usuario;

    @Column(name = "senha", nullable = false, length = 100)
    private String senha;

    @Column(name = "tipo", nullable = false, length = 1)
    private char tipo; // A= adm    D- discente

    @ManyToOne
    @JoinColumn(name = "entidade", nullable = true)
    private Entidade entidade;

    @Transient
    private static Usuario getInstance;

    public static Usuario getInstance() {
        if (getInstance == null) {
            getInstance = new Usuario();
        }
        return getInstance;
    }

    public Usuario() {
    }

    public Usuario(String nome, String usuario, String senha) {
        this.nome = nome;
        this.usuario = usuario;
        this.senha = senha;
    }

    public Usuario(Long id, String nome, String usuario, String senha) {
        this.id = id;
        this.nome = nome;
        this.usuario = usuario;
        this.senha = senha;
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

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public char getTipo() {
        return tipo;
    }

    public void setTipo(char tipo) {
        this.tipo = tipo;
    }

    public Entidade getEntidade() {
        return entidade;
    }

    public void setEntidade(Entidade entidade) {
        this.entidade = entidade;
    }

}

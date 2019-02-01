/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.models;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;
/**
 *
 * @author ifam_
 */
@Entity
@Table(name = "Formulario")
public class Formulario implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(name="titulo", nullable=false)
    private String titulo;
    
    @ManyToOne
    @JoinColumn(name="entidade", nullable=false)
    private List<Entidade> administradores;
    
    
}

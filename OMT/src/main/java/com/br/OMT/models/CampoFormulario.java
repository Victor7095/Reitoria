/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.models;


/*http://blog.sabenca.eti.br/aprenda-como-fazer-formularios-web-dinamico/
*/
import java.io.*;
import javax.persistence.*;
/**
 *
 * @author ifam_
 */
public class CampoFormulario implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    
}

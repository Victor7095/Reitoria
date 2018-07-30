/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.DAO.EmpresaDAO;
import com.br.OMT.DAO.EventoDAO;
import com.br.OMT.DAO.TrabalhoDAO;
import com.br.OMT.DAO.UsuarioDAO;
import com.br.OMT.models.Discente;
import com.br.OMT.models.Entidade;
import com.br.OMT.models.Evento;
import com.br.OMT.models.Trabalho;
import com.br.OMT.models.Usuario;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vinic
 */
public class EncherBanco extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Discente d;
            Usuario u;
            Entidade e;
            Evento ev;
            Trabalho t;
            
            DiscenteDAO dDAO = new DiscenteDAO();
            UsuarioDAO uDAO = new UsuarioDAO();
            EmpresaDAO eDAO = new EmpresaDAO();
            EventoDAO evDAO;
            TrabalhoDAO tDAO;
            
            d = Discente.getInstance();
            d.setNome("Yan");
            d.setCPF("02546569279");
            d.setUsuario("201611440335");
            d.setRG("123456789");
            d.setSenha("456");
            dDAO.salvar(d);
            
            u = Usuario.getInstance();
            u.setNome("Yan2");
            u.setUsuario("abc");
            u.setSenha("123");
            uDAO.salvar(u);
        } catch (Exception ex) {
            Logger.getLogger(EncherBanco.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.UsuarioDAO;
import com.br.OMT.Utils.Criptografia;
import com.br.OMT.models.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
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
public class AdmistradoresServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        if (request != null) {
            String butao = request.getParameter("acao");
            if (butao.equals("cadastrar")) {
                Usuario u = Usuario.getInstance();
                u.setNome(request.getParameter("nome"));
                u.setUsuario(request.getParameter("usuario"));
                u.setTipo('A');
                //u.setEntidade();
                u.setSenha(request.getParameter("senha"));
                byte[] senhaCriptografada;
                try {
                    senhaCriptografada = new Criptografia().encrypt(u.getSenha());
                    u.setSenhaBanco(senhaCriptografada);
                    UsuarioDAO udao = new UsuarioDAO();
                    String str = udao.salvar(u);
                    if (str.equals("")) {
                        response.getWriter().println("Certo");
                    } else {
                        response.getWriter().println("Errrado: " + str);
                    }
                } catch (Exception ex) {
                }

            }
        }
    }

}

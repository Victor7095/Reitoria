/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.UsuarioDAO;
import com.br.models.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
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
                u.setSenha(request.getParameter("senha"));
                u.setTipo('A');
                //u.setEntidade();

                UsuarioDAO udao = new UsuarioDAO();
                String str = udao.salvar(u);
                if (str.equals("")) {
                    response.getWriter().println("Certo");
                } else {
                    response.getWriter().println("Errrado: " + str);
                }
            }
        }
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.models.Discente;
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
public class DiscenteServlet extends HttpServlet {

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
                Discente d = Discente.getInstance();
                d.setNome(request.getParameter("nome"));
                d.setRG(request.getParameter("rg"));
                d.setCPF(request.getParameter("cpf"));
                d.setSenha(request.getParameter("senha"));
                d.setUsuario(request.getParameter("usuario"));
                d.setTipo('D');
                DiscenteDAO ddao = new DiscenteDAO();
                String str = ddao.salvar(d);
                if (str.equals("")) {
                    response.getWriter().println("Salvo!");
                } else {
                    response.getWriter().println("Errado!");
                }
            }
        }
    }

}

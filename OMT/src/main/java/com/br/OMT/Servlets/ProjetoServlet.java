/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.ProjetosDAO;
import com.br.OMT.models.Projetos;
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
public class ProjetoServlet extends HttpServlet {

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
                Projetos p = Projetos.getInstance();

                p.setNome(request.getParameter("nome"));
                p.setDescricao(request.getParameter("descricao"));
                p.setArea(request.getParameter("area"));
                ProjetosDAO pdao = new ProjetosDAO();
                String str = pdao.salvar(p);
                if (str.equals("")) {
                    response.getWriter().println("Certo!");
                } else {
                    response.getWriter().println("Errado:: " + str);
                }
            }
        }
    }

}
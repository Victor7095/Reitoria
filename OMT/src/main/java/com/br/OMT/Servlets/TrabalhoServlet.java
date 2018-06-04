/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.TrabalhoDAO;
import com.br.OMT.models.Trabalho;
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
public class TrabalhoServlet extends HttpServlet {

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
                Trabalho t = Trabalho.getInstance();
                t.setProfissao(request.getParameter("profissao"));
                t.setTipo(request.getParameter("tipo").charAt(0));
                t.setSalario(Double.parseDouble(request.getParameter("salario")));
                t.setDescricao(request.getParameter("descricao"));
                //t.setTempoFinal(request.getParameter("inicio"));
                //t.setTempoInicio(request.getParameter("fim"));
                //t.setEntidade(entidade);
                TrabalhoDAO tdao = new TrabalhoDAO();
                String str = tdao.salvar(t);
                if (str.equals("")) {
                    response.getWriter().println("Certo");
                } else {
                    response.getWriter().println("Errrado: " + str);
                }
            }
        }
    }

}

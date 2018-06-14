/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.DAO.FormacaoDAO;
import com.br.OMT.models.Discente;
import com.br.OMT.models.Formacao;
import java.io.IOException;
import java.io.PrintWriter;
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
public class FormacaoServlet extends HttpServlet {

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
                Formacao f = Formacao.getInstance();
                f.setNome(request.getParameter("nome"));
                f.setEscola(request.getParameter("escola"));
                f.setAnoTermino(Integer.parseInt(request.getParameter("anofinalizacao")));
                Discente d;
                DiscenteDAO ddao = new DiscenteDAO();
                try {
                    d = ddao.buscarById(new Long(2));
                    f.setDiscente(d);
                    FormacaoDAO fdao = new FormacaoDAO();
                    String str = fdao.salvar(f);
                    if (str.equals("")) {
                        response.getWriter().println("Certo!");
                    } else {
                        response.getWriter().println("Errado:: " + str);
                    }
                } catch (Exception ex) {
                    Logger.getLogger(FormacaoServlet.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.DAO.ProjetosDAO;
import com.br.OMT.models.Discente;
import com.br.OMT.models.Projetos;
import java.io.IOException;
import java.util.List;
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
public class ProjetoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("ISO-8859-1");

        if (request != null) {
            String butao = request.getParameter("acao");
            if (butao.equals("cadastrar")) {
                Discente d = (Discente) request.getSession().getAttribute("usuario");
                DiscenteDAO ddao = new DiscenteDAO();
                Projetos p = Projetos.getInstance();

                p.setNome(request.getParameter("nome"));
                p.setDescricao(request.getParameter("descricao"));
                p.setArea(request.getParameter("area"));
                try {
                    d = ddao.buscarById(new Long(d.getId()));
                    List<Projetos> projetos = d.getProjetos();
                    if (projetos.add(p)) {
                        System.out.println("Funcionou");
                        d.setProjetos(projetos);
                    }
                } catch (Exception ex) {
                    Logger.getLogger(ProjetoServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                p.setDiscente(d);
                ProjetosDAO pdao = new ProjetosDAO();
                String str = pdao.salvar(p);
                ddao.atualizar(d);
                if (str.equals("")) {
                    response.getWriter().println("Certo!");
                    response.sendRedirect("discente/curriculo.jsp");
                } else {
                    response.getWriter().println("Errado:: " + str);
                }
            }
        }
    }

}

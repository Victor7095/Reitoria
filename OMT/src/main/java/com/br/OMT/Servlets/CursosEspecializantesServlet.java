/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.CursosEspecializantesDAO;
import com.br.OMT.DAO.DiscenteDAO;
import com.br.models.CursosEspecializantes;
import com.br.models.Discente;
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
public class CursosEspecializantesServlet extends HttpServlet {

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
                CursosEspecializantes ce = CursosEspecializantes.getInstance();
                ce.setNome(request.getParameter("nome"));
                ce.setNivel(Integer.parseInt(request.getParameter("nivel")));

                Discente d;
                DiscenteDAO ddao = new DiscenteDAO();
                d = ddao.buscarById(new Long(2));

                ce.setDiscente(d);

                CursosEspecializantesDAO cedao = new CursosEspecializantesDAO();
                String str = cedao.salvar(ce);

                if (str.equals("")) {
                    response.getWriter().println("Certo!");
                } else {
                    response.getWriter().println("Errro :: " + str);
                }
            }
        }
    }

}

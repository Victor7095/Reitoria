/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.TrabalhoCurriculoDAO;
import com.br.OMT.models.Discente;
import com.br.OMT.models.TrabalhoCurriculo;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vinic
 */
public class TrabalhoCurriculoServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        if (request != null) {
            Discente d = (Discente) request.getSession().getAttribute("usuario");
            String butao = request.getParameter("acao");
            if (butao.equals("cadastrar")) {
                TrabalhoCurriculo tc = TrabalhoCurriculo.getInstance();
                tc.setProfissao(request.getParameter("profissao"));
                tc.setDescricao(request.getParameter("descricao"));
                DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                df.setLenient(false);
                try {
                    tc.setTempoInicio(df.parse(request.getParameter("inicio")));
                    tc.setTempoFinal(df.parse(request.getParameter("fim")));
                    tc.setDuracao(tc.getTempoFinal().getTime()-tc.getTempoInicio().getTime());
                    tc.setDiscente(d);
                    TrabalhoCurriculoDAO tcdao = new TrabalhoCurriculoDAO();
                    String str = tcdao.salvar(tc);
                    if (str.equals("")) {
                        response.getWriter().println("Certo");
                    } else {
                        response.getWriter().println("Errrado: " + str);
                    }
                } catch (ParseException ex) {
                    System.out.println("Erro: "+ex.getMessage());
                }
                
            }
        }
    }
    
}

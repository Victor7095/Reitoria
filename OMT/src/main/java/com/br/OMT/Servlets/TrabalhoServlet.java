/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.TrabalhoDAO;
import com.br.OMT.models.Entidade;
import com.br.OMT.models.Trabalho;
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
public class TrabalhoServlet extends HttpServlet {
    
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
                Trabalho t = Trabalho.getInstance();
                t.setProfissao(request.getParameter("profissao"));
                t.setTipo(request.getParameter("tipo").charAt(0));
                t.setSalario(Double.parseDouble(request.getParameter("salario")));
                t.setDescricao(request.getParameter("descricao"));
                DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                df.setLenient(false);
                try {
                    t.setTempoFinal(df.parse(request.getParameter("inicio")));
                    t.setTempoInicio(df.parse(request.getParameter("fim")));
                    t.setEntidade((Entidade) request.getSession().getAttribute("entidade"));
                    TrabalhoDAO tdao = new TrabalhoDAO();
                    String str = tdao.salvar(t);
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

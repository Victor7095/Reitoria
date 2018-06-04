/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.EventoDAO;
import com.br.OMT.models.Eventos;
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
public class EventosServlet extends HttpServlet {

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
                Eventos e = Eventos.getInstance();
                e.setNome(request.getParameter("nome"));
                e.setDescricao(request.getParameter("descricao"));
                DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                df.setLenient(false);
                try {
                    e.setDataInicioIncricao(df.parse(request.getParameter("inscricaoInicio")));
                    e.setDataFinalIncricao(df.parse(request.getParameter("inscricaoFim")));
                    e.setDataInicioEvento(df.parse(request.getParameter("inicio")));
                    e.setDataFinalEvento(df.parse(request.getParameter("fim")));

                    //e.setEntidade(entidade);
                    EventoDAO edao = new EventoDAO();
                    String str = edao.salvar(e);
                    if (str.equals("")) {
                        response.getWriter().println("Oky");
                    } else {
                        response.getWriter().println("Erro :" + str);
                    }
                } catch (ParseException ex) {
                    response.getWriter().println("Erro :" + ex.getMessage());
                }
            }
        }
    }

}

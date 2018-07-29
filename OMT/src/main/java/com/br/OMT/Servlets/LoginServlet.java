/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.DAO.UsuarioDAO;
import com.br.OMT.models.Discente;
import com.br.OMT.models.Entidade;
import com.br.OMT.models.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vinic
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getSession().setAttribute("usuario", null);
        request.getSession().setAttribute("entidade", null);
        response.sendRedirect("/OMT/home.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        if (request != null && request.getMethod().equalsIgnoreCase("post")) {
            String entidade = request.getParameter("entidade");
            if (entidade.equals("discente")) {
                Discente d;
                DiscenteDAO ddao = new DiscenteDAO();
                String login = request.getParameter("login");
                String senha = request.getParameter("senha");
                Long resposta = ddao.login(login, senha);
                if (resposta == null) {
                    response.getWriter().println("NULL");//erro

                } else if (resposta == -1) {
                    response.getWriter().println("-1");//erro

                } else {
                    try {
                        d = ddao.buscarById(resposta);
                        if (d != null) {
                            request.getSession().setAttribute("usuario", d);
                            response.sendRedirect("/OMT/discente/index.jsp");
                        } else {
                            response.getWriter().println("ERRO");//erro
                        }
                    } catch (Exception ex) {
                        response.getWriter().println("ERRO " + ex.getMessage());//erro
                    }

                }

            } else {
                Usuario u;
                UsuarioDAO udao = new UsuarioDAO();
                String usuario = request.getParameter("usuario");
                String senha = request.getParameter("senha");
                Long resposta = udao.login(usuario, senha);
                if (resposta == null) {
                    response.getWriter().println("NULL");//erro

                } else if (resposta == -1) {
                    response.getWriter().println("-1");//erro

                } else {
                    try {
                        u = udao.buscarById(resposta);
                        if (u != null) {
                            Entidade e;
                            e = u.getEntidade();
                            response.getWriter().println("Entidade: " + e);//
                            if (e != null) {
                                if (entidade.equals("campus") && e.getTipo() == 'C') {
                                    request.getSession().setAttribute("usuario", u);
                                    request.getSession().setAttribute("entidade", e);
                                    response.sendRedirect("/OMT/campus/index.jsp");
                                } else if (entidade.equals("reitoria") && e.getTipo() == 'R') {
                                    request.getSession().setAttribute("usuario", u);
                                    request.getSession().setAttribute("entidade", e);
                                    response.sendRedirect("/OMT/reitoria/index.jsp");
                                }
                            }
                        } else {
                            response.getWriter().println("Errado + " + usuario + "  " + senha);
                        }
                    } catch (Exception ex) {
                        response.getWriter().println("ERRO " + ex.getMessage());//erro
                    }

                }

            }
        }

    }
}

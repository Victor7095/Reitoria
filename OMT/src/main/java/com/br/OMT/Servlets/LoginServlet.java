/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.DAO.EmpresaDAO;
import com.br.OMT.DAO.UsuarioDAO;
import com.br.OMT.models.Discente;
import com.br.OMT.models.Entidade;
import com.br.OMT.models.Usuario;
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
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
                if (request.getParameter("tipoLogin").equals("cpf")) {
                    d = ddao.loginByCPF(login, senha);
                    if (d != null) {
                        response.sendRedirect("/OMT/discente/alunoIndex.jsp");
                    } else {
                        response.getWriter().println("ERRO");//erro
                    }
                } else {
                    d = ddao.loginByMatricula(login, senha);
                    if (d != null) {
                        response.sendRedirect("/OMT/discente/alunoIndex.jsp");
                    } else {
                        response.getWriter().println("ERRO");//erro
                    }
                }
            } else {
                Usuario u;
                UsuarioDAO udao = new UsuarioDAO();
                String usuario = request.getParameter("usuario");
                String senha = request.getParameter("senha");
                u = udao.login(usuario, senha);
                if (u != null) {
                    Entidade e;
                    e = u.getEntidade();
                    if (e != null) {
                        if (entidade.equals("empresa") && e.getTipo()=='E') {
                            response.sendRedirect("/OMT/erros/manutencao.jsp");
                        } else if (entidade.equals("campus") && e.getTipo()=='C') {
                            response.sendRedirect("/OMT/erros/manutencao.jsp");
                        } else if(entidade.equals("reitoria") && e.getTipo()=='R') {
                            response.sendRedirect("/OMT/erros/manutencao.jsp");
                        }
                    }
                } else {
                    response.getWriter().println("Errado + " + usuario + "  " + senha);
                }
            }
        }

    }
}

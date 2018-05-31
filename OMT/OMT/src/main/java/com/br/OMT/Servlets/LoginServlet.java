/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

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
        if (request != null && request.getMethod().equalsIgnoreCase("post")) {
            String entidade = request.getParameter("entidade");
            if (entidade.equals("discente")) {
                response.getWriter().println("Discente");
            } else if (entidade.equals("empresa")) {
                response.getWriter().println("Empresa");
            } else if (entidade.equals("reitoria")) {
                response.getWriter().println("Reiotria");
            } else if (entidade.equals("campus")) {
                response.getWriter().println("Campus");
            }
        }
    }

}

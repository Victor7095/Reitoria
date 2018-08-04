/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.Utils.Criptografia;
import com.br.OMT.models.Discente;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author vinic
 */
public class DiscenteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Discente d;
        DiscenteDAO ddao = new DiscenteDAO();
        try {
            d = ddao.buscarById(Long.parseLong(request.getParameter("id")));
            response.setContentType("image/jpeg");
            OutputStream out = response.getOutputStream();
            out.write(d.getFoto());
            out.flush();
        } catch (Exception ex) {
            Logger.getLogger(DiscenteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Discente d = Discente.getInstance();
        DiscenteDAO ddao = new DiscenteDAO();
        String usuario = "", rg = "", cpf = "", nome = "", acao = "";
        byte[] foto = null;
        
        acao = request.getParameter("acao");
        rg = request.getParameter("rg");
        cpf = request.getParameter("cpf");
        nome = request.getParameter("nome");
        usuario = request.getParameter("usuario");
        System.out.println(request.getParameter("acao"));
        if (request.getParameter("fotoCortada").length() > 0) {
            foto = request.getParameter("fotoCortada").getBytes();
        } else {
            foto = null;
        }
        
        if (acao.equals("cadastrar")) {
            d.setCPF(cpf);
            d.setFoto(foto);
            d.setRG(rg);
            d.setUsuario(usuario);
            d.setNome(nome);
            Random r = new Random();
            int tam = r.nextInt(4) + 3;
            int senha = r.nextInt(tam * 1000);
            d.setSenha(Integer.toString(senha));

            try {
                d.setUsuarioBanco(Criptografia.encrypt(d.getUsuario()));
                d.setNomeBanco(Criptografia.encrypt(d.getNome()));
                d.setCPFbanco(Criptografia.encrypt(d.getCPF()));
                d.setRGbanco(Criptografia.encrypt(d.getRG()));
                d.setSenhaBanco(Criptografia.encrypt(d.getSenha()));
                String str;
                try {
                    str = ddao.salvar(d);
                    if (str.equals("")) {
                        response.getWriter().println("Salvo! " + d.getSenha());
                    } else {
                        response.getWriter().println("Errado!");
                        response.getWriter().println(str);
                    }
                } catch (Exception ex) {
                    response.getWriter().println("Erro! " + ex.getMessage());
                }
            } catch (Exception ex) {
                Logger.getLogger(DiscenteServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (acao.equals("alterar")) {
            d = (Discente) request.getSession().getAttribute("usuario");
            try {
                response.getWriter().println(Criptografia.decrypt(d.getUsuarioBanco()));
            } catch (Exception ex) {
                Logger.getLogger(DiscenteServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            d.setCPF(cpf);
            d.setFoto(foto);
            d.setRG(rg);
            d.setNome(nome);
            try {
                d.setNomeBanco(Criptografia.encrypt(d.getNome()));
                d.setCPFbanco(Criptografia.encrypt(d.getCPF()));
                d.setRGbanco(Criptografia.encrypt(d.getRG()));
                String str;
                try {
                    str = ddao.atualizar(d);
                    if (str.equals("")) {
                        response.sendRedirect("discente/alterarPerfil.jsp");
                    } else {
                        response.getWriter().println("Errado!");
                        response.getWriter().println(str);
                    }
                } catch (Exception ex) {
                    response.getWriter().println("Erro! " + ex.getMessage());
                }
            } catch (Exception ex) {
                Logger.getLogger(DiscenteServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}

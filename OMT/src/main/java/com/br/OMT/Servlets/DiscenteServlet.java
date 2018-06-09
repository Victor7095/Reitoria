/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Discente;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.Hibernate;
import org.hibernate.Session;

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
        d = ddao.buscarById(new Long(1));
        response.setContentType("image/jpeg");
        OutputStream out = response.getOutputStream();
        out.write(d.getFoto());
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Discente d = Discente.getInstance();
        byte[] foto = null;
        if (request != null) {
            if (ServletFileUpload.isMultipartContent(request)) {
                try {
                    List<FileItem> m = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                    for (FileItem item : m) {//Mudar a ordem dos inputs, colocar o usuario em cima da imagem
                        if (!item.isFormField()) {
                            d.setFoto(item.get());
                        } else {
                            switch (item.getFieldName()) {
                                case "usuario":
                                    d.setUsuario(item.getString());
                                    break;
                                case "senha":
                                    d.setSenha(item.getString());
                                    break;
                                case "nome":
                                    response.getWriter().println("Gelo! "+item.getString());
                                    d.setNome(item.getString());
                                    break;
                                case "cpf":
                                    d.setCPF(item.getString());
                                    break;
                                case "rg":
                                    d.setRG(item.getString());
                                    break;
                            }
                        }
                    }

                } catch (Exception ex) {
                }
                DiscenteDAO ddao = new DiscenteDAO();
                String str = ddao.salvar(d);
                if (str.equals("")) {
                    response.getWriter().println("Certo! "+d.getNome());
                } else {
                    response.getWriter().println("Errado!");
                }
            } else {
                String butao = request.getParameter("acao");
                if (butao.equals("cadastrar")) {
                    //Discente d = Discente.getInstance();
                    d.setNome(request.getParameter("nome"));
                    d.setRG(request.getParameter("rg"));
                    d.setCPF(request.getParameter("cpf"));
                    d.setSenha(request.getParameter("senha"));
                    d.setUsuario(request.getParameter("usuario"));
                    d.setTipo('D');
                    DiscenteDAO ddao = new DiscenteDAO();
                    String str = ddao.salvar(d);
                    if (str.equals("")) {
                        response.getWriter().println("Salvo!");
                    } else {
                        response.getWriter().println("Errado!");
                    }
                }
            }
        }
    }

}

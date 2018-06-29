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
        /*Discente d;
        DiscenteDAO ddao = new DiscenteDAO();
        d = ddao.buscarById(new Long(1));
        response.setContentType("image/jpeg");
        OutputStream out = response.getOutputStream();
        out.write(d.getFoto());
        out.flush(); */
        Discente d;
        try {
            d = new DiscenteDAO().buscarById(new Long(4));

            response.getWriter().println(d.getSenha());
        } catch (Exception ex) {
            response.getWriter().println(ex.getMessage());
        }
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
                                case "nome":
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

                Random r = new Random();
                int tam = r.nextInt(4) + 3;
                int senha = r.nextInt(tam * 1000);
                d.setSenha(Integer.toString(senha));
                byte[] senhaCriptografada;

                try {
                    senhaCriptografada = new Criptografia().encrypt(d.getSenha());
                    d.setSenhaBanco(senhaCriptografada);
                    String str;
                    try {
                        str = ddao.salvar(d);
                        if (str.equals("")) {
                            response.getWriter().println("Salvo! "+d.getSenha());
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
                    Random r = new Random();
                    int tam = r.nextInt(4) + 3;
                    int senha = r.nextInt(tam * 1000);
                    d.setSenha(Integer.toString(senha));
                    byte[] senhaCriptografada;

                    try {
                        senhaCriptografada = new Criptografia().encrypt(d.getSenha());
                        String str;
                        try {
                            str = ddao.salvar(d);
                            if (str.equals("")) {
                                response.getWriter().println("Salvo!");
                            } else {
                                response.getWriter().println("Errado!");
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
    }

}

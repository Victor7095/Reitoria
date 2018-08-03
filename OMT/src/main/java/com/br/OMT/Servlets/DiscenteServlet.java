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
        String usuario = "", rg = "", cpf = "", nome = "", acao = "";
        Discente d = Discente.getInstance();
        byte[] foto = null;
        if (request != null) {
            if (ServletFileUpload.isMultipartContent(request)) {
                try {
                    List<FileItem> m = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                    for (FileItem item : m) {//Mudar a ordem dos inputs, colocar o usuario em cima da imagem
                        if (!item.isFormField()) {
                            foto = item.get();
                            response.getWriter().print(item.get());
                        } else {
                            switch (item.getFieldName()) {
                                case "usuario":
                                    usuario = item.getString();
                                    break;
                                case "nome":
                                    nome = item.getString();
                                    break;
                                case "cpf":
                                    cpf = item.getString();
                                    break;
                                case "rg":
                                    rg = item.getString();
                                    break;
                                case "acao":
                                    acao = item.getString();
                                    break;
                            }
                        }
                    }

                } catch (Exception ex) {
                }
                DiscenteDAO ddao = new DiscenteDAO();
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
                    response.getWriter().println("Atualizado! " + d.getFoto());
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
                                response.getWriter().println("Atualizado! " + d.getSenha());
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
    }

}

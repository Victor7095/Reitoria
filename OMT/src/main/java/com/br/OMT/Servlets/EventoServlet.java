/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.EventoDAO;
import com.br.OMT.DAO.FotosEventosDAO;
import com.br.OMT.models.Entidade;
import com.br.OMT.models.Evento;
import com.br.OMT.models.FotosEventos;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.Normalizer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author vinic
 */
public class EventoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        FotosEventos ef;
        FotosEventosDAO efdao = new FotosEventosDAO();
        ef = efdao.fotosEventosById(Long.parseLong(request.getParameter("id")));
        response.setContentType("image/jpeg");
        OutputStream out = response.getOutputStream();
        out.write(ef.getFoto());
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("ISO-8859-1");
        if (ServletFileUpload.isMultipartContent(request)) {
            String nome = "";
            String descricao = "";
            String local = "";
            String url = "";
            Date inicioInscricao = null, finalInscricao = null, inicioEvento = null, finalEvento = null;
            List<byte[]> fotos = new ArrayList<>();
            try {
                List<FileItem> itens = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : itens) {
                    if (!item.isFormField()) {
                        fotos.add(item.get());
                    } else {
                        System.out.println(item.getString());
                        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                        df.setLenient(false);
                        switch (item.getFieldName()) {
                            case "nome":
                                nome = item.getString();
                                url = Normalizer.normalize(nome, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "").replace(" ", "_");
                                break;
                            case "descricao":
                                descricao = item.getString();
                                break;
                            case "inscricaoInicio":
                                inicioInscricao = df.parse(item.getString());
                                break;
                            case "local":
                                local = item.getString();
                                break;
                            case "inscricaoFim":
                                finalInscricao = df.parse(item.getString());
                                break;
                            case "inicio":
                                inicioEvento = df.parse(item.getString());
                                break;
                            case "fim":
                                finalEvento = df.parse(item.getString());
                                break;
                        }
                    }
                }
            } catch (FileUploadException ex) {
                System.out.println("Erro: " + ex.getMessage());
            } catch (ParseException ex) {
                Logger.getLogger(EventoServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Evento e = Evento.getInstance();
            e.setNome(nome);
            e.setURL(url);
            e.setLocal(local);
            e.setDescricao(descricao);
            e.setDataInicioEvento(inicioEvento);
            e.setDataFinalEvento(finalEvento);
            e.setDataInicioInscricao(inicioInscricao);
            e.setDataFinalInscricao(finalInscricao);
            e.setEntidade((Entidade) request.getSession().getAttribute("entidade"));
            EventoDAO edao = new EventoDAO();
            String str = edao.salvar(e);
            if (str.equals("")) {
                if (fotos.size() > 0) {
                    for (byte[] foto : fotos) {
                        FotosEventos fe = FotosEventos.getInstance();
                        fe.setEvento(e);
                        fe.setFoto(foto);
                        FotosEventosDAO fedao = new FotosEventosDAO();
                        String foi = fedao.salvar(fe);
                        if (!foi.equals("")) {
                            response.getWriter().println("RRROER() " + foi);
                            break;
                        }
                    }
                    response.sendRedirect("../OMT/campus/eventos.jsp");
                } else {
                    response.getWriter().println("Sem foto");
                }
            } else {
                response.getWriter().println("Erro :" + str);
            }
        } else {
            String butao = request.getParameter("acao");
            if (butao.equals("cadastrar")) {
                Evento e = Evento.getInstance();
                e.setNome(request.getParameter("nome"));
                e.setURL(Normalizer.normalize(e.getNome(), Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "").replace(" ", "_"));
                e.setDescricao(request.getParameter("descricao"));
                DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                df.setLenient(false);
                try {
                    e.setDataInicioInscricao(df.parse(request.getParameter("inscricaoInicio")));
                    e.setDataFinalInscricao(df.parse(request.getParameter("inscricaoFim")));
                    e.setDataInicioEvento(df.parse(request.getParameter("inicio")));
                    e.setDataFinalEvento(df.parse(request.getParameter("fim")));

                    e.setEntidade((Entidade) request.getSession().getAttribute("entidade"));
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

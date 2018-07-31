/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.CampusDAO;
import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.DAO.EventoDAO;
import com.br.OMT.DAO.FotosEventosDAO;
import com.br.OMT.DAO.TrabalhoDAO;
import com.br.OMT.DAO.UsuarioDAO;
import com.br.OMT.Utils.Criptografia;
import com.br.OMT.models.Discente;
import com.br.OMT.models.Entidade;
import com.br.OMT.models.Evento;
import com.br.OMT.models.FotosEventos;
import com.br.OMT.models.Trabalho;
import com.br.OMT.models.Usuario;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.Normalizer;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;

/**
 *
 * @author vinic
 */
public class EncherBanco extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        out.println(getServletContext().getContextPath() + "\n"
                + getServletContext().getRealPath("/index.jsp") + "\n"
                + request.getContextPath() + "\n"
                + request.getServletPath());
        try {
            Discente d;
            Usuario u;
            Entidade e;
            Evento ev;
            Trabalho t;
            FotosEventos fe;

            InputStream stream;

            DiscenteDAO dDAO = new DiscenteDAO();
            UsuarioDAO uDAO = new UsuarioDAO();
            CampusDAO cDAO = new CampusDAO();
            EventoDAO evDAO = new EventoDAO();
            TrabalhoDAO tDAO = new TrabalhoDAO();
            FotosEventosDAO feDAO = new FotosEventosDAO();

            d = Discente.getInstance();
            d.setNome("Yan");
            d.setNomeBanco(Criptografia.encrypt(d.getNome()));
            d.setCPF("02546569279");
            d.setCPFbanco(Criptografia.encrypt(d.getCPF()));
            d.setUsuario("201611440335");
            d.setUsuarioBanco(Criptografia.encrypt(d.getUsuario()));
            d.setRG("123456789");
            d.setRGbanco(Criptografia.encrypt(d.getRG()));
            d.setSenha("456");
            d.setSenhaBanco(Criptografia.encrypt(d.getSenha()));
            out.println(dDAO.salvar(d));

            e = Entidade.getInstance();
            e.setBairro("Centro");
            e.setCEP("69097781");
            e.setCNAE("1234567");
            e.setCNPJ("1234567891234");
            e.setCidade("Manaus");
            e.setComplemento("Próximo a penitenciária");
            e.setEstado("AM");
            e.setNome("IFAM - Campus Manaus Centro");
            e.setNomeFantasia("IFAM - CMC");
            e.setNumero("401");
            e.setRua("Av. 7 de setembro");
            e.setTipo('C');
            out.println(cDAO.salvar(e));

            u = Usuario.getInstance();
            u.setNome("Yan2");
            u.setNomeBanco(Criptografia.encrypt(u.getNome()));
            u.setUsuario("abc");
            u.setUsuarioBanco(Criptografia.encrypt(u.getUsuario()));
            u.setSenha("123");
            u.setSenhaBanco(Criptografia.encrypt(u.getSenha()));
            u.setEntidade(e);
            out.println(uDAO.salvar(u));

            ev = Evento.getInstance();
            ev.setNome("Aulas de Informática");
            ev.setDescricao("Aulas oferecidas ao IFAM");
            ev.setDataInicioInscricao(Calendar.getInstance().getTime());
            ev.setDataFinalInscricao(Calendar.getInstance().getTime());
            ev.setDataInicioEvento(Calendar.getInstance().getTime());
            ev.setDataFinalEvento(Calendar.getInstance().getTime());
            System.out.println(ev.getNome());
            ev.setURL(Normalizer.normalize(ev.getNome(),Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "").replace(" ", "_"));
            System.out.println(ev.getURL());
            ev.setLocal("IFAM-CMC");
            ev.setEntidade(e);
            out.println(evDAO.salvar(ev));

            fe = FotosEventos.getInstance();
            stream = getServletContext().getResourceAsStream("/img/templates/info1.jpg");
            fe.setEvento(ev);
            fe.setFoto(IOUtils.toByteArray(stream));
            out.println(feDAO.salvar(fe));

            stream = getServletContext().getResourceAsStream("/img/templates/info2.png");
            fe.setEvento(ev);
            fe.setFoto(IOUtils.toByteArray(stream));
            out.println(feDAO.salvar(fe));

            stream = getServletContext().getResourceAsStream("/img/templates/info3.png");
            fe.setEvento(ev);
            fe.setFoto(IOUtils.toByteArray(stream));
            out.println(feDAO.salvar(fe));
            
            ev.setNome("Aulas de Química");
            ev.setDescricao("Aulas oferecidas ao IFAM");
            ev.setDataInicioInscricao(Calendar.getInstance().getTime());
            ev.setDataFinalInscricao(Calendar.getInstance().getTime());
            ev.setDataInicioEvento(Calendar.getInstance().getTime());
            ev.setDataFinalEvento(Calendar.getInstance().getTime());
            System.out.println(ev.getNome());
            ev.setURL(Normalizer.normalize(ev.getNome(),Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "").replace(" ", "_"));
            System.out.println(ev.getURL());
            ev.setLocal("IFAM-CMC");
            ev.setEntidade(e);
            out.println(evDAO.salvar(ev));

            fe = FotosEventos.getInstance();
            stream = getServletContext().getResourceAsStream("/img/templates/quim1.jpg");
            fe.setEvento(ev);
            fe.setFoto(IOUtils.toByteArray(stream));
            out.println(feDAO.salvar(fe));

            stream = getServletContext().getResourceAsStream("/img/templates/quim2.png");
            fe.setEvento(ev);
            fe.setFoto(IOUtils.toByteArray(stream));
            out.println(feDAO.salvar(fe));

        } catch (Exception ex) {
            Logger.getLogger(EncherBanco.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.CampusDAO;
import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.DAO.EventoDAO;
import com.br.OMT.DAO.FormacaoEmCampusDAO;
import com.br.OMT.DAO.FotosEventosDAO;
import com.br.OMT.DAO.TrabalhoDAO;
import com.br.OMT.DAO.UsuarioDAO;
import com.br.OMT.Utils.Criptografia;
import com.br.OMT.models.Discente;
import com.br.OMT.models.Entidade;
import com.br.OMT.models.Evento;
import com.br.OMT.models.FormacaoEmCampus;
import com.br.OMT.models.FotosEventos;
import com.br.OMT.models.Trabalho;
import com.br.OMT.models.Usuario;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.Normalizer;
import java.util.Calendar;
import java.util.Random;
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

        String[] cursos = new String[]{"Licenciatura em Teatro", "Licentuara em Matemática", "Bacharelado em Sistemas de Informaação", "Bacharelado em Engenharia Civil"};

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
            FormacaoEmCampus fec;

            InputStream stream;

            DiscenteDAO dDAO = new DiscenteDAO();
            UsuarioDAO uDAO = new UsuarioDAO();
            CampusDAO cDAO = new CampusDAO();
            EventoDAO evDAO = new EventoDAO();
            TrabalhoDAO tDAO = new TrabalhoDAO();
            FotosEventosDAO feDAO = new FotosEventosDAO();
            FormacaoEmCampusDAO fecDAO = new FormacaoEmCampusDAO();

            //Cadastro de Reitoria
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
            e.setTipo('R');
            out.println(cDAO.salvar(e));

            u = Usuario.getInstance();
            u.setNome("Usuário Teste");
            u.setNomeBanco(Criptografia.encrypt(u.getNome()));
            u.setUsuario("reitor");
            u.setUsuarioBanco(Criptografia.encrypt(u.getUsuario()));
            u.setSenha("789");
            u.setSenhaBanco(Criptografia.encrypt(u.getSenha()));
            u.setEntidade(e);
            out.println(uDAO.salvar(u));
            
            //Cadastro de Campus
            e = Entidade.getInstance();
            e.setBairro("Centro");
            e.setCEP("69097781");
            e.setCNAE("1234567");
            e.setCNPJ("1234567891235");
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

            //Cadastro Discente
            stream = getServletContext().getResourceAsStream("/img/templates/info1.jpg");
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
            d.setSexo("MASCULINO");
            d.setEtnia("BRANCA");
            d.setEstadoCivil("SOLTEIRO");
            d.setEmail("exemplo123@gmail.com");
            d.setLinkCurriculoLattes("https://wwws.cnpq.br/cvlattesweb/PKG_MENU.menu?f_cod=66443CA9D507B0651D4690F514632E67#");
            d.setLinkPerfilLinkedIn("https://www.linkedin.com/in/victor-yan-b4312415b/");
            //d.setFoto(IOUtils.toByteArray(stream));
            out.println(dDAO.salvar(d));

            fec = FormacaoEmCampus.getInstance();
            fec.setNome(cursos[new Random().nextInt(4)]);
            fec.setAnoTermino(2018);
            fec.setDiscente(d);
            fec.setCampus(e);
            out.println(fecDAO.salvar(fec));
            
            //Cadastro de outros discentes
            for (int i = 0; i < 25; i++) {
                d = Discente.getInstance();
                d.setNome("Aluno Teste " + i);
                d.setNomeBanco(Criptografia.encrypt(d.getNome()));
                d.setCPF("025465692" + i);
                d.setCPFbanco(Criptografia.encrypt(d.getCPF()));
                d.setUsuario("2016114403" + i);
                d.setUsuarioBanco(Criptografia.encrypt(d.getUsuario()));
                d.setRG("1234567" + i);
                d.setRGbanco(Criptografia.encrypt(d.getRG()));
                d.setSenha("4" + i);
                d.setSenhaBanco(Criptografia.encrypt(d.getSenha()));
                d.setSexo("MASCULINO");
                d.setEtnia("BRANCA");
                d.setEstadoCivil("SOLTEIRO");
                d.setEmail("exemplo1" + i + "@gmail.com");
                d.setLinkCurriculoLattes("https://wwws.cnpq.br/cvlattesweb/PKG_MENU.menu?f_cod=66443CA9D507B0651D4690F514632E67#");
                d.setLinkPerfilLinkedIn("https://www.linkedin.com/in/victor-yan-b4312415b/");
                out.println(dDAO.salvar(d));

                fec = FormacaoEmCampus.getInstance();
                fec.setNome(cursos[new Random().nextInt(4)]);
                fec.setAnoTermino(2018);
                fec.setDiscente(d);
                fec.setCampus(e);
                out.println(fecDAO.salvar(fec));
            }
            
            //Cadastro de Eventos
            ev = Evento.getInstance();
            ev.setNome("Aulas de Informática");
            ev.setDescricao("Aulas oferecidas ao IFAM");
            ev.setDataInicioInscricao(Calendar.getInstance().getTime());
            ev.setDataFinalInscricao(Calendar.getInstance().getTime());
            ev.setDataInicioEvento(Calendar.getInstance().getTime());
            ev.setDataFinalEvento(Calendar.getInstance().getTime());
            System.out.println(ev.getNome());
            ev.setURL(Normalizer.normalize(ev.getNome(), Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "").replace(" ", "_"));
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
            ev.setURL(Normalizer.normalize(ev.getNome(), Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "").replace(" ", "_"));
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
            
            stream.close();
        } catch (Exception ex) {
            Logger.getLogger(EncherBanco.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("home.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}

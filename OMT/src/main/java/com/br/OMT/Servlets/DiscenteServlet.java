/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.DiscenteDAO;
import com.br.OMT.Utils.Criptografia;
import com.br.OMT.models.Discente;
import com.br.OMT.models.Entidade;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vinic
 */
public class DiscenteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Discente d;
            DiscenteDAO ddao = new DiscenteDAO();
            byte[] foto = null;
            d = ddao.buscarById(Long.parseLong(request.getParameter("id")));
            response.setContentType("image/jpeg");
            if (d.getFoto() == null) {
                System.out.println("oioioioioi");
                BufferedImage bImage = ImageIO.read(new File(getServletContext().getContextPath() + "/img/student.png"));
                ByteArrayOutputStream bos = new ByteArrayOutputStream();
                ImageIO.write(bImage, "png", bos);
                foto = bos.toByteArray();
            } else {
                System.out.println("1221212121");
                foto = d.getFoto();
            }
            OutputStream out = response.getOutputStream();
            out.write(foto);
            out.flush();
        } catch (Exception ex) {
            Logger.getLogger(DiscenteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("ISO-8859-1");
        Discente d = Discente.getInstance();
        DiscenteDAO ddao = new DiscenteDAO();
        String usuario = "", rg = "", cpf = "", nome = "", sexo = "", estadoCivil = "",
                etnia = "", acao = "", email = "", linkCurriculoLattes = "", linkPerfilLinkedIn = "",
                nomePai = "", nomeMae = "";
        Date dataNasc = null;
        byte[] foto = null;

        acao = request.getParameter("acao");
        rg = request.getParameter("rg");
        cpf = request.getParameter("cpf");
        nome = request.getParameter("nome");
        sexo = request.getParameter("sexo");
        email = request.getParameter("email");
        linkCurriculoLattes = request.getParameter("linkCurriculoLattes");
        linkPerfilLinkedIn = request.getParameter("linkPerfilLinkedIn");
        nomePai = request.getParameter("nomePai");
        nomeMae = request.getParameter("nomeMae");
        estadoCivil = request.getParameter("estadoCivil");
        etnia = request.getParameter("etnia");
        usuario = request.getParameter("usuario");

        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        df.setLenient(false);
        try {
            dataNasc = df.parse(request.getParameter("dataNasc"));
        } catch (ParseException ex) {
            Logger.getLogger(DiscenteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (request.getParameter("fotoCortada") != null) {
            if (request.getParameter("fotoCortada").length() > 0) {
                foto = request.getParameter("fotoCortada").getBytes();
            } else {
                foto = null;
            }
        }

        if (acao.equals("cadastrar")) {
            d.setUsuario(usuario);
            setDados(d, cpf, foto, rg, nome, email, linkCurriculoLattes, linkPerfilLinkedIn, sexo, estadoCivil, etnia, dataNasc, nomePai, nomeMae);

            //Gerando senha aleatória
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

                        Entidade ent = (Entidade) request.getSession().getAttribute("entidade");
                        if (ent.getTipo() == 'C') {
                            response.sendRedirect("../OMT/campus/eventos.jsp");
                        } else {
                            response.sendRedirect("../OMT/reitoria/eventos.jsp");
                        }
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
            setDados(d, cpf, foto, rg, nome, email, linkCurriculoLattes, linkPerfilLinkedIn, sexo, estadoCivil, etnia, dataNasc, nomePai, nomeMae);
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

    private void setDados(Discente d,
            String cpf, byte[] foto, String rg,
            String nome, String email,
            String linkCurriculoLattes, String linkPerfilLinkedIn,
            String sexo, String estadoCivil, String etnia, Date dataNasc,
            String nomePai, String nomeMae) {
        d.setCPF(cpf);
        d.setFoto(foto);
        d.setRG(rg);
        d.setNome(nome);
        d.setEmail(email);
        d.setLinkCurriculoLattes(linkCurriculoLattes);
        d.setLinkPerfilLinkedIn(linkPerfilLinkedIn);
        d.setNomePai(nomePai);
        d.setNomeMae(nomeMae);
        d.setDataNascimento(dataNasc);
        switch (sexo) {
            case "Masculino":
                d.setSexo("MASCULINO");
                break;
            case "Feminino":
                d.setSexo("FEMININO");
                break;
            case "Outro":
                d.setSexo("OUTRO");
                break;
        }
        switch (estadoCivil) {
            case "Solteiro":
                d.setEstadoCivil("SOLTEIRO");
                break;
            case "Casado":
                d.setEstadoCivil("CASADO");
                break;
            case "Divorciado":
                d.setEstadoCivil("DIVORCIADO");
                break;
            case "Viúvo":
                d.setEstadoCivil("VIUVO");
                break;
            case "Separado":
                d.setEstadoCivil("SEPARADO");
                break;
        }
        switch (etnia) {
            case "Branca":
                d.setEtnia("BRANCA");
                break;
            case "Negra":
                d.setEtnia("NEGRA");
                break;
            case "Amarela":
                d.setEtnia("AMARELA");
                break;
            case "Parda":
                d.setEtnia("PARDA");
                break;
            case "Indígena":
                d.setEtnia("INDIGENA");
                break;
            case "Não declarado":
                d.setEtnia("NAO_DECLARADO");
                break;
        }
    }
}

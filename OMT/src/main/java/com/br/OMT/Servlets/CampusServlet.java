/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.CampusDAO;
import com.br.OMT.DAO.UsuarioDAO;
import com.br.OMT.Utils.Criptografia;
import com.br.OMT.models.Entidade;
import com.br.OMT.models.Usuario;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vinic
 */
public class CampusServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("ISO-8859-1");

        if (request != null) {
            String butao = request.getParameter("acao");
            if (butao.equals("cadastrar")) {
                Entidade e = Entidade.getInstance();
                e.setNome(request.getParameter("nome"));
                e.setNomeFantasia(request.getParameter("nomeFantasia"));
                e.setCNPJ(request.getParameter("cnpj"));
                e.setCNAE(request.getParameter("cnae"));
                e.setCEP(request.getParameter("cep"));
                e.setEstado(request.getParameter("estado"));
                e.setCidade(request.getParameter("cidade"));
                e.setBairro(request.getParameter("bairro"));
                e.setRua(request.getParameter("rua"));
                e.setNumero(request.getParameter("numero"));
                e.setComplemento(request.getParameter("complemento"));
                e.setTipo(request.getParameter("tipo").charAt(0));
                Usuario u = Usuario.getInstance();
                u.setNome(request.getParameter("nomeUsuario"));
                u.setUsuario(request.getParameter("login"));

                u.setSenha(request.getParameter("senha"));
                Criptografia c = new Criptografia();
                try {
                    u.setNomeBanco(c.encrypt(u.getNome()));
                    u.setUsuarioBanco(c.encrypt(u.getUsuario()));
                    u.setSenhaBanco(c.encrypt(u.getSenha()));
                } catch (Exception ex) {
                    Logger.getLogger(CampusServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                CampusDAO cdao = new CampusDAO();
                String str = cdao.salvar(e);
                if (str.equals("")) {
                    u.setTipo('A');
                    response.getWriter().println("Eai? " + cdao.findByCNPJ(e.getCNPJ()));
                    u.setEntidade(cdao.findByCNPJ(e.getCNPJ()));
                    UsuarioDAO udao = new UsuarioDAO();
                    str = udao.salvar(u);
                    if (str.equals("")) {
                        response.getWriter().println("OK");
                    } else {
                        response.getWriter().println("ERRO: " + str);
                    }
                } else {
                    response.getWriter().println("ERRO: " + str);
                }
            }
        }
    }
}

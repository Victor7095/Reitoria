/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.Servlets;

import com.br.OMT.DAO.EmpresaDAO;
import com.br.OMT.DAO.UsuarioDAO;
import com.br.OMT.Utils.Criptografia;
import com.br.OMT.models.Entidade;
import com.br.OMT.models.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
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
public class EmpresaServlet extends HttpServlet {

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

                Usuario u = Usuario.getInstance();
                u.setNome(request.getParameter("nomeUsuario"));
                u.setUsuario(request.getParameter("usuario"));
                u.setSenha(request.getParameter("senha"));
                byte[] senhaCriptografada;

                try {
                    senhaCriptografada = new Criptografia().encrypt(u.getSenha());
                    u.setSenhaBanco(senhaCriptografada);
                    EmpresaDAO edao = new EmpresaDAO();
                    String str = edao.salvar(e);
                    if (str.equals("")) {
                        u.setTipo('A');
                        u.setEntidade(edao.findByCNPJ(e.getCNPJ()));
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
                } catch (Exception ex) {
                    Logger.getLogger(EmpresaServlet.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        }

    }

}

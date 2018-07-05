/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.OMT.DAO;

import com.br.OMT.Hibernate.HibernateFactory;
import com.br.OMT.Hibernate.HibernateUtil;
import com.br.OMT.models.Eventos;
import com.br.OMT.models.Trabalho;
import java.util.ArrayList;
import java.util.Date;
import org.hibernate.Session;

/**
 *
 * @author vinic
 */
public class FuncoesExtras {

    private HibernateUtil<Eventos> hue;
    private Session s;

    public FuncoesExtras() {
        HibernateFactory.initSessionFactory();
        hue = new HibernateUtil<>();
        s = HibernateFactory.getSessionFactory().openSession();
    }

    public ArrayList<Object> listNoticias() {
        ArrayList<Eventos> ale = (ArrayList<Eventos>) new EventoDAO().listEventos();
        ArrayList<Trabalho> alt = (ArrayList<Trabalho>) new TrabalhoDAO().listTrabalho();

        ArrayList<Object> alo = new ArrayList<>();
        alo.addAll(alt);
        alo.addAll(ale);
        Date data1 = null;
        Date data2 = null;
        Object aux = null;
        for (int i = 0; i < alo.size() - 1; i++) {
            for (int y = i + 1; y < alo.size(); y++) {
                if(alo.get(i) instanceof Eventos){
                    data1 = ((Eventos) alo.get(i)).getDataInicioIncricao();
                }else{
                    data1 = ((Trabalho) alo.get(i)).getTempoInicio();
                }
                
                if(alo.get(y) instanceof Eventos){
                    data2 = ((Eventos) alo.get(y)).getDataInicioIncricao();
                }else{
                    data2 = ((Trabalho) alo.get(y)).getTempoInicio();
                }
                
                if(data1.after(data2)){
                    aux = alo.get(i);
                    alo.set(i, alo.get(y));
                    alo.set(y, aux);
                    
                    aux = null;
                }
            }
        }
        return alo;
    }
}

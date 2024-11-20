<%-- 
    Document   : consultaLista
    Created on : 30 de out. de 2024, 21:45:24
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pesquisa"%>
<%@page import="model.dao.PesquisaDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%        
            //Select "Lista"
            PesquisaDAO pesqDAO = new PesquisaDAO();
            
            List<Pesquisa> lista = new ArrayList<>();
            lista = pesqDAO.consPesqLista();
            
            int n_reg = 0 ;
            out.println("<br><br> <img src='../imagens/logo.jpg' alt=''/>");
            out.println("<br> <b>Pesquisa de Satisfação - Registros</b>");
            
            out.println("<br><br><b> # | Data | Nome | E-mail </b> <br>"); 
            
            for( int i = 0; i <= lista.size()-1; i++){            
                out.println(i + " - " + lista.get(i).getDt_pesq() + " - " + lista.get(i).getNome() + " - " + lista.get(i).getEmail() + "<br>");                                        
                n_reg++;                           
            }
            out.println("<br><br> <b>Registros: </b>" + n_reg + "<br>");
           out.println("<br><br> <b> Legenda:</b> <br> <img src='../imagens/escala.jpg' alt=''/>");

        
        %>
    </body>
</html>
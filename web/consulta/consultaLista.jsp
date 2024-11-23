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
        
            

            PesquisaDAO pesqDAO = new PesquisaDAO();
            
            List<Pesquisa> lista = new ArrayList<>();
            lista = pesqDAO.consultarPesqLista();
            
            int registro = 0 ;
            out.println("<br><br> <img src='../imagens/logo.png' alt=''/>");
            out.println("<br> <b>Pesquisa de Qualidade - Registros</b>");
            
            for( int i = 0; i <= lista.size()-1; i++){            
                out.println("<br><br> #: " + i);                
                out.println("<br> <b>Nome:</b> " + lista.get(i).getNome());
                out.println("<br> Questão 1: " + lista.get(i).getQ1());
                out.println("<br> Questão 2: " + lista.get(i).getQ2());
                out.println("<br> Questão 3: " + lista.get(i).getQ3());
                out.println("<br> Questão 4: " + lista.get(i).getQ4());                            
                registro++;                           
            }
            out.println("<br><br> <b>Registros: </b>" + registro + "<br>");
           out.println("<br><br> <b> Legenda:</b> <br> <img src='../imagens/escala.png' alt=''/>");

        
        %>
    </body>
</html>

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
            
            int registro = 0 ;
            out.println("<br><br> <img src='../imagens/logo.jpg' alt=''/>");
            out.println("<br> <b>Pesquisa de Qualidade - Registros</b>");
            
            out.println("<br><br><b> | Nome | </b> <br>"); 
            
            for( int i = 0; i <= lista.size()-1; i++){            
                out.println(i + " - " + lista.get(i).getNome() + "<br>");                                        
                registro++;                           
            }
            out.println("<br><br> <b>Registros: </b>" + registro + "<br>");
           out.println("<br><br> <b> Legenda:</b> <br> <img src='../imagens/escala.jpg' alt=''/>");

        
        %>
    </body>
</html>

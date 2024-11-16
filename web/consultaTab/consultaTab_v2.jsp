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
         %>   
         <!-- HTML -->
         <table border="1">
                 <tr>
                     <th>#</th>
                     <th>Id.</th>
                     <th>Data</th>
                     <th>Nome</th>
                     <th>E-mail</th>
                     <th>Resp. 1</th>
                     <th>Resp. 2</th>
                     <th>Resp. 3</th>
                     <th>Resp. 4</th>
                 </tr>            
         <%
            for( int i = 0; i <= lista.size()-1; i++){  
         %>                                                        
                 <tr>
                     <td><%= i+1%></td>
                     <td><%= lista.get(i).getId() %></td>
                     <td><%= lista.get(i).getDt_pesq()%></td>
                     <td><%= lista.get(i).getNome()%></td>
                     <td><%= lista.get(i).getEmail()%></td>
                     <td><%= lista.get(i).getQ1()%></td>
                     <td><%= lista.get(i).getQ2()%></td>
                     <td><%= lista.get(i).getQ3()%></td>
                     <td><%= lista.get(i).getQ4()%></td>
                 </tr>                
         <%
                n_reg++;                           
            }
         %>
         </table>
         <%
            out.println("<br><br> <b>Registros: </b>" + n_reg + "<br>");
            out.println("<br><br> <b> Legenda:</b> <br> <img src='../imagens/escala.jpg' alt=''/>");        
        %>
    </body>
</html>

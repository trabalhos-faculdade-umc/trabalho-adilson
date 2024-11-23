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
            
            List <Pesquisa> lista = new ArrayList<>();
            lista = pesqDAO.consPesqLista();
            
            int registro = 0 ;
            out.println("<br><br> <img src='../imagens/logo.png' alt=''/>");
            out.println("<br> <b>Pesquisa de Qualidade - Registros</b>");
         %>   
         
         <table border="1">
                 <tr>
                     <th>#</th>
                     <th>Id.</th>
                     <th>Nome</th>
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
                     <td><%= lista.get(i).getNome()%></td>
                     <td><%= lista.get(i).getQ1()%></td>
                     <td><%= lista.get(i).getQ2()%></td>
                     <td><%= lista.get(i).getQ3()%></td>
                     <td><%= lista.get(i).getQ4()%></td>
                 </tr>                
         <%
                registro++;                           
            }
         %>
         </table>
         <%
            out.println("<br><br> <b>Registros: </b>" + registro + "<br>");
            out.println("<br><br> <b> Legenda:</b> <br> <img src='../imagens/escala.png' alt=''/>");        
        %>
    </body>
</html>

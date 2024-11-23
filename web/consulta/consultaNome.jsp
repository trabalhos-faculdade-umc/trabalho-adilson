<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pesquisa"%>
<%@page import="model.dao.PesquisaDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        String nome = request.getParameter("nome");
            
        
        Pesquisa pesq = new Pesquisa();
        pesq.setNome(nome);
        
        
        PesquisaDAO pesqDAO = new PesquisaDAO();
        if(pesqDAO.consultarPesqNome(pesq) != null){
                out.println("<br> <b>Pesquisa de Satisfação</b> <br>");
                out.println("<br> Nome: " + pesq.getNome());
                out.println("<br> Questão 1: " + pesq.getQ1());
                out.println("<br> Questão 2: " + pesq.getQ2());
                out.println("<br> Questão 3: " + pesq.getQ3());
                out.println("<br> Questão 4: " + pesq.getQ4());                             
                out.println("<br><br> <b> Legenda:</b> <br> <img src='../imagens/escala.jpg' alt=''/>");                             
        }else{
               out.println("Registro não encontrado!!!");
        }

        
        %>
    </body>
</html>

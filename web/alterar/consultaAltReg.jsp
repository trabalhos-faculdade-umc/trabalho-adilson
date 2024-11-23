<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pesquisa"%>
<%@page import="model.dao.PesquisaDAO"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar (Consulta)</title>
    </head>
    <body>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );
            
        // Instância e atrib de valor
        Pesquisa pesq = new Pesquisa();
        pesq.setId(id);
        
         //Select
        PesquisaDAO pesqDAO = new PesquisaDAO();
        if(pesqDAO.consPesqRegIdent(pesq) != null){
                out.println("<h2>Pesquisa de Qualidade</h2> <br>");
        %>                          
        <form name="frmPesq" method="post" action="updatePesq.jsp">
            Identificador: <input type="text" name="id" value="<%= pesq.getId()%>" readonly="true"> <p>
            Nome: <input type="text" name="nome" value="<%= pesq.getNome() %>" minlength="3" maxlength="10"> <p>
            E-mail: <input type="email" name="email" value="<%= pesq.getEmail()%>"> <p>                
            1. Como você classifica a qualidade dos nossos produtos? 
            <input type="text" name="r1" value="<%= pesq.getQ1()%>"><p>
            2. Como você avalia a pontualidade do nosso entregador? 
            <input type="text" name="r2" value="<%= pesq.getQ2()%>"><p>             
            3. Você alugaria os nossos produtos novamente?
            <input type="text" name="r3" value="<%= pesq.getQ3()%>"><p>                         
            4. Você recomendaria nossos produtos e serviço para outras pessoas?
            <input type="text" name="r4" value="<%= pesq.getQ4()%>"><p> 
            <input type="submit" value="Salvar">
        </form>                 
        <%        
                out.println("<br><br> <b> Legenda:</b> <br> <img src='../imagens/escala.jpg' alt=''/>");                             
        }else{
               out.println("Registro não encontrado!!!");
        }        
        %>
    </body>
</html>

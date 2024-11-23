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
        
        int id = Integer.parseInt( request.getParameter("id") );
            
        
        Pesquisa pesq = new Pesquisa();
        pesq.setId(id);
        
        
        PesquisaDAO pesqDAO = new PesquisaDAO();
        if(pesqDAO.excluirPesqId(pesq)){
            out.println("<br> <b>Registro excluído com sucesso!</b> <br>");
        }else{
            out.println("Registro não excluído!!!");
        }

        
        %>
    </body>
</html>

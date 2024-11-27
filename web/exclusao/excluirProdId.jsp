<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.ProdutoS"%>
<%@page import="model.dao.ProdutoDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        int id = Integer.parseInt( request.getParameter("id") );
            
        
        Produtos produto = new Produtos();
        produto.setId(id);
        
        
        ProdutoDAO prodDAO = new ProdutoDAO();
        if(prodDAO.excluirProdId(produto)){
            out.println("<br> <b>Produto excluído com sucesso!</b> <br>");
        }else{
            out.println("Produto não excluído!!!");
        }

        
        %>
    </body>
</html>

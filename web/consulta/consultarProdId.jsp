<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produtos"%>
<%@page import="model.dao.ProdutoDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int id = Integer.parseInt(request.getParameter("id"));
            
        Produtos prod = new Produtos();
        prod.setId(id);
        
         
        ProdutoDAO prodDAO = new ProdutoDAO();
        if(prodDAO.consultarProdId(prod) != null){
                out.println("<br> <b>Produto</b> <br>");
                out.println("<br> ID: " + prod.getId());
                out.println("<br> Nome: " + prod.getNome());
                out.println("<br> Quantidade: " + prod.getQuant());                                                     
        }else{
               out.println("Produto não encontrado!!!");
        }       
        %>
    </body>
</html>

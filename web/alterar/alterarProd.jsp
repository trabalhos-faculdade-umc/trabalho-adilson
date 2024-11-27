<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produtos"%>
<%@page import="model.dao.ProdutoDAO"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Produto</title>
    </head>
    <body>
        <h1>Alteração de Produto</h1>
        <%
            
            int id = Integer.parseInt( request.getParameter("id") );
            String nome = request.getParameter("nome");            
            int quant = request.getParameter("quantidade");


            
            Produtos produto = new Produtos();
            produto.setId(id);
            produto.setNome(nome);
            produto.setQuant(quant);
 
            
            ProdutoDAO prodDAO = new ProdutoDAO();
            
            if (prodDAO.alterarProd(produto)){    
                
                out.println("Produto Alterado com sucesso!!!");
            }else{
                
                out.println("Produto não alterado!!!");
            }          
        %>
    </body>
</html>

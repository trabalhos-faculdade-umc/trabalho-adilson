<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produtos"%>
<%@page import="model.dao.ProdutoDAO"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Produtos</h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String nome = request.getParameter("nome");            
            int quant = Integer.parseInt( request.getParameter("quantidade") );

            Produtos produto = new Produtos();
            produto.setId(id);
            produto.setNome(nome);
            produto.setQuant(quant);         
            
            ProdutoDAO prodDAO = new ProdutoDAO();
            
            if (prodDAO.cadastraProd(produto)){
                out.println("Produto inserido com sucesso!");
            }else{
                out.println("Produto não inserido!");
            }          
        %>
    </body>
</html>

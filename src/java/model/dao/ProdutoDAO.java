package model.dao;

import model.Produtos;
import java.sql.*;
import util.ConectaDB;

public class ProdutoDAO {
    
   public boolean cadastraProd(Produtos produto) throws ClassNotFoundException {
        
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "INSERT INTO produto(id, nome, quantidade) VALUES ('" + produto.getId()+
                                                                                    "','" + produto.getNome()+ 
                                                                                    "'," + produto.getQuant()+  ")"; 
                                                                                     
                         
            stmt.executeUpdate(sql); 
                        
            conexao.close();
            return true;
        }catch(SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return false;
        }                 
    }  
   
   public Produtos consultarProdId(Produtos produto) throws ClassNotFoundException{

        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); 
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "SELECT * from produto where id = '" + produto.getId()+ "'";
            ResultSet rs = stmt.executeQuery(sql); 
            
            int registro = 0;
            while (rs.next()) {                 
                produto.setId(Integer.parseInt(rs.getString("id")));  
                produto.setNome(rs.getString("nome"));                 
                produto.setQuant(Integer.parseInt(rs.getString("quantidade")));
                registro++;
            }
            conexao.close();
            
            if (registro==0){
                return null;
            }else{
                return produto;
            }
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return null;
        }
    } 
   
   public boolean excluirProdId(Produtos produtos) throws ClassNotFoundException{
    
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); 
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "DELETE from produtos where id = " + produtos.getId();
            stmt.executeUpdate(sql);            
            conexao.close();            
            return true;
            
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    } 
   
   public boolean alterarProd(Produtos produtos) throws ClassNotFoundException {
        
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); 
            Statement stmt = conexao.createStatement();
                                              
            String sql = "UPDATE produtos SET nome='" + produtos.getNome()+ "'" +
                                                    ", quantidade='" + produtos.getQuant()+ "'" +
                                                       " WHERE id = " + produtos.getId();
                                                                                                                                  
            stmt.executeUpdate(sql); 
                        
            conexao.close();
            return true;
        }catch(SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return false;
        }                 
    } 
}

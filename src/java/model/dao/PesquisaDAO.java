package model.dao;

import model.Pesquisa;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import util.ConectaDB;
/**
 *
 * @author Juan
 */
public class PesquisaDAO {
   //Atributos
    // Sem atributos
    
    //Métodos
   public boolean inserirPesq(Pesquisa p_pesq) throws ClassNotFoundException {
        //Connectar
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "INSERT INTO pesquisa(id, nome, tipo, quantidade, q1, q2, q3, q4) VALUES ('" + p_pesq.getId()+
                                                                                    "','" + p_pesq.getNome()+
                                                                                    "', '" + p_pesq.getTipo() + 
                                                                                    "'," + p_pesq.getQuant()+
                                                                                    "'," + p_pesq.getQ1()+ 
                                                                                    "," + p_pesq.getQ2()+ 
                                                                                    "," + p_pesq.getQ3()+ 
                                                                                    "," + p_pesq.getQ4() + ")"; 
                                                                                     
                         
            stmt.executeUpdate(sql); 
                        
            conexao.close();
            return true;
        }catch(SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return false;
        }                 
    }  
    
   public Pesquisa consultarPesqNome(Pesquisa pesquisa) throws ClassNotFoundException{
    
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); 
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "SELECT * from pesquisa where nome = '" + pesquisa.getNome() + "'";
            ResultSet rs = stmt.executeQuery(sql); 
            
            int registro = 0;
            while (rs.next()) {   
                pesquisa.setId(Integer.parseInt(rs.getString("pkid")));  
                pesquisa.setNome(rs.getString("nome"));  
                pesquisa.setTipo(rs.getString("tipo"));                
                pesquisa.setQuant( Integer.parseInt(rs.getString("quantidade")));
                pesquisa.setQ1( Integer.parseInt(rs.getString("q1")));                
                pesquisa.setQ2( Integer.parseInt(rs.getString("q2")));                
                pesquisa.setQ3( Integer.parseInt(rs.getString("q3")));                
                pesquisa.setQ4( Integer.parseInt(rs.getString("q4")));
                registro++;
            }
            conexao.close();
            
            if (registro==0){
                return null;
            }else{
                return pesquisa;
            }
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return null;
        }
    }   

   public Pesquisa consultarPesqTipo(Pesquisa pesquisa) throws ClassNotFoundException{

        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); 
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "SELECT * from pesquisa where tipo = '" + pesquisa.getTipo()+ "'";
            ResultSet rs = stmt.executeQuery(sql); 
            
            int registro = 0;
            while (rs.next()) {                 
                pesquisa.setId(Integer.parseInt(rs.getString("pkid")));  
                pesquisa.setNome(rs.getString("nome"));  
                pesquisa.setTipo(rs.getString("tipo"));                
                pesquisa.setQuant(Integer.parseInt(rs.getString("quantidade")));
                pesquisa.setQ1( Integer.parseInt(rs.getString("q1")));                
                pesquisa.setQ2( Integer.parseInt(rs.getString("q2")));                
                pesquisa.setQ3( Integer.parseInt(rs.getString("q3")));                
                pesquisa.setQ4( Integer.parseInt(rs.getString("q4")));
                registro++;
            }
            conexao.close();
            
            if (registro==0){
                return null;
            }else{
                return pesquisa;
            }
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return null;
        }
    } 
     
   public Pesquisa consultarPesqId(Pesquisa pesquisa) throws ClassNotFoundException{

        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); 
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "SELECT * from pesquisa where pkid = '" + pesquisa.getId()+ "'";
            ResultSet rs = stmt.executeQuery(sql); 
            
            int registro = 0;
            while (rs.next()) {                 
                pesquisa.setId(Integer.parseInt(rs.getString("pkid")));  
                pesquisa.setNome(rs.getString("nome"));  
                pesquisa.setTipo(rs.getString("tipo"));                
                pesquisa.setQuant(Integer.parseInt(rs.getString("quantidade")));
                pesquisa.setQ1( Integer.parseInt(rs.getString("q1")));                
                pesquisa.setQ2( Integer.parseInt(rs.getString("q2")));                
                pesquisa.setQ3( Integer.parseInt(rs.getString("q3")));                
                pesquisa.setQ4( Integer.parseInt(rs.getString("q4")));
                registro++;
            }
            conexao.close();
            
            if (registro==0){
                return null;
            }else{
                return pesquisa;
            }
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return null;
        }
    } 
  
   public List consultarPesqLista() throws ClassNotFoundException{
    
        List lista = new ArrayList(); 
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); 
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "SELECT * from pesquisa";
            ResultSet rs = stmt.executeQuery(sql); 
            
            int registro = 0;
            while (rs.next()) {                 
                Pesquisa pesquisa = new Pesquisa();
                pesquisa.setId(Integer.parseInt(rs.getString("pkid")));  
                pesquisa.setNome(rs.getString("nome"));  
                pesquisa.setTipo(rs.getString("tipo"));                
                pesquisa.setQuant(Integer.parseInt(rs.getString("quantidade")));
                pesquisa.setQ1( Integer.parseInt(rs.getString("q1")));                
                pesquisa.setQ2( Integer.parseInt(rs.getString("q2")));                
                pesquisa.setQ3( Integer.parseInt(rs.getString("q3")));                
                pesquisa.setQ4( Integer.parseInt(rs.getString("q4")));
                lista.add(pesquisa);
                registro++;
            }
            conexao.close();
            
            if (registro==0){
                return null;
            }else{
                return lista;
            }
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return null;
        }
    }   
   
   public boolean excluirPesqId(Pesquisa pesquisa) throws ClassNotFoundException{
    
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); 
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "DELETE from pesquisa where pkid = " + pesquisa.getId();
            stmt.executeUpdate(sql);            
            conexao.close();            
            return true;
            
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    } 
   
   public boolean alterarPesq(Pesquisa p_pesq) throws ClassNotFoundException {
        
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); 
            Statement stmt = conexao.createStatement();
                                              
            String sql = "UPDATE pesquisa SET nome='" + p_pesq.getNome()+ "'" +
                                                    ", tipo='" + p_pesq.getTipo()+ "'" +
                                                    ", quantidade='" + p_pesq.getQuant()+ "'" +
                                                    ", q1=" + p_pesq.getQ1()+ 
                                                    ", q2=" + p_pesq.getQ2()+ 
                                                    ", q3=" + p_pesq.getQ3()+ 
                                                    ", q4=" + p_pesq.getQ4() + " WHERE pkid = " + p_pesq.getId();
                                                                                                                                  
            stmt.executeUpdate(sql); 
                        
            conexao.close();
            return true;
        }catch(SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return false;
        }                 
    } 
}

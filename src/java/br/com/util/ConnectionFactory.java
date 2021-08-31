/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author willi
 */
public class ConnectionFactory {
    
    public static Connection getConnection() throws Exception{
            try {
              Class.forName("org.postgresql.Driver");
              return DriverManager.getConnection("jdbc:postgresql://localhost:5432/projeto-marketplace-turmab2", 
                      "postgres", "123456");
            } catch (Exception e) {
                throw new Exception(e.getMessage());
            }
    }
    
    private static void close(Connection con, Statement stmt, ResultSet rs) throws Exception{
        try {
            if(con != null){
                con.close();
            }
            if(stmt != null){
                stmt.close();
            }
            if(rs != null){
                rs.close();
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }
    
    public static void closeConnection(Connection con, Statement stmt, ResultSet rs) throws Exception{
        close(con, stmt, rs);
    }
    
    public static void closeConnection(Connection con, Statement stmt) throws Exception{
        close(con, stmt, null);
    }
    
    public static void closeConnection(Connection con) throws Exception{
        close(con, null, null);
    }
}

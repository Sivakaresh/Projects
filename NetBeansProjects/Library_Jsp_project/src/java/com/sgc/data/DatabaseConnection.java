
package com.sgc.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DatabaseConnection{
    static final String JDBC_DRIVER="com.mysql.jdbc.Driver";
    static final String DB_URL="jdbc:mysql://localhost/library_jsp?useSSL=false";
    
    static final String USER="root";
    static final String PASS="manager";
                            
    public Connection getConnection() throws ClassNotFoundException, SQLException{
        Connection conn=null;
       
        System.out.println("connecting to the database......");
        try{
             Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(DB_URL, USER, PASS);
        }catch(SQLException ex){
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Connection Successfull.");
        return conn;
        
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ggc.data;

import com.sgc.model.Book;
import com.sgc.data.DatabaseConnection;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author KARESH
 */
public class BookDao {
    public static void saveBook(Book book)throws ClassNotFoundException, SQLException{
        DatabaseConnection dbConnection=new DatabaseConnection();
        Connection con=dbConnection.getConnection();
        Statement statement=con.createStatement();
        String query="INSERT INTO book_details(bookId,titles,author,mainclassification,subclassification,yearofpuclishing,lastprintedyear,isbnno,noofpages) VALUES('"+book.getBookId()+"','"+book.getBookTitle()+"','"+book.getAuthor()+"','"+book.getMainClassification()+"','"+book.getSubClassification()+"','"+book.getYop()+"','"+book.getLpy()+"','";
         statement.executeUpdate(query);
}
}

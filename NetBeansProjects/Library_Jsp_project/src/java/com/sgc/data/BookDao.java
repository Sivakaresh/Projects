/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.data;

import com.sgc.model.Book;
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
        statement.executeUpdate("INSERT INTO book_details(bookId,author,bookTitle) VALUES('"+book.getBookId()+"','"+book.getAuthor()+"','"+book.getBookTitle()+"')");
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.controller;

import com.sgc.data.BookDao;
import com.sgc.model.Book;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KARESH
 */
@WebServlet(name = "BookController", urlPatterns = {"/BookController"})
public class BookController extends HttpServlet {
Book book =new Book();
BookDao bookDao=new BookDao();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    try {
        
        book.setBookId(request.getParameter("bookId"));
        book.setAuthor(request.getParameter("author"));
        book.setBookTitle(request.getParameter("bookTitle"));
        // processRequest(request, response);
        // request.setAttribute("message","success");
        //  request.getRequestDispatcher("/out.jsp").forward(request, response);
        BookDao.saveBook(book);
      /*  try {
            bookDao.saveBook(book);
//processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(BookController.class.getName()).log(Level.SEVERE, null, ex);
        }*/
    } catch (ClassNotFoundException | SQLException ex) {
        Logger.getLogger(BookController.class.getName()).log(Level.SEVERE, null, ex);
    }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

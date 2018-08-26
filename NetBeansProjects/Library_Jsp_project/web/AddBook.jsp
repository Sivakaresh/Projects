<%-- 
    Document   : AddBook
    Created on : Jul 29, 2018, 9:54:53 AM
    Author     : KARESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            div {text-align: center;color: #66ffbb }
            #box{width: 500px}
            .leg{text-align: center}
            body{background-color: #aa8469}
        </style>
    </head>
    <body>
        <div><fieldset id="box">
                <legend class="leg">Book Registration Form</legend>
                <form action="BookController" method="get">
                    <table>
                        <tr><td>Book Id:</td><td> <input type="text" name="bookId"></td></tr>
                        <tr><td>Author :</td><td><input type="text" name="author"></td></tr>
                        <tr><td>Title :</td><td><input type="text" name="bookTitle"></td></tr>
                      
                        <tr><td><input type="submit" name="submit" value="save"></td></tr>
                    </table>
                </form>
            </fieldset></div>
    </body>
</html>

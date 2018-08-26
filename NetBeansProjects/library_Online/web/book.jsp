<%-- 
    Document   : book.jsp
    Created on : 05/08/2018, 2:16:36 PM
    Author     : Sivakaresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Books</title>
	<link rel="stylesheet" type="text/css" href="tbl.css">
	<link rel="stylesheet" href="assets/demo.css">
	<link rel="stylesheet" href="assets/header-search.css">
	<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="drop.css">
<!-- 
	<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script> -->
<!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="form.css" >
        <script src="form.js"></script>

</head>

<body>

<header class="header-search">

	<div class="header-limiter">

		<h1><a href="#">Library<span style="color:#F05283;">online</span></a></h1>

		<nav>
			<a href="index.jsp">Home</a>
			<!-- <a href="#" class="selected">Blog</a> -->
			<a href="book.jsp">Books</a>
		
			
			
				<div class="dropdown">
				  <a>Classification</a>
				  <div class="dropdown-content">
				    <a href="mainClassification.jsp">Main Classification</a><br>
				    <a href="subClassification.jsp">Sub Classification</a>
				   
				  </div>
				</div>

		</nav>

		<form method="get" action="#">
			<input type="search" placeholder="Search!" name="search">
		</form>

	</div>

</header>

<!-- The content of your page would go here. -->

<div class="menu">
	<!-- <h1>Freebie: 7 Responsive Header Templates</h1> -->
	<div data-role="main" class="ui-content">
	<h2>
		<a data-toggle="modal" data-target="#myModal">Add Book</a>
		<a href="">Edit</a>
		<a href="">Search</a>
	</h2>

	  <!-- 
       <div data-role="popup" id="myPopup" class="ui-content" style="min-width:300px;">
      <form method="post" action="/action_page_post.php">
        <div>
          <h3>Add Book</h3>
          <label for="usrnm" class="ui-hidden-accessible">Book ID</label><input type="text" name="user" id="usrnm" placeholder="Book ID">
          <label for="usrnm" class="ui-hidden-accessible">Book Title</label><input type="text" name="user" id="usrnm" placeholder="Book Title">
          <label for="usrnm" class="ui-hidden-accessible">Book Author</label><input type="text" name="user" id="usrnm" placeholder="Book Author">
          <label for="usrnm" class="ui-hidden-accessible">Main Classification</label><input type="text" name="user" id="usrnm" placeholder="Main Classification">
          <label for="usrnm" class="ui-hidden-accessible">Sub Classification</label><input type="text" name="user" id="usrnm" placeholder="Sub Classification">
          <label for="usrnm" class="ui-hidden-accessible">Last Print Year</label><input type="text" name="user" id="usrnm" placeholder="Last Print Year">
          <label for="usrnm" class="ui-hidden-accessible">ISBN Number</label><input type="text" name="user" id="usrnm" placeholder="ISBN Number">
          <label for="usrnm" class="ui-hidden-accessible">No.of.Pages</label><input type="text" name="user" id="usrnm" placeholder="No.of.Pages">
          
           <label for="log">Keep me logged in</label><input type="checkbox" name="login" id="log" value="1" data-mini="true"> -->
          <!-- <input type="submit" data-inline="true" value="save">
        </div>
      </form>
    </div> --> 
  </div>

  <div class="container">
            
             
            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">
                                Add Book
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form action="BookController" method="get" >
                            
                                <div class="form-group">
                                    <label for="name"> Book ID</label>
                                    <input type="text" class="form-control" id="bookid" name="bookid" required maxlength="50">
                                
                                    <label for="email"> Book Title</label>
                                    <input type="text" class="form-control" id="titles" name="titles" required maxlength="50">
                                    <label for="name"> Book Author</label>
                                    <input type="text" class="form-control" id="author" name="author" required maxlength="50">
                                
                                <label for="name"> Main Classification</label>
                                    <input type="text" class="form-control" id="mainclassification" name="mainclassification" required maxlength="50">
                                
                                <label for="name"> Sub Classification</label>
                                    <input type="text" class="form-control" id="subclassification" name="subclassification" required maxlength="50">
                                
                                <label for="name"> Last Print Year</label>
                                    <input type="text" class="form-control" id="lpy" name="lpy" required maxlength="50">
                                
                                <label for="name"> ISBN Number</label>
                                    <input type="text" class="form-control" id="isbn" name="isbn" required maxlength="50">


                                <label for="name">No.of.Pages</label>
                                    <input type="text" class="form-control" id="nop" name="nop" required maxlength="50">
                                
                                </div>
                                
                                <button type="submit" class="btn btn-lg btn-success btn-block" id="btnContactUs">Save </button>
                            </form>
                            <!--<div id="success_message" style="width:100%; height:100%; display:none; "> <h3>Sent your message successfully!</h3> </div>-->
                            <!--<div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Error</h3> Sorry there was an error sending your form. </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>

<table>
	<tr><th>Book ID</th><th>Book Title</th><th>Book Author</th><th>Main Classification</th><th>Sub Classification</th><th>Last Print Year</th><th>ISBN Number</th><th>No.of.Pages</th></tr>
</table>
</div>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>

	$(document).ready(function() {

		$('.header-search form').on('click', function(e) {

			// If the form (which is turned into the search button) was
			// clicked directly, toggle the visibility of the search box.

			if(e.target == this) {
				$(this).find('input').toggle();
			}

		});
	});

</script>


<!-- Demo ads. Please ignore and remove. -->
<script src="http://cdn.tutorialzine.com/misc/enhance/v3.js" async></script>

</body>

</html>


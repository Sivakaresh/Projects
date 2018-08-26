<%-- 
    Document   : mainClassification
    Created on : 05/08/2018, 2:20:17 PM
    Author     : Sivakaresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>MainClassification</title>
	<link rel="stylesheet" type="text/css" href="tbl.css">
	<link rel="stylesheet" href="assets/demo.css">
	<link rel="stylesheet" href="assets/header-search.css">
	<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="drop.css">

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

		<h1><a href="#">Library<span  style="color:#F05283;">online</span></a></h1>

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
	<h2><a data-toggle="modal" data-target="#myModal">Add</a>
		<a href="">Edit</a>
		<a href="">Search</a>
	</h2>

<table>
	<tr><th>M.C.ID</th><th>M.C.Name</th></tr>
		<tr><td>001</td><td>Engineering</td></tr>
			<tr><td>002</td><td>Medical</td></tr>
</table>
	
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
                                Add 
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form role="form" method="post" id="reused_form" >
                            
                                <div class="form-group">
                                    <label for="name"> Main Classification ID</label>
                                    <input type="text" class="form-control" id="name" name="name" required maxlength="50">
                                
                                <label for="name">Main Classification Name</label>
                                    <input type="text" class="form-control" id="name" name="name" required maxlength="50">
                                
                                </div>
                                
                                <button type="submit" class="btn btn-lg btn-success btn-block" id="btnContactUs">Save </button>
                            </form>
                            <div id="success_message" style="width:100%; height:100%; display:none; "> <h3>Sent your message successfully!</h3> </div>
                            <div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Error</h3> Sorry there was an error sending your form. </div>
                        </div>
                    </div>
                </div>
            </div>
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


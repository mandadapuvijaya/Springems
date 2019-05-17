<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript">
window.history.forward();
</script>
<style>
body {
	background-color: whitesmoke;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}

.sidenav {
	height: 100%;
	width: 201px;
	position: fixed;
	z-index: 1;
	top: 51px;
	left: 3px;
	background-color: #1111112e;
	overflow-x: hidden;
	padding-top: 20px;
}

.sidenav a {
	padding: 24px 6px 9px 32px;
	text-decoration: none;
	font-size: 18px;
	color: black;
	display: block;
	font-variant: petite-caps;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.m {
	margin-left: 1245px;
}

h1 {
	margin-left: 627px;
	margin-top: 225px;
}
.m {
	margin-left: 1245px;
}

</style>
</head>
<body>
 
      <nav class="navbar navbar-inverse">
  <a class="navbar-brand" style="padding-top: 17px;">OpenShop</a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
     <li class="nav-item" style="padding-top: 18px;">
        <a class="nav-link" href="adminhome">Home <span class="sr-only">(current)</span></a>
      </li>
       
       
<li class="nav-item" style="padding-top: 18px;padding-left: 1000px;">
        <a class="nav-link" href="login">Log Out</a>
   </li>       
   
    </ul>
  </div>
</nav>
	<div class="sidenav">
		<a href="vaddproducts">Add Products</a> <a href="vproducts">View
			Products</a>
		
	</div> 
	<div class="main">
	<div class="table table-hover">

		<table class="table table-hover"
			style="margin-left: 238px; width: 121%; max-width: 81%; margin-bottom: 20px;">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">PRODUCTNAME</th>
					<th scope="col">QUANTITY</th>
					<th scope="col">PRICE</th>
					<th scope="col">EMAILID</th>
					<th scope="col">DATE</th>
					<th scope="col">ADDRESS</th>
					
				</tr>
			</thead>

			<c:forEach var="booking" items="${list1}">
				<tr>
					<td>${booking.id}</td>
					<td>${booking.productname}</td>
					<td>${booking.quantity}</td>
					<td>${booking.price}</td>
					<td>${booking.emailid}</td>
					<td>${booking.date}</td>
					<td>${booking.address}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	</div>
	
</body>
</html>
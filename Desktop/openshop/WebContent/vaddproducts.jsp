
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type='text/javascript'
  src='http://code.jquery.com/jquery-1.9.1.js'></script>
<link rel="stylesheet" type="text/css"
  href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type='text/javascript'
  src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" language="javascript">
window.history.forward();
</script>
<script type='text/javascript'>
$(window).load(function(){
    $('#mytext').popover();
});
$(window).load(function(){
    $('#mytext1').popover();
});
$(window).load(function(){
    $('#mytext2').popover();
});

$(window).load(function(){
    $('#mytext3').popover();
});
$(window).load(function(){
    $('#mytext4').popover();
});
$(window).load(function(){
    $('#mytext5').popover();
});

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
	top: 52px;
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
</style>
<!-- <script>
function validation(){
	var x1=document.getElementById("productname").value;
	var x2=document.getElementById("ptype").value;
	var x3=document.getElementById("quantity").value;
	var x4=document.getElementById("description").value;
	var x5=document.getElementById("image").value;
	var x6=document.getElementById("price").value;
	if(x1=="" || x1==null){
		alert("name must not be blank");
		return false;
	}
	if(x1[0]==" "){
		 alert("Name will not allow space at stating position");
		 return false;
	 }
	
	if(x2=="" || x2==null){
		  alert("product type must not be empty");
		  return false;
	  }
	if(x2[0]==" "){
		alert(" product type  will not allow spaces at starting position ");
		return false;
	}
	 
	 if(x3=="" || x3==null){
		  alert("Quantity must not be empty and contains only digits");
		  return false;
	  }
	    if(x3[0]==" "){
			alert(" Quantity will not allow space at starting position");
			return false;
		}
	    if(x4=="" || x4== null){
	    	alert(" Description must not be blank");
	    	return false;
	    	}
	    	
	    	if(x4[0]==" "){
	    		alert(" Description will not allow spaces at starting position ");
	    		return false;
	    	}
	    	if(x5=="" || x5==null){
				alert("image must not be empty");
				return false;
			}
	    	 if(x6=="" || x6== null){
	 	    	alert(" price must not be blank");
	 	    	return false;
	 	    	}
	 	    	
	 	    	if(x6[0]==" "){
	 	    		alert(" price will not allow spaces at starting position ");
	 	    		return false;
	 	    	}
	
}

</script>
 -->
</head>
<body>


	<nav class="navbar navbar-inverse">
		<a class="navbar-brand" style="padding-top: 17px;">OpenShop</a>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item" style="padding-top: 18px;"><a
					class="nav-link" href="vendorhome">Home <span class="sr-only">(current)</span></a>
				</li>


				<li class="nav-item"
					style="padding-top: 18px; padding-left: 1000px;"><a
					class="nav-link" href="login" style="margin-left: 221px;padding-top: 37px;">Log Out</a></li>

			</ul>
		</div>
	</nav>
	<div class="sidenav">
		<a href="vaddproducts">Add Products</a> <a href="vproducts">View
			Products</a>
	</div>
	<div class="main">
		<form style="width: 0px; color: black;" action="add"
			enctype="multipart/form-data" method="post">
			<div class="container"
				style="margin-top: -47px;; margin-left: 512px; margin-right: 359px; width: 412px;">
				<h1
					style="text-align: center; font-variant: petite-caps; font-size: 38px;">Add
					Products</h1>
				<h6>${msg1}</h6>
				<label for="productname"><b>Product Name </b></label> <input id="mytext"
					type="text" placeholder="Example:shirt" name="productname"  data-toggle="popover" data-trigger="hover" data-content="avoid null values and avoid spaces at stating position">
				
				<label for="producttype"><b> Product Type </b></label> <input id="mytext1"
					type="text" placeholder="Example:male clothing,female clothing,electronics,mobiles..etc" name="ptype"  data-toggle="popover" data-trigger="hover" data-content="Describe the type as electronics,furniture,clothings: male or female EXAMPLE:male clothing,female clothing">

				<label for="quantity"><b> Quantity </b></label> <input id="mytext2"
					type="text" placeholder=Example:20 " name="quantity"  data-toggle="popover" data-trigger="hover" data-content="numeric values (eg:1,2,3..) .avoid null values and avoid spaces at stating position"> 
					
				<label for="description"><b> Description </b></label> <input id="mytext3"
					type="text" placeholder="Example:black silk shirt" name="description"  data-toggle="popover" data-trigger="hover" data-content="avoid null values and avoid spaces at stating position">
					
				<label for="image"><b>Image</b></label>
				 <input type="file" id="mytext4"
					placeholder="Image" name="image"  data-toggle="popover" data-trigger="hover" data-content="avoid null values"> <label
					><b>Price</b></label> <input type="text" id="mytext5"
					placeholder="Example:3500" name="price"  data-toggle="popover" data-trigger="hover" data-content="avoid null values and avoid spaces at stating position">



				<button type="submit">submit</button>
			</div>

		</form>
	</div>
</body>
</html>
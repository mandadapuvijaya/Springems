<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript">
window.history.forward();
</script>
<style>
body {
background-color:whitesmoke;
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
    background-color:  #1111112e;
    overflow-x: hidden;
    padding-top: 20px;
}

.sidenav a {
   padding: 24px 6px 9px 32px;
    text-decoration: none;
    font-size: 18px;
    color:  black;
    display: block;
    font-variant: petite-caps;
}

.sidenav a:hover {
    color: #f1f1f1;
}
.m{
    margin-left: 1245px;
}
h1{
margin-left: 627px;
   
    margin-top: 225px;
}
.container-fluid{
margin-top: -24px;}
</style>

</head>
<body>

   <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" style="padding-top: 36px;">OpenShop</a>
          </div>
                 <div class="m">
          <ul class="nav navbar-nav">
              <li><a href="login" style="margin-left: 149px;padding-top: 37px;">Log Out</a></li>
          </ul></div>
        </div>
      </nav> 
      
 <div class="sidenav">
 
		<a href="addvendors">Add Vendors</a> 
		<a href="addproducts">Add Products</a> 
			<a href="vendordetails">Vendor Details</a> 
			<a href="userdetails">User Details</a>
			 <a href="productdetails">Product Details</a>	 
	</div> 
    <div class="main">
    <h1>Admin Home</h1>
    </div>
</body>
</html>
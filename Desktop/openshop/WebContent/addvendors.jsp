<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
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
.m {
	margin-left: 1245px;
}
.navbar-header{

}

</style>
<script type="text/javascript" language="javascript">
window.history.forward();
</script>
<script>
function validation(){
	var x1=document.getElementById("name").value;
	var x2=document.getElementById("vendorid").value;
	var x3=document.getElementById("password").value;
	var x4=document.getElementById("emailid").value;
	var x5=document.getElementById("number").value;
	
	
	if(x1=="" || x1==null){
		alert("name must not be blank");
		return false;
	}
	if(x1[0]==" "){
		 alert("Name will not allow space at stating position");
		 return false;
	 }
	if(x2=="" || x2==null){
		alert("id must not be blank");
		return false;
	}
	if(x2[0]==" "){
		 alert("id will not allow space at stating position");
		 return false;
	 }
	
	if(x3=="" || x3==null){
		  alert("password must not be empty");
		  return false;
	  }
	if(x3[0]==" "){
		alert(" password number will not allow spaces at starting position ");
		return false;
	}
	 if(x3.length <= 6 || x3[0]==" " || x3[1]==" "|| x3[2]==" "|| x3[3]==" "|| x3[4]==" "){
		  alert("Password must be have alteast 7digits and spaces are not allowed");
		  return false;
	  }
	 if(x4=="" || x4==null){
		  alert("emailId must not be empty");
		  return false;
	  }
	 
	  var ad = x4.indexOf("@");
	    var dot = x4.lastIndexOf(".");
	    if (ad<1 || dot<ad+2 || dot+2>=x4.length) {
	        alert("Not a valid emailId");
	        return false;
	    }
	    if(x4[0]==" "){
			alert(" emailId will not allow space at starting position");
			return false;
		}
	    if(x5=="" || x5== null){
	    	alert(" number must not be blank");
	    	return false;
	    	}
	    	if(x5.length!=10){
	    		alert(" number must be exactly 10 digits");
	    		return false;
	    		}
	    	if(x5[0]==" "){
	    		alert(" number will not allow spaces at starting position ");
	    		return false;
	    	}
	    	
	
}

</script>
</head>
<body>
<!-- <nav class="navbar navbar-inverse">
        <div class="container-fluid">
       
          <div class="navbar-header">
            <a class="navbar-brand" style="padding-top: 36px;">OpenShop</a>
          </div>
      
                 <div class="m">
          <ul class="nav navbar-nav">
           <li class="nav-item">
        <a class="nav-link" href="adminhome">home</a>
      </li>
              <li class="nav-item"><a class="nav-link" href="login" style="margin-left: -71px; padding-top: 34px;">Log Out</a></li>
          </ul></div>
           style="padding-top: 43px;

margin-top: -31px;

margin-left: 224px;"


///margin-left: 24px;

padding-top: 12px;
/////

      </nav> -->
      
       <nav class="navbar navbar-inverse">
  <a class="navbar-brand" style="padding-top: 17px;">OpenShop</a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
     <li class="nav-item" style="padding-top: 18px;">
        <a class="nav-link" href="adminhome">Home <span class="sr-only">(current)</span></a>
      </li>
       
       
<li class="nav-item" style="padding-top: 18px;padding-left: 1000px;">
        <a class="nav-link" href="login" style="margin-left: 221px;padding-top: 37px;">Log Out</a>
   </li>       
   
    </ul>
  </div>
</nav>
      
<div class="sidenav">
		<a href="addvendors" class="active">Add Vendors</a> 
		<a href="addproducts">Add Products</a> 
			<a href="vendordetails">Vendor Details</a> 
			<a href="userdetails">User Details</a>
			 <a href="productdetails">Product Details</a>
			
	</div> 
<div class="main">
<form style = "width:0px; color: black;" action="vendorreg" method="post" onsubmit="return validation()">
  <div class="container" style="margin-top: -47px;; margin-left: 473px; margin-right: 359px; width: 412px; ">
        <h1 style="text-align: center;font-variant: petite-caps;  font-size: 38px;">Vendor Registration</h1>
        <h6>${msg}</h6>
         <label for="uname"><b> Vendor Name </b></label>
    <input type="text" placeholder="Example:ananthasai" name="name" id="name">

    <label for="uname"><b> Vendor Id </b></label>
    <input type="text" placeholder="Example:v1" name="vendorid" id="vendorid">

    <label for="psw"><b> Password </b></label>
    <input type="password" placeholder="sai1234" name="password" id="password">

    <label for="EmailId"><b>EmailId</b></label>
    <input type="text" placeholder="Example:sai@gmail.com" name="emailid" id="emailid">

    <label for="Phone Number"><b>PhoneNumber</b></label>
    <input type="text" placeholder="Example:9245866789" name="number" id="number">

    
    <button type="submit">submit</button>
  </div>
  
</form>
</div>
</body>
</html>
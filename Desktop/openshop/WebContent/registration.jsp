<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" language="javascript">
window.history.forward();
</script>
<style>
body {


    font-family: Arial, Helvetica, sans-serif;
   
    
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
</style>
<script>
function validation(){
	var x1=document.getElementById("username").value;
	var x2=document.getElementById("password").value;
	var x3=document.getElementById("emailid").value;
	var x4=document.getElementById("phonenumber").value;
	var x5=document.getElementById("address").value;
	
	if(x1=="" || x1==null){
		alert("name must not be blank");
		return false;
	}
	if(x1[0]==" "){
		 alert("Name will not allow space at stating position");
		 return false;
	 }
	
	if(x2=="" || x2==null){
		  alert("password must not be empty");
		  return false;
	  }
	if(x2[0]==" "){
		alert(" password number will not allow spaces at starting position ");
		return false;
	}
	 if(x2.length <= 6 || x2[0]==" " || x2[1]==" "|| x2[2]==" "|| x2[3]==" "|| x2[4]==" "){
		  alert("Password must be have alteast 7digits and spaces are not allowed");
		  return false;
	  }
	 if(x3=="" || x3==null){
		  alert("emailId must not be empty");
		  return false;
	  }
	 
	  var ad = x3.indexOf("@");
	    var dot = x3.lastIndexOf(".");
	    if (ad<1 || dot<ad+2 || dot+2>=x3.length) {
	        alert("Not a valid emailId");
	        return false;
	    }
	    if(x3[0]==" "){
			alert(" emailId will not allow space at starting position");
			return false;
		}
	    if(x4=="" || x4== null){
	    	alert(" number must not be blank");
	    	return false;
	    	}
	    	if(x4.length!=10){
	    		alert(" number must be exactly 10 digits");
	    		return false;
	    		}
	    	if(x4[0]==" "){
	    		alert(" number will not allow spaces at starting position ");
	    		return false;
	    	}
	    	if(x5=="" || x5==null){
				alert("address must not be blank");
				return false;
			}
			if(x5[0]==" "){
				 alert("address will not allow space at stating position");
				 return false;
			 }
	
}

</script>
</head>
<body background="../images/shop1.jpg" style="margin-right: -1px;padding-left:2px ">

<form style = "width:0px; color: oldlace;" action="register" method="post" onsubmit="return validation()">
  <div class="container" style="margin-top: 25px; margin-left: 885px; margin-right: 359px; width: 412px; ">
        <h1 style="text-align: center;font-variant: petite-caps;  font-size: 38px;">Registration</h1>
        <h2>${msg1}</h2>
         <label for="uname"><b> Username </b></label>
    <input type="text" placeholder="Example:ananthsai" name="username" id="username" >

    <label for="psw"><b>Password </b></label>
    <input type="password" placeholder="Example:sai1234" name="password" id="password" >

    <label for="EmailId"><b>EmailId</b></label>
    <input type="text" placeholder="Example:sai@gmail.com" name="emailid" id="emailid" id="emailid" >

    <label for="Phone Number"><b>PhoneNumber</b></label>
    <input type="text" placeholder="Example:9245867999" name="phonenumber" id="phonenumber">

    <label for="Address"><b>Address</b></label>
    <input type="text" placeholder="Example:shiva residency,flat no-121,srihari nagar,hyderabad" name="address" id="address" >
        
    <button type="submit">submit</button>

    <a href="login.jsp" class="btn btn-info" role="button" style="color: aliceblue;margin-left: 319px;">Back</a>
 
     </div>

  
</form>

</body>
</html>
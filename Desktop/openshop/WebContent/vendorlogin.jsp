<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
</head>
<body background="../images/shop1.jpg" style="margin-right: -1px;">

<form action="login1" method="post" style= "width:0px; color: oldlace;">
  <div class="container" style="margin-top: 84px; margin-left: 885px; margin-right: 359px; width: 412px; ">
        <h1 style="text-align: center;font-variant: petite-caps;  font-size: 38px;">Come In</h1>
        <h2>${msg}</h2>
         <label for="uname"><b> Username </b></label>
    <input type="text" placeholder="Example:ananthasai" name="username" required>
    
	<label for="psw"><b>VendorId </b></label>
    <input type="text" placeholder="Example:v1" name="vendorid" required>
        
    <label for="psw"><b>Password </b></label>
    <input type="password" placeholder="Example:sai1234" name="password" required>
        
    <button type="submit">Login</button>
   
    
	 <a href="login.jsp" class="btn btn-info" role="button" style="color: aliceblue;">Back</a>
 
 
     </div>

  
</form>

</body>
</html>
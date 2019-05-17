<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Credit Card Validation Demo</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href=".\styles\styles.css">
    <link rel="stylesheet" type="text/css" href=".\styles\demo.css">
    
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
    $('#owner').popover();
});
$(window).load(function(){
    $('#cvv').popover();
});
$(window).load(function(){
    $('#cardnumber').popover();
});


</script>
   <style>
   .creditCardForm {
    max-width: 831px;
    background-color: #fff;
    margin: 50px auto;
    overflow: hidden;
    padding: 25px;
    color: #4c4e56;
}
   
   </style> 
</head>

<body>

<nav class="navbar navbar-inverse">
		<a class="navbar-brand" style="padding-top: 17px;">OpenShop</a>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item" style="padding-top: 18px;"><a
					class="nav-link" href="userhome">Home <span class="sr-only">(current)</span></a>
				</li>


				<li class="nav-item"
					style="padding-top: 18px; padding-left: 1000px;"><a
					class="nav-link" href="login">Log Out</a></li>

			</ul>
		</div>
	</nav>

    <div class="container-fluid">
        <div class="creditCardForm">
            <div class="heading">
                <h1>Confirm Purchase</h1>
            </div>
            <h3>${msg}</h3>
            <div class="payment">
                <form action="conformbooking">
                    <div class="form-group owner">
                        <label for="owner">Owner</label>
                        <input type="text" class="form-control" id="owner" data-toggle="popover" data-trigger="hover" data-content="name of the buyer" required>
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv" data-toggle="popover" data-trigger="hover" data-content="3 digit number on your card" required>
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Card Number</label>
                        <input type="text" class="form-control" id="cardnumber" data-toggle="popover" data-trigger="hover" data-content="16 digits card number" required>
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Expiration Date</label>
                        <select>
                            <option value="01">January</option>
                            <option value="02">February </option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">August</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                        <select>
                            <option value="16"> 2016</option>
                            <option value="17"> 2017</option>
                            <option value="18"> 2018</option>
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                        </select>
                    </div>
                    <div class="form-group" id="credit_cards">
                        <img src=".\images\visa.jpg" id="visa">
                        <img src=".\images\mastercard.jpg" id="mastercard">
                        <img src=".\images\amex.jpg" id="amex">
                    </div>
                    <div class="form-group" id="pay-now">
                   
                        <button type="submit" class="btn btn-default" id="confirm-purchase">Confirm</button>
      
                    </div>
                </form>
            </div>
        </div>

        
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src=".\js\jquery.payform.min.js" charset="utf-8"></script>
    <script src=".\js\script.js"></script>
</body>


</html>
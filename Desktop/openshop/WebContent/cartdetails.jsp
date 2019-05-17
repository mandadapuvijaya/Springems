<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

.icon {
	height: 10px;
	width: 19px;
}

.b1 {
	background-color: white;
	color: black;
	padding-top: 0px;
	margin: -4px;
}

.btn {
	background-color: white;
	color: black;
}

.img {
	width: 155px;
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
					class="nav-link" href="login" style="margin-left: 221px;padding-top: 37px;">Log Out</a></li>

			</ul>
		</div>
	</nav>
	<div class="sidenav">
		<a href="myorders">MyOrders</a> <a href="cartdetails">MyCart</a>
	</div>
	<div class="row">
		<div class="table table-hover">

			<table class="table table-hover"
				style="margin-left: 238px; width: 121%; max-width: 81%; margin-bottom: 20px;">
				<h3 style="margin-left: 600px;">${msg}</h3>
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">IMAGE</th>
						<th scope="col">PRODUCTNAME</th>
						<th scope="col">PRICE</th>
						<th scope="col">DESCRIPTION</th>

					</tr>
				</thead>

				<c:forEach var="cart" items="${list}">
					<tr>
						<form action="productsdetail">
							<input type="hidden" name="id" value="${cart.id}">
						</form>
						<td>${cart.id}</td>
						<td><img src="./product/image/${cart.id}" alt="image"
							style="width: 144px;"></td>
						<td>${cart.productname}</td>
						<td>${cart.price}</td>
						<td>${cart.description}</td>
						<!-- <td><input type="submit" class="btn active btn-info btn-lg"
							value="Buy" style="width: 124px; height: 34px; padding: 5px;"
							data-toggle="modal" data-target="#myModal"></td> -->
						<td><form action="delete">
								<input type="hidden" name="id" value="${cart.id}">
								<button class="b1" type="submit">
									<span class="glyphicon glyphicon-trash icon"></span>
								</button>
							</form></td>
					</tr>

				</c:forEach>

			</table>

			<%-- <div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">

							<h4 class="modal-title">Selected Product Description</h4>

						</div>
						 
						<form action="buy" method="post">
							<h4 style="margin-left: 600px;">${msg2}</h4>
							<div class="modal-body">

								<table id="classTable" class="table table-bordered">
									
										<tbody>
											<tr>
												<td>Product-Name:</td>
												<td><input type="text" value="${product.productname }"
													name="productname"></td>
											</tr>
											<tr>
												<td>Product-Type:</td>
												<td><input type="text" value="${product.ptype } "
													name="ptype"></td>
											</tr>
											<tr>
											<td>Price:</td>
											<td><input type="text" value="${product.price }"
												name="price"></td>
											</tr>
											<tr>
												<td>Quantity:</td>
												<td><input type="text"
													placeholder="${product.quantity } " name="quantity"></td>
											</tr>
											<tr>
												<td>Description:</td>
												<td><input type="text" value=" ${product.description }"
													name="description"></td>
											</tr>
											<tr>
												<td>Address:</td>
												<td><input type="text" name="address"></td>
											</tr>
											<tr>
												<td>Emailid:</td>
												<td><input type="email" name="emailid"></td>
											</tr>
											<tr>
												<td>Size:</td>
												<td><select class="form-control" name="size">
														<option value="0">select size</option>
														<option value="XS">XS</option>
														<option value="S">S</option>
														<option value="M">M</option>
														<option value="L">L</option>
														<option value="XL">XL</option>
														<option value="XXL">XXL</option>
														<option value="XXXL">XXXL</option>
												</select></td>
											</tr>
										</tbody>
									
								</table>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary b1"
									data-dismiss="modal">Close</button>
								<button type="submit" class="btn active  "
									style="width: 138px; height: 34px; padding: 5px;">Conform
									Booking</button>
							</div>
						</form>
					
					</div>

				</div>
			</div>
 --%>
		</div>

	</div>

	<!-- <script>
		filterSelection("all")
		function filterSelection(c) {
			var x, i;
			x = document.getElementsByClassName("column");
			if (c == "all")
				c = "";
			for (i = 0; i < x.length; i++) {
				w3RemoveClass(x[i], "show");
				if (x[i].className.indexOf(c) > -1)
					w3AddClass(x[i], "show");
			}
		}

		function w3AddClass(element, name) {
			var i, arr1, arr2;
			arr1 = element.className.split(" ");
			arr2 = name.split(" ");
			for (i = 0; i < arr2.length; i++) {
				if (arr1.indexOf(arr2[i]) == -1) {
					element.className += " " + arr2[i];
				}
			}
		}

		function w3RemoveClass(element, name) {
			var i, arr1, arr2;
			arr1 = element.className.split(" ");
			arr2 = name.split(" ");
			for (i = 0; i < arr2.length; i++) {
				while (arr1.indexOf(arr2[i]) > -1) {
					arr1.splice(arr1.indexOf(arr2[i]), 1);
				}
			}
			element.className = arr1.join(" ");
		}

		// Add active class to the current button (highlight it)
		var btnContainer = document.getElementById("myBtnContainer");
		var btns = btnContainer.getElementsByClassName("btn");
		for (var i = 0; i < btns.length; i++) {
			btns[i].addEventListener("click", function() {
				var current = document.getElementsByClassName("active");
				current[0].className = current[0].className.replace(" active",
						"");
				this.className += " active";
			});
		}
	</script>
 -->

</body>
</html>
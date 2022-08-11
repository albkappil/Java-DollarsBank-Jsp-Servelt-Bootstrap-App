<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up at DollarsBank</title>
<style>
.btn-secondary {
    color: #fff;
    background-color: #6c757d;
    border-color: #6c757d;
}
.btn {
    display: inline-block;
    text-align: left;
    white-space: nowrap;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    font-size: 1rem;
    line-height: 1.5;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}


</style>
<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up For DollarsBank</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="uname"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Fullname" />
							</div>
							<div class="form-group">
								<label for="address"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="address" id="address"
									placeholder="Address Field" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="tel" name="contact" id="contact"
									placeholder="Contact Number" />
							</div>
							<div class="form-group">
								<label for="uname"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="uname" id="uname" placeholder="Username" />
							</div>
							<button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="right" 
									title="Secure Password Requirements: 
									Password must contain at least one digit [0-9],
									at least one lowercase Latin character [a-z],
									at least one uppercase Latin character [A-Z],
									at least one special character like ! @ # & ( ),
									a length of at least 8 characters and a maximum of 20 characters." style=display:inline-block>	Show Password requirements
								</button>
							<div class="form-group">
									<label for="pass"><i class="zmdi zmdi-lock"></i></label> 							
		  							<input type="password" class="btn" name="pass" id="pass" placeholder="Password" />
							</div>
							
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Re-Enter your password" />
							</div>
							<div class="form-group">
								<label for="initialDA"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="number" step="0.01" name="initialDA" id="initialDA"
									placeholder="Enter initial Desposit Amount" />
							</div>
							
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats","Account Created Sucessfully", "success");
	} else if (status == "mismatch"){
		swal("Password Don't Match.", "Please Try Again","error");
	} else if (status == "badPass"){
		swal("Password Format Invaild.", "Please Try Again","error");
	} else if (status == "notPhoneNum"){
		swal("Must be a Phone Number.", "Please Try Again","error");
	} else if (status == "error"){
		swal("No input in one or more fields.", "Please Try Again","error");
	}

	</script>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
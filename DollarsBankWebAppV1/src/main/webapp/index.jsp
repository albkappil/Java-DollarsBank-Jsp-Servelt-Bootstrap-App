<%
	if(session.getAttribute("name") == null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>DollarsBank Home page</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">$DollarsBank$</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#tOptions">Transaction Options</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="UserProfile"><%=session.getAttribute("name")%></a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Logout">Logout</a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/bank-building.jpg"
				alt="..." />
			<!-- Masthead Heading-->
			<h2 class="masthead-heading text-uppercase mb-0">$Welcome To DollarsBank$</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">WE KEEP YOUR MONEY SAFE!</p>
		</div>
	</header>
	<!-- tOptions Section-->
	<section class="page-section tOptions" id="tOptions">
		<div class="container">
			<!-- tOptions Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Transaction Options</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- tOptions Grid Items-->
			<div class="row justify-content-center">
				<!-- tOptions Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="tOptions-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#tOptionsModal1">
						<div
							class="tOptions-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="tOptions-item-caption-content text-center text-white">
								<i class="T-options-text">Current Balance</i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/options/Balance.jpg"
							alt="..." />
					</div>
				</div>
				<!-- tOptions Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="tOptions-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#tOptionsModal2">
						<div
							class="tOptions-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="tOptions-item-caption-content text-center text-white">
								<i class="T-options-text">Deposit</i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/options/Deposit.png"
							alt="..." />
					</div>
				</div>
				<!-- tOptions Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="tOptions-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#tOptionsModal3">
						<div
							class="tOptions-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="tOptions-item-caption-content text-center text-white">
								<i class="T-options-textx">Withdraw</i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/options/withdraw.jpg"
							alt="..." />
					</div>
				</div>
				<!-- tOptions Item 4-->
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="tOptions-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#tOptionsModal4">
						<div
							class="tOptions-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="tOptions-item-caption-content text-center text-white">
								<i class="T-options-text">Transfer</i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/options/transfer.jpg"
							alt="..." />
					</div>
				</div>
				<!-- tOptions Item 5-->
				<div class="col-md-6 col-lg-4 mb-5 mb-md-0">
					<div class="tOptions-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#tOptionsModal5">
						<div
							class="tOptions-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="tOptions-item-caption-content text-center text-white">
								<i class="T-options-text">Recent Transactions</i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/options/THistory.jpg"
							alt="..." />
					</div>
				</div>
				<!-- tOptions Item 6-->
				<div class="col-md-6 col-lg-4">
					<div class="tOptions-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#tOptionsModal6">
						<div
							class="tOptions-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="tOptions-item-caption-content text-center text-white">
								<i class="T-options-text">Add New Savings Account</i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/options/addSavingAccount.png"
							alt="..." />
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div >
					<p class="lead">
					DollarsBank is a well Trusted Bank for Family and Businesses to handle the money. 
					You can View your Balance, Make deposits, make withdrawals, make transfer between 
					accounts, view last 5 transaction and lastly add more savings accounts.</p>	
				</div>
			</div>
			<!-- About Section Button-->
			<div class="text-center mt-4">
				<a class="btn btn-xl btn-outline-light"
					href="https://startbootstrap.com/theme/freelancer/"> <i
					class="fas fa-download me-2"></i> Free Download!
				</a>
			</div>
		</div>
	</section>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Me</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" data-sb-form-api-token="API_TOKEN">
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="name">Full name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<!-- Email address input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="email" type="email"
								placeholder="name@example.com"
								data-sb-validations="required,email" /> <label for="email">Email
								address</label>
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<!-- Phone number input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="tel"
								placeholder="(123) 456-7890" data-sb-validations="required" />
							<label for="phone">Phone number</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">A
								phone number is required.</div>
						</div>
						<!-- Message input-->
						<div class="form-floating mb-3">
							<textarea class="form-control" id="message" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="message">Message</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<!-- Submit Button-->
						<button class="btn btn-primary btn-xl disabled" id="submitButton"
							type="submit">Send</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						2215 John Daniel Drive <br /> Clark, MO 65243
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Freelancer</h4>
					<p class="lead mb-0">
						Freelance is a free to use, MIT licensed Bootstrap theme created
						by <a href="http://startbootstrap.com">Start Bootstrap</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2021</small>
		</div>
		
		
	</div>
	<!-- tOptions Modals-->
	<!-- tOptions Modal 1-->
	
	<input type="hidden" id="balance" value="<%= request.getAttribute("balance") %>">
	<input type="hidden" id="sAId" value="<%= request.getAttribute("sAId") %>">
	<input type="hidden" id="statusB" value="<%= request.getAttribute("statusB") %>">
	<div class="tOptions-modal modal fade" id="tOptionsModal1"
		tabindex="-1" aria-labelledby="tOptionsModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- tOptions Modal - Title-->
								<h2
									class="tOptions-modal-title text-secondary text-uppercase mb-0">Current Account Balance by ID</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- tOptions Modal - Image-->
								<img class="img-fluid rounded" style= max-width:50%
									src="assets/img/options/Balance.jpg" alt="..." />
									<form method="post" action="SABalance" class="balance-form"
										id="balance-form">
										<h3>Enter the ID of Saving Account to Check the Balance</h3>
										<div class="form-group">
											<label for="sAId"><i
												class="zmdi zmdi-account material-icons-name"></i></label> <input
												type="number" name="sAId" id="sAId"
												placeholder="Saving Account ID" />
										</div>
										<div class="form-group form-button">
											<input type="submit"  name="checkBalance" id="signup"
												class="form-submit">
										</div>
									</form>																			
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	var statusB = document.getElementById("statusB").value;
	if( statusB == "doesNotExist" ){
		swal("ID does not Exit.","Please Try Again","error");
	}
	else if( statusB == "error" ){
		swal("Must have Input.","Please Try Again","error");
	}else{
		var balance = document.getElementById("balance").value;
		var sAId  = document.getElementById("sAId").value;
		if( balance != null && balance != "null"){
			swal("Savings Account "+ sAId + " Balance: " + balance,"");
		}
	}

	
	</script>
	
	<input type="hidden" id="statusD" value="<%= request.getAttribute("statusD") %>">
	<!-- tOptions Modal 2-->
	<div class="tOptions-modal modal fade" id="tOptionsModal2"
		tabindex="-1" aria-labelledby="tOptionsModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- tOptions Modal - Title-->
								<h2
									class="tOptions-modal-title text-secondary text-uppercase mb-0">Deposit Money</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- tOptions Modal - Image-->
								<img class="img-fluid rounded mb-5" style= max-width:50%
									src="assets/img/options/Deposit.png" alt="..." />
								<!-- tOptions Modal - Image-->
									<form method="post" action="DepositS" class="deposit-form"
										id="deposit-form">
										<h3>Enter the ID of Saving Account for Deposit</h3>
										<div class="form-group">
											<label for="sAId"><i
												class="zmdi zmdi-account material-icons-name"></i></label> <input
												type="number" name="sAId" id="sAId"
												placeholder="Saving Account ID" />
										</div>
										<h3>Enter the Deposit Amount</h3>
										<div class="form-group">
											<label for="depositAmt"><i
												class="zmdi zmdi-account material-icons-name"></i></label> <input
												type="number" step="0.01" name="depositAmt" id="depositAmt"
												placeholder="Deposit Amount" />
										</div>
										<div class="form-group form-button">
											<input type="submit"  name="checkBalance" id="signup"
												class="form-submit">
										</div>
									</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	var statusD = document.getElementById("statusD").value;
	if(statusD == "success"){
		swal("Congrats", "Deposit was Successful", "success");
	}
	if(statusD == "error"){
		swal("Deposit Failed", "Please Try Again", "error");
	}
	if( statusD == "doesNotExist" ){
		swal("ID does not Exit.","Please Try Again","error");
	}
	
	</script>
	
	<input type="hidden" id="statusW" value="<%= request.getAttribute("statusW") %>">
	<!-- tOptions Modal 3-->
	<div class="tOptions-modal modal fade" id="tOptionsModal3"
		tabindex="-1" aria-labelledby="tOptionsModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- tOptions Modal - Title-->
								<h2
									class="tOptions-modal-title text-secondary text-uppercase mb-0">Withdraw Money</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- tOptions Modal - Image-->
								<img class="img-fluid rounded mb-5" style= max-width:50%
									src="assets/img/options/withdraw.jpg" alt="..." />
								<!-- tOptions Modal - Text-->	
									<form method="post" action="WithdrawS" class="withdraw-form"
									id="withdraw-form">
									<h3>Enter the ID of Saving Account for Withdrawal</h3>
									<div class="form-group">
										<label for="sAId"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="number" name="sAId" id="sAId"
											placeholder="Saving Account ID" />
									</div>
									<h3>Enter the Withdrawal Amount</h3>
									<div class="form-group">
										<label for="withdrawAmt"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="number" step="0.01" name="withdrawAmt" id="withdrawAmt"
											placeholder="Withdraw Amount" />
									</div>
									<div class="form-group form-button">
											<input type="submit"  name="checkBalance" id="signup"
												class="form-submit">
										</div>
								</form>									
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var statusW = document.getElementById("statusW").value;
	if(statusW == "success"){
		swal("Congrats", "Withdrawal was Successful", "success");
	}
	if(statusW == "error"){
		swal("Withdraw Failed", "Please Try Again", "error");
	}
	if( statusW == "doesNotExist" ){
		swal("ID does not Exit.","Please Try Again","error");
	}
	</script>
	
	<input type="hidden" id="statusT" value="<%= request.getAttribute("statusT") %>">
	
	
	<!-- tOptions Modal 4-->
	<div class="tOptions-modal modal fade" id="tOptionsModal4"
		tabindex="-1" aria-labelledby="tOptionsModal4" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- tOptions Modal - Title-->
								<h2
									class="tOptions-modal-title text-secondary text-uppercase mb-0">Transfer Money</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- tOptions Modal - Image-->
								<img class="img-fluid rounded mb-5" style= max-width:50%
									src="assets/img/options/transfer.jpg" alt="..." />
								<!-- tOptions Modal - Text-->		
								<form method="post" action="TransferS" class="withdraw-form"
									id="withdraw-form">
									<h3>Enter the ID of User Account to Transfer To</h3>
									<div class="form-group">
										<label for="aIdTo"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="number" name="aIdTo" id="aIdTo"
											placeholder="Account ID To" />
									</div>
									<h3>Enter the ID of Saving Account to Transfer To</h3>
									<div class="form-group">
										<label for="sAIdTo"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="number" name="sAIdTo" id="sAIdTo"
											placeholder="Saving Account ID To" />
									</div>	
									<h3>Enter the ID of Saving Account to Transfer From</h3>
									<div class="form-group">
										<label for="sAIdFrom"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="number" name="sAIdFrom" id="sAIdFrom"
											placeholder="Saving Account ID From" />
									</div>
									<h3>Enter the Transfer Amount</h3>
									<div class="form-group">
										<label for="transferAmt"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="number" step="0.01" name="transferAmt" id="transferAmt"
											placeholder="Transfer Amount" />
									</div>
									<div class="form-group form-button">
											<input type="submit"  name="checkBalance" id="signup"
												class="form-submit">
										</div>
								</form>	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var statusT = document.getElementById("statusT").value;
	if(statusT == "success"){
		swal("Congrats"," Transfer was Successful", "success");
	}
	if(statusT   == "error"){
		swal("Transfer Failed", "Please Try Again", "error");
	}
	if( statusT == "doesNotExist" ){
		swal("ID does not Exit.","Please Try Again","error");
	}
	</script>
	
	<input type="hidden" id="statusTH" value="<%= request.getAttribute("statusTH") %>">
	<input type="hidden" id="listTH" value="<%= request.getAttribute("listTH") %>">
	<!-- tOptions Modal 5-->
	<div class="tOptions-modal modal fade" id="tOptionsModal5"
		tabindex="-1" aria-labelledby="tOptionsModal5" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- tOptions Modal - Title-->
								<h2
									class="tOptions-modal-title text-secondary text-uppercase mb-0">View Last 5 Transactions</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- tOptions Modal - Image-->
								<img class="img-fluid rounded mb-5" style= max-width:50%
									src="assets/img/options/THistory.jpg" alt="..." />
								<!-- tOptions Modal - Text-->
								<form method="post" action="THistoryS" class="thistory-form"
									id="thistory-form">
									<h3>Enter the ID of Saving Account to view 5 recent transactions</h3>
									<div class="form-group">
										<label for="sAId"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="number" name="sAId" id="sAId"
											placeholder="Saving Account ID" />
									</div>	
									<div class="form-group form-button">
											<input type="submit"  name="tHistory" id="thistory"
												class="form-submit">
									</div>						
								</form>	
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var statusTH = document.getElementById("statusTH").value;
		if(statusTH   == "error"){
			swal("Transfer Failed", "Please Try Again", "error");
		}
		else if( statusTH == "doesNotExist" ){
			swal("ID does not Exit.","Please Try Again","error");
		}else if( statusTH == "error"){
			swal("Transation History Failed", "Please Try Again", "error");
		}else{
			var listTH = document.getElementById("listTH").value;
			var i = listTH.length;
			console.log(i + " " + listTH)
			if(listTH != "null"){
			swal("Last 5 Transactions: ", listTH);
			}
		
		}
		
	</script>
	
	
	
	<input type="hidden" id="statusA" value="<%= request.getAttribute("statusA") %>">
	<!-- tOptions Modal 6-->
	<div class="tOptions-modal modal fade" id="tOptionsModal6"
		tabindex="-1" aria-labelledby="tOptionsModal6" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- tOptions Modal - Title-->
								<h2
									class="tOptions-modal-title text-secondary text-uppercase mb-0">Add New Saving Account</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- tOptions Modal - Image-->
								<img class="img-fluid rounded mb-5" style= max-width:50%
									src="assets/img/options/addSavingsAccount.png" alt="..." />
								<!-- tOptions Modal - Text-->
								<form method="post" action="AddSAccountS" class="addsaccount-form"
									id="addsaccount-form">
									<h3>Enter Initial Deposit Amount for New Savings Account</h3>
									<div class="form-group">
										<label for="sAId"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="number" step="0.01" name="initialDA" id="initialDA"
											placeholder="Enter Initial Deposit Amount" />
									</div>	
									<div class="form-group form-button">
											<input type="submit"  name="addsaccount" id="addsaccount"
												class="form-submit">
									</div>						
								</form>	
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var statusA = document.getElementById("statusA").value;
	if(statusA == "success"){
		swal("Congrats","Account was Successfully Added", "success");
	}
	if(statusA   == "error"){
		swal("Add Account Failed", "Please Try Again", "error");
	}
	if( statusA == "doesNotExist" ){
		swal("ID does not Exit.","Please Try Again","error");
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
</html>

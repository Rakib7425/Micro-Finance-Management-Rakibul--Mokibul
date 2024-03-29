<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

	<title>Micro Finance Management System - By Rakibul & Mokibul</title>


	<?php include('./header.php'); ?>
	<?php include('./db_connect.php'); ?>
	<?php

	// it should be changed  ( Uncomment this && Header files links also)

	// session_start();   // ? For Checking Working or Not


	if (isset($_SESSION['login_id']))
		header("location:index.php?page=home");

	?>

</head>
<style>
	body {
		width: 100%;
		height: calc(92%);
		/* background: #007bff; */
	}

	main#main {
		width: 100%;
		height: calc(100%);
		background: white;
	}

	#login-left {
		position: absolute;
		right: 0;
		width: 60%;
		height: calc(92%);
		background: #00ff70;
		display: flex;
		align-items: center;
		background: url(assets/img/loan.png);
		background-repeat: no-repeat;
	}

	#login-right {
		position: absolute;
		left: 0;
		width: 40%;
		height: calc(92%);
		background: #59b6ec61;
		display: flex;
		align-items: center;
		background-size: cover;
	}

	#login-right .card {
		margin: auto;
		z-index: 1
	}

	.logo {
		margin: auto;
		font-size: 8rem;
		/* background: url(assets/img/logo.png); */
		background-repeat: no-repeat;
		align-items: center;
		justify-content: center;
		display: flex;
		height: 200px;
		padding: .5em 0.7em;
		border-radius: 50% 50%;
		color: #000000b3;
		z-index: 10;
	}

	div#login-right::before {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		width: calc(100%);
		height: calc(100%);
		background: #8a25cf;
	}

	.bg-info {
		background-color: #00dcff !important;
	}
</style>

<body>


	<main id="main" class=" bg-info">
		<h1>Micro Finance Management System - By Rakibul & Mokibul</h1>
		<div id="login-left">
		</div>

		<div id="login-right">
			<div class="card col-md-8 bg-info">
				<div class="card-body">
					<div class="logo">
						<img src="assets/img/logo.png" alt="Logo">
						<!-- <span class="fa fa-money-check-alt"></span>  -->
					</div>
					<form id="login-form">
						<div class="form-group">
							<label for="username" class="control-label">Username</label>
							<input type="text" id="username" name="username" class="form-control" placeholder="username - rakib@bbkc.com">
							<!-- value="rakib@bbkc.com" -->
						</div>
						<div class="form-group">
							<label for="password" class="control-label">Password</label>
							<input type="password" id="password" name="password" class="form-control" placeholder="password - rakib@bbkc.com">
							<!-- value="rakib@bbkc.com" -->
						</div>
						<center><button class="btn-sm btn-block btn-wave col-md-4 btn-warning">Login</button></center>
						<div style="margin-top:30px">
							<span>Username- rakib@bbkc.com</span> <br>
							<span>Password- rakib@bbkc.com</span>
						</div>
					</form>
				</div>
			</div>
		</div>


	</main>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>


</body>
<script>
	$('#login-form').submit(function(e) {
		e.preventDefault()
		$('#login-form button[type="button"]').attr('disabled', true).html('Logging in...');
		if ($(this).find('.alert-danger').length > 0)
			$(this).find('.alert-danger').remove();
		$.ajax({
			url: 'ajax.php?action=login',
			method: 'POST',
			data: $(this).serialize(),
			error: err => {
				console.log(err)
				$('#login-form button[type="button"]').removeAttr('disabled').html('Login');

			},
			success: function(resp) {
				if (resp == 1) {
					location.href = 'index.php?page=home';
				} else if (resp == 2) {
					location.href = 'voting.php';
				} else {
					$('#login-form').prepend('<div class="alert alert-danger">Username or password is incorrect.</div>')
					$('#login-form button[type="button"]').removeAttr('disabled').html('Login');
				}
			}
		})
	})
</script>

</html>
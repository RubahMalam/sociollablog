<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="utf-8">	
	<title>Register</title>
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/loginform/css/style.css">
		<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
	</head>
	<body>
		<div id="main" class="container"> 	
			<form name="loginform" id="loginform" action="<?php echo base_url('user/register');?>" method="POST" class="wpl-track-me">
			<?php echo validation_errors();?>
				<p class="login-username">
					<label for="user_login">Username</label>
					<input type="text" name="username" class="input" placeholder="Username" value="" size="20"/>
				</p> 
				<p class="login-password"> 
					<label for="user_pass">Password</label>
					<input type="password" name="password" id="user_pass" class="input" placeholder="Password" value="" size="20" /> 
				</p> 

				<p class="login-submit"><input type="submit" name="Register" id="register" class="button-primary" value="Register" />
					<input type="hidden" name="redirect_to" value="#"/>
				</p>			
			</form>
		</div>
	</body>
</html>
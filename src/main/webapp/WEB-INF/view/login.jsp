
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Log in</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="static/js/jquery.validate.min.js"></script>


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="static/css/sweetalert2.min.css">
<!-- Toastr -->
<link rel="stylesheet" href="static/css/toastr.min.css">
<!-- Theme style -->



<!-- Font Awesome -->
<link rel="stylesheet" href="static/css/all.min.css">
<!-- Ionicons -->

<!-- icheck bootstrap -->
<link rel="stylesheet" href="static/css/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="static/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<style>
@font-face {
	font-family: 'Glyphicons Halflings';
	src:
		url('//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/fonts/glyphicons-halflings-regular.eot');
	src:
		url('//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/fonts/glyphicons-halflings-regular.eot?#iefix')
		format('embedded-opentype'),
		url('//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/fonts/glyphicons-halflings-regular.woff2')
		format('woff2'),
		url('//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/fonts/glyphicons-halflings-regular.woff')
		format('woff'),
		url('//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/fonts/glyphicons-halflings-regular.ttf')
		format('truetype'),
		url('//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular')
		format('svg');
}

.glyphicon {
	position: relative;
	top: 1px;
	display: inline-block;
	font: normal normal 16px/1 'Glyphicons Halflings';
	-moz-osx-font-smoothing: grayscale;
	-webkit-font-smoothing: antialiased;
	margin-right: 4px;
}
/* Add icons you will be using below */
.glyphicon-user:before {
	content: '\e008';
}

.glyphicon-lock:before {
	content: '\1f512';
}
</style>
<body>
	<input type="hidden" name="id" value="${user.id }" />


	<div class="hold-transition login-page">
		<c:choose>
			<c:when test="${mode=='MODE_LOGIN' }">
				<div class="login-box" style="margin-left:1%" >
					<div class="login-logo" >
						<h3>
							<b>Login</b>
						</h3>
					</div>
					<!-- /.login-logo -->
					<div class="card" style="width:400px;height:300px">
						<div class="card-body login-card-body">
							<p class="login-box-msg">Sign in to start your session</p>
							<c:if test="${not empty error }">
								<div class="alert alert-danger alert-dismissible">
								<button type="button" class="close" data-dismiss="alert"
									aria-hidden="true">&times;</button>
									<c:out value="${error }"></c:out>
								</div>
							</c:if>
							<form action="/login-user" method="post" role="form"
								id="quickForm">
								<div class="input-group mb-3">
									<input type="text" class="form-control" placeholder="Username"
										name="username" id="exampleInputEmail1"
										value="${user.username }" required />
									<div class="input-group-append">
										<div class="input-group-text">
											<i class=" glyphicon glyphicon-user"></i>
										</div>
									</div>
								</div>
								<br>

								<div class="input-group mb-3">
									<input type="password" class="form-control"
										placeholder="Password" name="password"
										id="exampleInputPassword1" value="${user.password}" required />

									<div class="input-group-append">
										<div class="input-group-text">

											<i class="glyphicon glyphicon-lock"></i>

										</div>
									</div>
								</div>
								<br>

								<div class="row">

									<!-- /.col -->
									<div class="col-4" align="center" >
										<button type="submit" class="btn btn-primary btn-block" onclick="clear()" style="width:360px">Sign
											In</button>
									</div>
									<!-- /.col -->
								</div>
							</form>


							<!-- /.social-auth-links -->


						</div>
						<!-- /.login-card-body -->
					</div>
				</div>



			</c:when>
		</c:choose>
		<!-- /.login-box -->

		<!-- jQuery -->
		<script src="static/js/jquery.min.js"></script>
		<!-- Bootstrap 4 -->
		<script src="static/js/bootstrap.bundle.min.js"></script>
		<!-- AdminLTE App -->
		<script src="static/js/adminlte.min.js"></script>
		<script src="static/js/bootstrap.min.js"></script>
		<script>
		$('#quickForm input').val('').removeAttr('checked').removeAttr('selected');
		</script>
	</div>
</body>
</html>

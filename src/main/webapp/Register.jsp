<%-- 
    Document   : Register
    Created on : Jul 31, 2023, 1:11:56 PM
    Author     : HuyHK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
        <style>
            .erorr{display: block}
        </style>
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<a href="home"><img src="https://canary.contestimg.wish.com/api/webimage/5da6e559dcf2d00d2fbc707c-normal.jpg?cache_buster=d9139cea7e503395b907432f89e292d6" alt="bootstrap 4 login page"></a>
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Đăng kí tài khoản</h4>
                                                        <form action="register" method="POST" class="my-login-validation" novalidate="">
								<div class="form-group">
									<label for="name">Tên đăng nhập</label>
									<input id="name" type="text" class="form-control" name="name" required autofocus>
									<div id="errorName" class="invalid-feedback ${containName == true ? "erorr" : ""}">
                                                                                Tên đăng nhập đã tồn tại
									</div>
								</div>

								<div class="form-group">
									<label for="password">Mật khẩu</label>
                                                                        <input id="password" type="password" class="form-control" name="password" required>
									<div class="invalid-feedback">
										Your email is invalid
									</div>
								</div>

								<div class="form-group">
									<label for="passwordA">Nhập lại mật khẩu</label>
									<input id="passwordA" type="password" class="form-control" name="passwordA" required data-eye>
                                                                        <div id="errorPass" class="invalid-feedback ${wrongAgainpass==true ? "erorr" : ""}">
										Mật khẩu nhập lại không khớp
									</div>
								</div>

								

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Đăng kí
									</button>
								</div>
								<div class="mt-4 text-center">
									Bạn đã có tài khoản? <a href="Login.jsp">Đăng nhập</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2017 &mdash; Your Company 
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="js/register.js"></script>
</body>
</html>
<%-- 
    Document   : Login
    Created on : Jul 31, 2023, 12:58:53 PM
    Author     : HuyHK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="author" content="Kodinger">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>My Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/my-login.css">
        <style>
            .isInvalid{
                display : block;
            }
        </style>
    </head>

    <body class="my-login-page">
        <section class="h-100">
            <div class="container h-100">
                <div class="row justify-content-md-center h-100">
                    <div class="card-wrapper">
                        <div class="brand">
                            <a href="home"><img src="https://canary.contestimg.wish.com/api/webimage/5f5ad3f3706bf3003d7acbd3-normal.jpg?cache_buster=10f7d3b88daf4019fa9d8be157793111" alt="logo"></a>
                        </div>
                        <div class="card fat">
                            <div class="card-body">
                                <h4 class="card-title">Đăng nhập</h4>
                                <form a action="login" method="POST" class="my-login-validation" novalidate="">
                                    <div class="form-group">
                                        <label for="name">Tên đăng nhập</label>
                                        <input id="name" type="text" class="form-control" name="name" value="" required autofocus>
                                        <div id="invalid-feedback"  class="invalid-feedback ${isInvalid==true ? "isInvalid" : ""}" >
                                            Tên đăng nhập không tồn tại hoặc sai mật khẩu
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Mật khẩu

                                        </label>
                                        <input id="password" type="password" class="form-control" name="password" required data-eye>
                                        <div class="invalid-feedback">
                                            Sai mật khẩu
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="custom-checkbox custom-control">
                                            <input type="checkbox" name="remember" id="remember" class="custom-control-input">
                                            <label for="remember" class="custom-control-label">Nhớ tên đăng nhập</label>
                                        </div>
                                    </div>

                                    <div class="form-group m-0">
                                        <button type="submit" class="btn btn-primary btn-block">
                                            Login
                                        </button>
                                    </div>
                                    <div class="mt-4 text-center">
                                        Bạn chưa có tài khoản? <a href="Register.jsp">Đăng kí</a>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
          <script>
            let nameAlert = document.querySelector("#invalid-feedback");
            let inputName= document.querySelector("#name");
            
           inputName.oninput = function(){
                if (nameAlert.classList.contains("isInvalid")) {
                    nameAlert.classList.remove("isInvalid");
                }
            };
        </script>
        <script src="js/my-login.js"></script>
      
    </body>
</html>
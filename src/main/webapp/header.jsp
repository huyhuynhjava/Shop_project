<%-- 
    Document   : header
    Created on : Jul 31, 2023, 11:17:30 AM
    Author     : HuyHK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shoes Shop</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>





<style>
body {
    color: #404E67;
    background: #F5F7FA;
    font-family: 'Open Sans', sans-serif;
}
.table-wrapper {
    width: 1000px;
    margin: 30px auto;
    background: #fff;
    padding: 20px;	
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 10px;
    margin: 0 0 10px;
}
.table-title h2 {
    margin: 6px 0 0;
    font-size: 22px;
}
.table-title .add-new {
    float: right;
    height: 30px;
    font-weight: bold;
    font-size: 12px;
    text-shadow: none;
    min-width: 100px;
    border-radius: 50px;
    line-height: 13px;
}
.table-title .add-new i {
    margin-right: 4px;
}
table.table {
    table-layout: fixed;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;

}
table.table tr td:first-child {
    width: 30px;
}

table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}
table.table th:last-child {
    width: 100px;
}
table.table td a {
    cursor: pointer;
    display: inline-block;
    margin: 0 5px;
    min-width: 24px;
}    
table.table td a.add {
    color: #27C46B;
}
table.table td a.edit {
    color: #FFC107;
}
table.table td a.delete {
    color: #E34724;
}
table.table td i {
    font-size: 19px;
}



table.table td a.add i {
    font-size: 24px;
    margin-right: -1px;
    position: relative;
    top: 3px;
}    
table.table .form-control {
    height: 32px;
    line-height: 32px;
    box-shadow: none;
    border-radius: 2px;
}
table.table .form-control.error {
    border-color: #f50000;
}
table.table td .add {
    display: none;
}
</style>


        <style>
            .navbar{
                position: fixed;
                right:0;
                left: 0;
                z-index: 10;
            }
            .d-flex-Login{
                margin: 0;
            }
            .text-name{
                text-decoration: none;
            }
            .text-name:hover{
                opacity: 0.5;
            }
            .search-block{
                margin-right: 40px
            }
            .btn{
                max-height: 40px;
                font-size: 10px
               
            }
            @media (min-width: 1200px){
                .d-flex-Login{
                    margin-left: 15px;
                }

            }

        </style>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="home">Shoes</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="home">Tất cả</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                    <c:forEach items="${listC}" var="o">
                                    <li><a class="dropdown-item ${tag == o.cid ? "active" : ""}" href="category?cid=${o.cid}">${o.cname}</a></li>
                                    </c:forEach>

                            </ul>
                        </li>
                    </ul>
                    <form action="search" class="d-flex search-block" role="search" method="post">
                        <input value="${valueS}" name="searchtxt" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                        <form action="viewcart"  class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">${size}</span>
                        </button>
                    </form>


                    <c:if test="${sessionScope.acc==null}">

                        <form action="Login.jsp" class="d-flex-Login">
                            <button class="btn btn-outline-dark" type="submit">
                                <i class="bi bi-person-fill"></i>
                                Login/Register
                            </button>
                        </form>
                    </c:if>
                  

                    <c:if test="${sessionScope.acc!=null}">

                        <c:if test="${sessionScope.acc.isSell==1}">

                            <form action="productManager"   class="d-flex-Login">
                                <button class="btn btn-outline-dark" type="submit">
                                    <i class="bi bi-gear-wide"></i>
                                    Product Manager
                                </button>
                            </form>
                        </c:if>
                    </c:if>

                    <c:if test="${sessionScope.acc!=null}">
                        <c:if test="${sessionScope.acc.isAdmin==1}">

                            <form action="accountmanager"   class="d-flex-Login">
                                <button class="btn btn-outline-dark" type="submit">
                                    <i class="bi bi-gear-wide"></i>
                                    Account manager
                                </button>
                            </form>
                        </c:if>
                    </c:if>


                    <c:if test="${sessionScope.acc!=null}">

                        <form action="logout"   class="d-flex-Login">
                            <button class="btn btn-outline-dark" type="submit">
                                <i class="bi bi-box-arrow-in-left"></i>
                                Logout
                            </button>
                        </form>
                    </c:if>





                </div>
            </div>
        </nav>
<%-- 
    Document   : Cart
    Created on : Aug 2, 2023, 11:43:35 AM
    Author     : HuyHK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/cart.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="card">
            <div class="row">
                <div class="col-md-8 cart">
                    <div class="title">
                        <div class="row">
                            <div class="col"><h4><b>Shopping Cart</b></h4></div>
                            <div class="col align-self-center text-right text-muted"></div>
                        </div>
                    </div>    


             
                    <c:forEach items="${cart}" var="o">
                         <div class="row">
                            <div class="row main align-items-center">
                                <span>Kho ${o.getProduct().getQuantity()}</span>
                                <div class="col-2"><img class="img-fluid" src="${o.getProduct().getImage()}"></div>
                                <div class="col">
                                    <div class="row text-muted">${o.getProduct().getName()}</div>
                                    <div class="row"></div>
                                </div>
                                <div class="col">
                                    <a href="subtract?id=${o.getProduct().getId()}">-</a><a href="" class="border">${o.getQuantity()}</a><a href="addincart?id=${o.getProduct().getId()}">+</a>
                                </div>
                                <div class="col">${o.getPrice()*o.getQuantity()}<a href="returnproduct?id=${o.getProduct().getId()}"><span class="close">&#10005;</span></a></div>
                            </div>
                        </div>
                    </c:forEach>



                        <div class="back-to-shop"><a href="home">&leftarrow;</a><span class="text-muted">Back to shop</span></div>
                </div>
                <div class="col-md-4 summary">
                    <div><h5><b>Summary</b></h5></div>
                    <hr>
                    <div class="row">
                        <div class="col" style="padding-left:0;">ITEMS ${size} </div>
                        <div class="col text-right">${total}</div>
                    </div>
                    <form>

                        <p>GIVE CODE</p>
                        <input id="code" placeholder="Enter your code">
                    </form>
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">TOTAL PRICE</div>
                        <div class="col text-right">${total}</div>
                    </div>
                    <a href="checkout"><button class="btn">CHECKOUT</button></a>
                </div>
            </div>

        </div>
    </body>
</html>

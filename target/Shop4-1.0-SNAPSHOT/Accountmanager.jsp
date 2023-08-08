<%-- 
    Document   : productmanager
    Created on : Jul 31, 2023, 9:46:36 PM
    Author     : HuyHK
--%>

<%@include file="header.jsp" %>>
<body>
<div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Account <b>Details</b></h2></div>
                    <div class="col-sm-4">
                    </div>
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Seller</th>
                        <th>Admin</th>
                        <th>Remove Account</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listA}" var="o">
                        <tr>
                        <td>${o.user}</td>
                        <td>${o.isSell}</td>
                        <td>${o.isAdmin}</td>
                        <td>
                            
                
                            <a href="delete?id=${o.id}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>

                    </c:forEach>                   
                </tbody>
            </table>
        </div>
    </div>
</div>   
    <script src="js/accountManager.js"></script>
</body>
</html>
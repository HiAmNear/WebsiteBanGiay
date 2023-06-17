<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-dark" style="position: fixed; top: 0; width:100%;  z-index: 100000;">
    <div class="container">
        <a class="navbar-brand" href="home">Shoes Family</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
            <li class="nav-item">
                        <a class="nav-link" href="home" style="font-size: 20px;">Home</a>
                    </li> 
            <li class="nav-item">
                        <a class="nav-link" href="shop" style="font-size: 20px;">Shop</a>
                    </li>
            <li class="nav-item">
                        <a class="nav-link" href="home#aboutus" style="font-size: 20px;">About Shop</a>
                    </li>                      
                
               <%--  <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manager Product</a>
                    </li>
                </c:if> --%>


                <%--<c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="forgotPassword">Forgot Password</a>
                    </li>
                </c:if>---%>

               <%--  <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="statistic">Statistic</a>
                    </li>
                </c:if> --%>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                
                <a class="btn btn-success btn-sm ml-3" href="managerCart">
                    <i class="fa fa-shopping-cart"></i> <span style="font-size: 14px;"></span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>
                  
                </a>
            </form>
            <c:if test="${sessionScope.acc == null}">
					<span style="font-size: 20px;"><a class="nav-link" href="login">Login</a></span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>
             </c:if>
             
             <c:if test="${sessionScope.acc != null}">
					<span style="font-size: 20px;"><a class="nav-link" href="#" style="font-size: 15px;">Hello ${sessionScope.acc.user}</a></span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>
                        
					<span style="font-size: 20px;"><a class="nav-link" href="logout" style="font-size: 15px;">Logout</a></span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>
                        

             </c:if>
             <c:if test="${sessionScope.acc != null}">
					<span style="font-size: 20px;"><a class="nav-link" href="EditProfile.jsp" style="font-size: 15px;">Edit Profile</a></span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>

             </c:if>
        </div>
    </div>
</nav>



<!--end of menu-->

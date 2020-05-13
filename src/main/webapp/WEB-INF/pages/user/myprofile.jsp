<%-- 
    Document   : my_profile
    Created on : May 13, 2020, 11:36:39 PM
    Author     : Lazar Popadic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My profile</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/4.4.1/css/bootstrap.min.css">
    </head>
    <body>
    <center>
        <%@include file="../template/header.jsp" %>
        <%@include file="../template/menu.jsp" %>
        <br>
        <h2>My Profile</h2>
        <br><br>
        <div class="container" >
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Firstname : </th>
                        <th>${sessionScope.loginUser.firstname}</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Lastname : </td>
                        <td>${sessionScope.loginUser.lastname}</td>
                    </tr>
                    <tr>
                        <td>Email : </td>
                        <td>${sessionScope.loginUser.email}</td>
                    </tr>

                </tbody>
            </table>
        </div>
    </form>
    <script type="text/javascript" src="${pageContext.request.contextPath}/webjars/jquery/3.0.0/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</center>
</body>
</html>

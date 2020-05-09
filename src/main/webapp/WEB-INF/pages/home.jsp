<%-- 
    Document   : home
    Created on : Apr 21, 2020, 10:34:30 PM
    Author     : Lazar Popadic
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/4.4.1/css/bootstrap.min.css">
        
    </head>
    <body>
    <center>
        <%@include file="template/header.jsp" %>
        <%@include file="template/menu.jsp" %>
        <%@include file="template/footer.jsp" %>
    </center>
    <script type="text/javascript" src="${pageContext.request.contextPath}/webjars/jquery/3.0.0/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>

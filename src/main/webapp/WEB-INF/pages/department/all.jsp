<%-- 
    Document   : all
    Created on : Apr 21, 2020, 10:36:58 PM
    Author     : Lazar Popadic
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <center>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Departments: all</title>
    </head>
    <body>
        <%@include file="../template/header.jsp" %>
        <%@include file="../template/menu.jsp" %>
        <h1>All departments</h1>
        <br><br>
        <p style="color:red">${messageDeleteX}</p>
        <p style="color:green">${messageDeleted}</p>
        <p style="color:green">${messageUpdated}</p>
        <div class="container">
        <table class="table table-dark">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Shortname</th>
                    <th>Name</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="department" items="${applicationScope.departments}">
                    <tr>
                        <td>${department.id}</td>
                        <td>${department.shortname}</td>
                        <td>${department.name}</td>
                        <td>
                            <a href="/fisweb/app/department/edit/${department.id}">Edit</a>
                        </td>
                        <td>
                             <a href="/fisweb/app/department/delete/${department.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>

            </tbody>
        </table></div>


        <%@include file="../template/footer.jsp" %>
    </body>
    </center>
</html>

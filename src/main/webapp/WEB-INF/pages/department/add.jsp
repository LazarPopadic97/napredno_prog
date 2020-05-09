<%-- 
    Document   : add
    Created on : Apr 21, 2020, 10:36:51 PM
    Author     : Lazar Popadic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <center>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Department: add</title>
        </head>
        <body>
            <%@include file="../template/header.jsp" %>
            <%@include file="../template/menu.jsp" %>

            <h1>Add department</h1>
            <form action="/fisweb/app/department/save" method="POST">
                <br>
                ${message}
                <p style="color:red">${messageSaveX}</p>
                <p style="color:green">${messageSaved}</p>
                <br>
                <table>
                    <tbody>
                        <tr>

                        <tr>
                            <td>Shortname:</td>
                            <td><input type="text" name="shortname" value="" /></td>
                        </tr>
                        <tr>
                            <td>Name:</td>
                            <td><input type="text" name="name" value="" /></td>
                        </tr>
                        
                        <tr>
                            <td><center><input class="btn btn-dark" type="submit" value="Save"/></center></td>
                            <td></td>
                        </tr>

                    </tbody>
                </table>

            </form>

            <%@include file="../template/footer.jsp" %>
    </center>
</body>
</html>

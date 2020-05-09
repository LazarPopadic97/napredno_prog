<%-- 
    Document   : edit
    Created on : Apr 22, 2020, 1:42:42 PM
    Author     : Lazar Popadic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">-->
        <!--<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>-->
        <!--<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>-->
        <title>Department: Edit</title>
        <style>
            .inputBoxSizing{
                box-sizing: content-box ;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <center>
                <%@include file="../template/header.jsp" %>
                <%@include file="../template/menu.jsp" %>
            </center>
            <div class="well">
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="home">
                        <h4 class="offset-md-4">Edit department:</h4>

                        <form action="/fisweb/app/department/update/${id}" method="POST">    
                            <h6 class="offset-md-4">${message}</h6>
                            <p style="color:red">${messageFill}</p>
                            <div class="form-group">
                                <div class="input-group">
                                    <label class="col-md-4 col-form-label text-md-right">ID:</label>
                                    <input type="text" name="shortname" value="${id}"disabled="true" class="inputBoxSizing input-xlarge">     
                                </div>
                                <div class="input-group">
                                    <label class="col-md-4 col-form-label text-md-right">Short name:</label>
                                    <input type="text" name="shortname" value="${shortname}" class="inputBoxSizing input-xlarge" placeholder="Short name">     
                                </div>
                                <div class="input-group">
                                    <label class="col-md-4 col-form-label text-md-right">Name:</label>
                                    <input type="text" name="name" value="${name}" class="inputBoxSizing input-xlarge" placeholder="Name"> 
                                </div>
                                <input type="submit" value="Update" class="btn btn-primary offset-md-4">
                            </div>
                        </form>
                    </div>
                </div>
            </div>


            <%@include file="../template/footer.jsp" %>
        </div>
    </body>
</html>

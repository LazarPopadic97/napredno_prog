<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="styles.css">


    <title>Login Page</title>
    <body>

        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <center>
                            <fmt:setLocale value ="${param.Locale}"/>
                            <fmt:bundle basename="i18n/config">
                            </center>
                            <center><h3><fmt:message key="label.login"></fmt:message></h3></center>
                                Choose language : <a href="?Locale=en_US">english</a>|<a href="?Locale=sr_RS">serbian(latin)</a>
                            </div>
                            <br>
                            <center>
                                <p style="color:red"> ${message}</p>
                            <p style="color:green">${logoutMessage}</p>
                        </center>
                        <form action="/fisweb/app/login" method="post">
                            <div class="card-body">
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="email" id ="email" placeholder= <fmt:message key="label.email"></fmt:message>>
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                                        </div>
                                        <input type="password" class="form-control" name = "password" id ="password" placeholder= <fmt:message key="label.password"></fmt:message>>
                                    </div>
                                    <center>    
                                        <div class="form-group">
                                            <input  class="btn btn-dark" type="submit" value=<fmt:message key="button.login"></fmt:message> id="Login">
                                        </div></center>
                                </div>
                            </form>
                    </fmt:bundle>

                </div>
            </div>
        </div>

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>


</html>
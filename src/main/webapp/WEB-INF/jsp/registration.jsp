<!doctype html>
<html lang="en">

<head>

    <title>Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Reference Bootstrap files -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

    <script    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

<div>

    <div id="loginbox" style="margin-top: 50px;"
         class="mainbox col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2">

        <div class="panel panel-info">

            <div class="panel-heading">
                <div class="panel-title">Register Yourself</div>
            </div>

            <div style="padding-top: 30px" class="panel-body">

                <!-- Login Form -->
                <form:form method="POST"  modelAttribute="userForm"  class="form-horizontal">



                    <!-- User name -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>

                        <spring:bind path="username">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <form:input type="text" path="username" class="form-control" placeholder="Username"
                                            autofocus="true"></form:input>
                                <form:errors path="username"></form:errors>
                            </div>
                        </spring:bind>

                    </div>

                    <!-- Password -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>

                        <spring:bind path="password">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                                <form:errors path="password"></form:errors>
                            </div>
                        </spring:bind>

                    </div>
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>

                        <spring:bind path="passwordConfirm">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <form:input type="password" path="passwordConfirm" class="form-control"
                                            placeholder="Confirm your password"></form:input>
                                <form:errors path="passwordConfirm"></form:errors>
                            </div>
                        </spring:bind>


                    </div>

                    <!-- Login/Submit Button -->
                    <div style="margin-top: 10px" class="form-group">
                        <div class="col-sm-6 controls">
                            <button type="submit" class="btn btn-success">Register</button>
                        </div>
                    </div>

                </form:form>

            </div>

        </div>

    </div>

</div>

</body>
</html>
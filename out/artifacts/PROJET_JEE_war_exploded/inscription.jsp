<%--
  Created by IntelliJ IDEA.
  User: Marie-Danielle
  Date: 10/11/2019
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!Doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inscription</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="signup.css">
</head>
<body>
<div class="container">
    <!---heading---->
    <header class="heading"> Inscription</header><hr></hr>
    <!---Form starting---->
    <div class="row ">
        <!--- For Name---->
        <div class="col-sm-12">
            <div class="row">
                <div class="col-xs-4">
                    <label class="firstname">First Name :</label> </div>
                <div class="col-xs-8">
                    <input type="text" name="fname" id="fname" placeholder="Enter your First Name" class="form-control ">
                </div>
            </div>
        </div>


        <div class="col-sm-12">
            <div class="row">
                <div class="col-xs-4">
                    <label class="lastname">Last Name :</label></div>
                <div class ="col-xs-8">
                    <input type="text" name="lname" id="lname" placeholder="Enter your Last Name" class="form-control last">
                </div>
            </div>
        </div>
        <!-----For email---->
        <div class="col-sm-12">
            <div class="row">
                <div class="col-xs-4">
                    <label class="mail" >Email :</label></div>
                <div class="col-xs-8"	>
                    <input type="email" name="email"  id="email"placeholder="Enter your email" class="form-control" >
                </div>
            </div>
        </div>
        <!-----For Password and confirm password---->
        <div class="col-sm-12">
            <div class="row">
                <div class="col-xs-4">
                    <label class="pass">Password :</label></div>
                <div class="col-xs-8">
                    <input type="password" name="password" id="password" placeholder="Enter your Password" class="form-control">
                </div>
            </div>
        </div>


            <div class="col-sm-12">
                <div class="btn btn-warning">Submit</div>
            </div>
        </div>
    </div>


</div>

</body>
</html>

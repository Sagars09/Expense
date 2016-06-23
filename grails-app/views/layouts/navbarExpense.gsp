<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 23/6/16
  Time: 12:30 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet href="font-awesome/css/font-awesome.min.css"/>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:stylesheet href="bootstrapcdn.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrapcdn.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <g:layoutHead/>
    <style>
    .box {
        border: 2px solid #000000;
        border-radius: 6px;
        padding: 0 15px;
        overflow: scroll;
        height: 490px;
    }
    .subBtn {
        padding-top: 10px;
    }
    .footer-at {
        padding: 5px;
        margin-top: 41px;
    }
    </style>
</head>

<body>
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <g:link controller="register" action="index" class="navbar-brand">Expense</g:link>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbarLinks">
                <span class="sr-only">Toggle-Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>

            </button>
        </div>
        <div class="collapse navbar-collapse" id="navbarLinks">
            <ul class="nav navbar-nav navbar-right">
                <g:if test="${session.newUser}">
                    <li><g:link controller="profile" action="index">Profile</g:link> </li>
                    <li><g:link controller="profile" action="edit">Edit</g:link> </li>
                    <li><g:link controller="signOut" action="index">Sign Out</g:link> </li>
                </g:if>
                <g:else>
                    <li><g:link controller="register" action="index">Register</g:link></li>
                    <li><g:link controller="login" action="index">Login</g:link> </li>
                </g:else>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-9 col-md-offset-1">
            <div class="box">
                <div class="page-header">
                    <g:pageProperty name="page.heading"/>
                </div>
                <div>
                    <g:pageProperty name="page.mainContent"/>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="bg-danger footer-at text-center">
    Website Created By: Sagar Jain.<br>
    Mail Me <i class="fa fa-at"></i> : jain.jains.sagar@gmail.com
</footer>
</body>
</html>
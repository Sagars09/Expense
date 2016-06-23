<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 23/6/16
  Time: 1:32 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbarExpense">
</head>

<body>
    <content tag="heading">
        <h2>Login</h2>
    </content>
    <content tag="mainContent">
        <g:if test="${flash.message}">
            <div class="alert alert-info">
                <p>
                    ${flash.message}
                </p>
            </div>
        </g:if>

        <g:form controller="login" action="check" name="loginForm" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <g:textField name="email" placeholder="Enter your Email" class="form-control"></g:textField>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <g:passwordField name="password" placeholder="Enter your Password" class="form-control"></g:passwordField>
            </div>
            <div class="subBtn">
                <g:submitButton name="loginButton" value="Submit" class="btn btn-primary btn-block"></g:submitButton>
            </div>
        </g:form>
    </content>
</body>
</html>
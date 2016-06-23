<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 23/6/16
  Time: 12:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbarExpense">
</head>

<body>
    <content tag="heading">
        <h2>Register</h2>
    </content>
    <content tag="mainContent">
        <g:form controller="register" action="save" name="regForm" method="post">
            <div class="form-group ${hasErrors(bean: errUser, field: 'firstName', 'has-error')}">
                <label for="firstName">First Name:</label>
                <g:textField name="firstName" class="form-control" placeholder="Enter your First Name"
                             value="${errUser.firstName}"></g:textField>
                <g:renderErrors bean="${errUser}" field="firstName"/>
            </div>
            <div class="form-group ${hasErrors(bean: errUser, field: 'lastName', 'has-error')}">
                <label for="lastName">Last Name:</label>
                <g:textField name="lastName" class="form-control" placeholder="Enter your Last Name"
                             value="${errUser.lastName}"></g:textField>
                <g:renderErrors bean="${errUser}" field="lastName"/>
            </div>
            <div class="form-group ${hasErrors(bean: errUser, field: 'email', 'has-error')}">
                <label for="email">Email:</label>
                <g:textField name="email" class="form-control" placeholder="Enter your Email"
                             value="${errUser.email}"></g:textField>
                <g:renderErrors bean="${errUser}" field="email"/>
            </div>
            <div class="form-group ${hasErrors(bean: errUser, field: 'password', 'has-error')}">
                <label for="password">First Name:</label>
                <g:passwordField name="password" class="form-control" placeholder="Enter your Password" value="${errUser.password}"
                ></g:passwordField>
                <g:renderErrors bean="${errUser}" field="password"/>
            </div>
            <div class="subBtn">
                <g:submitButton name="submitReg" class="btn btn-primary btn-block" value="Submit"></g:submitButton>
            </div>
        </g:form>
    </content>
</body>
</html>
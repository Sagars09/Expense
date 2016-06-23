<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 23/6/16
  Time: 2:11 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbarExpense">
</head>

<body>
    <content tag="heading">
        <h3>Edit</h3>
    </content>

    <content tag="mainContent">
        <g:form controller="profile" action="update" name="editForm" method="post">
            <g:each in="${signedUser}" var="users">
                <input type="hidden" name="id" id="id" value="${users.id}">
                <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <g:textField name="firstName" placeholder="Enter your First Name here" class="form-control"
                                 value="${users.firstName}"
                    ></g:textField>
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <g:textField name="lastName" placeholder="Enter your Last Name here" class="form-control"
                                 value="${users.lastName}"
                    ></g:textField>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <g:textField name="email" placeholder="Enter your email here" class="form-control"
                                 value="${users.email}"></g:textField>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <g:textField name="password" placeholder="Enter your password here" class="form-control"
                                 value="${users.password}"></g:textField>
                </div>
                <div>
                    <g:submitButton name="submit" value="Submit" class="btn btn-block btn-primary"></g:submitButton>
                </div>
            </g:each>
        </g:form>
    </content>
</body>
</html>